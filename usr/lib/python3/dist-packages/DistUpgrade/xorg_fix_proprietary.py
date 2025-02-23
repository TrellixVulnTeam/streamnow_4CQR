#!/usr/bin/python
#
# this script will exaimne /etc/xorg/xorg.conf and 
# transition from broken proprietary drivers to the free ones
#

from __future__ import print_function

import sys
import os
import logging
import time
import shutil
import subprocess
import apt_pkg
apt_pkg.init()

# main xorg.conf
XORG_CONF="/etc/X11/xorg.conf"

# really old and most likely obsolete conf
OBSOLETE_XORG_CONF="/etc/X11/XF86Config-4"

def remove_input_devices(xorg_source=XORG_CONF, xorg_destination=XORG_CONF):
    logging.debug("remove_input_devices")
    content=[]
    in_input_devices = False
    with open(xorg_source) as xorg_source_file:
        for raw in xorg_source_file:
            line = raw.strip()
            if (line.lower().startswith("section") and 
                line.lower().split("#")[0].strip().endswith('"inputdevice"')):
                logging.debug("found 'InputDevice' section")
                content.append("# commented out by ubuntu-release-upgrader, HAL is now used and auto-detects devices\n")
                content.append("# Keyboard settings are now read from /etc/default/console-setup\n")
                content.append("#"+raw)
                in_input_devices=True
            elif line.lower().startswith("endsection") and in_input_devices:
                content.append("#"+raw)
                in_input_devices=False
            elif line.lower().startswith("inputdevice"):
                logging.debug("commenting out '%s' " % line)
                content.append("# commented out by ubuntu-release-upgrader, HAL is now used and auto-detects devices\n")
                content.append("# Keyboard settings are now read from /etc/default/console-setup\n")
                content.append("#"+raw)
            elif in_input_devices:
                logging.debug("commenting out '%s' " % line)
                content.append("#"+raw)
            else:
                content.append(raw)
    with open(xorg_destination+".new", "w") as xorg_destination_file:
        xorg_destination_file.write("".join(content))
    os.rename(xorg_destination+".new", xorg_destination)
    return True

def replace_driver_from_xorg(old_driver, new_driver, xorg=XORG_CONF):
    """
    this removes old_driver driver from the xorg.conf and subsitutes
    it with the new_driver
    """
    if not os.path.exists(xorg):
        logging.warning("file %s not found" % xorg)
        return
    content=[]
    with open(xorg) as xorg_file:
        for line in xorg_file:
            # remove comments
            s=line.split("#")[0].strip()
            # check for fglrx driver entry
            if (s.lower().startswith("driver") and
                s.endswith('"%s"' % old_driver)):
                logging.debug("line '%s' found" % line)
                line='\tDriver\t"%s"\n' % new_driver
                logging.debug("replacing with '%s'" % line)
            content.append(line)
    # write out the new version
    with open(xorg) as xorg_file:
        if xorg_file.readlines() != content:
            logging.info("saving new %s (%s -> %s)" % (xorg, old_driver, new_driver))
            with open(xorg+".xorg_fix", "w") as xorg_fix_file:
                xorg_fix_file.write("".join(content))
            os.rename(xorg+".xorg_fix", xorg)

def comment_out_driver_from_xorg(old_driver, xorg=XORG_CONF):
    """
    this comments out a driver from xorg.conf
    """
    if not os.path.exists(xorg):
        logging.warning("file %s not found" % xorg)
        return
    content=[]
    with open(xorg) as xorg_file:
        for line in xorg_file:
            # remove comments
            s=line.split("#")[0].strip()
            # check for old_driver driver entry
            if (s.lower().startswith("driver") and
                s.endswith('"%s"' % old_driver)):
                logging.debug("line '%s' found" % line)
                line='#%s' % line
                logging.debug("replacing with '%s'" % line)
            content.append(line)
    # write out the new version
    with open(xorg) as xorg_file:
        if xorg_file.readlines() != content:
            logging.info("saveing new %s (commenting %s)" % (xorg, old_driver))
            with open(xorg+".xorg_fix", "w") as xorg_fix_file:
                xorg_fix_file.write("".join(content))
            os.rename(xorg+".xorg_fix", xorg)

def is_multiseat(xorg_source=XORG_CONF):
    " check if we have a multiseat xorg config "
    def is_serverlayout_line(line):
        return (not line.strip().startswith("#") and
                line.strip().lower().endswith('"serverlayout"'))
    with open(xorg_source) as xorg_file:
        msl = len([line for line in xorg_file if is_serverlayout_line(line)])
    logging.debug("is_multiseat: lines %i", msl)
    return msl > 1

if __name__ == "__main__":
    if not os.getuid() == 0:
        print("Need to run as root")
        sys.exit(1)

    # we pretend to be do-release-upgrade so that apport picks up when we crash
    sys.argv[0] = "/usr/bin/do-release-upgrade"

    # setup logging
    logging.basicConfig(level=logging.DEBUG,
                        filename="/var/log/dist-upgrade/xorg_fixup.log",
                        filemode='w')
    
    logging.info("%s running" % sys.argv[0])

    if os.path.exists(OBSOLETE_XORG_CONF):
        old = OBSOLETE_XORG_CONF
        new =  OBSOLETE_XORG_CONF+".obsolete"
        logging.info("renaming obsolete %s -> %s" % (old, new))
        os.rename(old, new)

    if not os.path.exists(XORG_CONF):
        logging.info("No xorg.conf, exiting")
        sys.exit(0)
        
    # remove empty xorg.conf to help xorg and its auto probing logic
    # (LP: #439551)
    if os.path.getsize(XORG_CONF) == 0:
        logging.info("xorg.conf is zero size, removing")
        os.remove(XORG_CONF)
        sys.exit(0)

    #make a backup of the xorg.conf
    backup = XORG_CONF + ".dist-upgrade-" + time.strftime("%Y%m%d%H%M")
    logging.debug("creating backup '%s'" % backup)
    shutil.copy(XORG_CONF, backup)

    if not os.path.exists("/usr/lib/xorg/modules/drivers/fglrx_drv.so"):
        with open(XORG_CONF) as xorg_conf_file:
            if "fglrx" in xorg_conf_file.read():
                logging.info("Removing fglrx from %s" % XORG_CONF)
                comment_out_driver_from_xorg("fglrx")

    if not os.path.exists("/usr/lib/xorg/modules/drivers/nvidia_drv.so"):
        with open(XORG_CONF) as xorg_conf_file:
            if "nvidia" in xorg_conf_file.read():
                logging.info("Removing nvidia from %s" % XORG_CONF)
                comment_out_driver_from_xorg("nvidia")

    # now run the removeInputDevices() if we have a new xserver
    ver=subprocess.Popen(["dpkg-query","-W","-f=${Version}","xserver-xorg-core"],
                         stdout=subprocess.PIPE,
                         universal_newlines=True).communicate()[0]
    logging.info("xserver-xorg-core version is '%s'" % ver)
    if ver and apt_pkg.version_compare(ver, "2:1.5.0") > 0:
        if not is_multiseat():
            remove_input_devices()
        else:
            logging.info("multiseat setup, ignoring")
