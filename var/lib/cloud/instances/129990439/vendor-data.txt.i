From nobody Sat Mar 30 19:44:34 2019
Content-Type: multipart/mixed; boundary="===============1806499388242261783=="
MIME-Version: 1.0
Number-Attachments: 3

--===============1806499388242261783==
MIME-Version: 1.0
Content-Type: text/cloud-config; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="cloud-config"

#cloud-config

# Enable root and password auth
disable_root: false
ssh_pwauth: false

# Allow cloud-init to manage /etc/hosts
manage_etc_hosts: true

# Set the default user to root and define the package mirrors
system_info:
   distro: ubuntu
   default_user:
      name: root
      shell: /bin/bash
      lock_passwd: false
   package_mirrors:
     - arches: [i386, amd64]
       failsafe:
         primary: http://archive.ubuntu.com/ubuntu
         security: http://security.ubuntu.com/ubuntu
       search:
         primary:
           - http://mirrors.digitalocean.com/ubuntu/
         security: []


--===============1806499388242261783==
MIME-Version: 1.0
Content-Type: text/cloud-boothook; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="entropy-seed"

#!/bin/sh -x
# DigitalOcean Entropy Seed script
logger -t DigitalOcean 'adding random seed to /dev/urandom'
(base64 -d <<EOE
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

EOE
) > /dev/urandom 


--===============1806499388242261783==
MIME-Version: 1.0
Content-Type: text/cloud-boothook; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="digitalocean_fixups"

#!/bin/sh

# Disable the locale warning: by default imported cloud-images check the default
# local and give a warning about invalid locales. The following line disable
# the warning.

# do not assume that /etc/skel exists
if [ -d /etc/skel ]; then
    touch /etc/skel/.cloud-locale-test.skip
fi
touch /root/.cloud-locale-test.skip

# Disable Ubuntu MOTD
if [ -f /etc/default/motd-news ]; then
    sed -e "s/ENABLED=1/ENABLED=0/g" \
        -i /etc/default/motd-news
fi

# Fix buggy cloud-init routes for IPv6
r6c="/etc/sysconfig/network-scripts/route6-eth0"
if [ -f "${r6c}" ]; then
    sed -e "s|::/::|default|g" -i "${r6c}"
    awk '/default via/{system("ip -6 route add default via "$NF" dev eth0")}' "${r6c}"
elif [ -d "/etc/sysconfig/network-scripts" -a -f "/etc/network/interfaces" ]; then
    # This deals with a bug in Fedora 27 where the network interface is not set
    # properly by Cloud-init.
    i6gw=$(egrep -A3 'iface eth0:1 inet6 static' /etc/network/interfaces | awk '/gateway/{print$NF}')
    if [ -n "${i6gw}" ]; then
        ip -6 route add default via ${i6gw} dev eth0
        cat > ${r6c} <<EOM
# DigitalOcean: written by ConfigDrive customization.
default via ${i6gw}
EOM
    fi
fi

# Fix screwy file permmissions on the system resolvers.
chmod 0644 /etc/resolv.conf

# Support automatic disk resizing per boot.
# Only update /etc/hosts once per instance.
mkdir -p /etc/cloud/cloud.cfg.d
cat > /etc/cloud/cloud.cfg.d/90-digitalocean.cfg <<EOM
####
# DigitalOcean: this file was written via cloud-init and composed from /etc/cloud/cloud.cfg
#               In order to support resize events, 'growpart' and 'resizefs' are run each boot.
#               'update_etc_hosts' will be run only once per instance. To see the differences, run
#               'diff -u /etc/cloud/cloud.cfg /etc/cloud/cloud.cfg.d/90-digitalocean.cfg'.
#
#               This file was written to support Droplet $(</sys/devices/virtual/dmi/id/product_serial) on $(date +%Y-%m-%d)
####

EOM
sed -e "s/- growpart$/- [ growpart, always ]/g" \
    -e "s/- resizefs$/- [ resizefs, always ]/g" \
    -e "s/- update_etc_hosts$/- [ update_etc_hosts, once-per-instance ]/g" \
    /etc/cloud/cloud.cfg >> /etc/cloud/cloud.cfg.d/90-digitalocean.cfg

# Fix for machine-id's being dubiously present
cat > /var/lib/cloud/scripts/per-instance/machine_id.sh <<EOM
#!/bin/bash
CT=\$(date +%s);
FT=\$(stat /etc/machine-id -c %Y);
DIFF=\$(expr \$CT - \$FT)
# record timestamp on machine-id for testing
# If /etc/machine_id is over 10m old on first-boot, delete it
if [ -f /etc/machine-id ]; then
    if [ \$DIFF -lt 600 ]; then
        exit 0
    fi
rm -rf /etc/machine-id
fi

# systemd will use dbus uudigen if its there
# we need to reset this for Debain 9.
if which dbus-uuidgen &> /dev/null; then
    rm -rf /var/lib/dbus/machine-id
    dbus-uuidgen --ensure=/var/lib/dbus/machine-id
fi

if which systemd-machine-id-setup &> /dev/null; then
    rm -rf /etc/machine-id
    systemd-machine-id-setup
fi
EOM
chmod 0700 /var/lib/cloud/scripts/per-instance/machine_id.sh

# DigitalOcean updated the vendor-data to better support various distributions.
# This script makes it so older snapshots will work by restoring the default behavior
# of cloud-init.
if [ -e /etc/cloud/cloud.cfg.disabled ]; then
    mv /etc/cloud/cloud.cfg /etc/cloud/cloud.cfg.d/99-digitalocean.cfg
    mv /etc/cloud/cloud.cfg.disabled /etc/cloud/cloud.cfg
    logger -t DigitalOcean "restored default cloud-init behavior by renaming /etc/cloud/cloud.cfg.disabled to /etc/cloud/cloud.cfg"
fi

if [ -d /etc/udev/rules.d ]; then
    # Add udev rules to automount block storage volumes.
    cat > /etc/udev/rules.d/99-digitalocean-automount.rules <<EOM
# Only try to automount DO block volumes.
SUBSYSTEM!="block", GOTO="do_automount_end"
ENV{ID_VENDOR}!="DO", GOTO="do_automount_end"
ENV{ID_MODEL}!="Volume", GOTO="do_automount_end"
# Only automount on the "add" action.
ACTION!="add", GOTO="do_automount_end"
# Only try to automount filesystems we know about.
ENV{ID_FS_TYPE}!="ext4|xfs", GOTO="do_automount_end"

# Create a temporary mountpoint and temporary location for the first-mount script.
IMPORT{program}="/bin/sh -c 'echo TMP_MOUNT_DIR=\$(mktemp -d -p /mnt .do-first-mount-XXXXXXXXX)'"
IMPORT{program}="/bin/sh -c 'echo TMP_SCRIPT=\$(mktemp -t .do-first-mount-XXXXXXXXX.sh)'"

# Mount the volume at the temp mountpoint and copy the script off, then unmount.
RUN{program}+="/bin/mount -o ro /dev/%k %E{TMP_MOUNT_DIR}"
RUN{program}+="/bin/sh -c '/bin/cp %E{TMP_MOUNT_DIR}/.first-mount.sh %E{TMP_SCRIPT} || exit 0'"
RUN{program}+="/bin/umount %E{TMP_MOUNT_DIR}"
RUN{program}+="/bin/rmdir %E{TMP_MOUNT_DIR}"

# Run the first-mount script. If it didn't exist this will be a no-op.
RUN{program}+="/bin/sh %E{TMP_SCRIPT} '%E{ID_SERIAL}' '%E{ID_FS_TYPE}' '%E{ID_SERIAL_SHORT}' '%E{ID_FS_UUID}' '%E{ID_FS_LABEL}'"

# Clean up.
RUN{program}+="/bin/rm %E{TMP_SCRIPT}"

# Finally, try and mount the volume. On first mount this will fail, but that's
# OK because the volume was already mounted by the first-mount script.
RUN{program}+="/bin/sh -c '/bin/mount /dev/%k || exit 0'"

LABEL="do_automount_end"
EOM

    # Some versions of systemd-udevd end up in a weird state when we add and
    # trigger rules on-the-fly, as below. Restarting the service seems to
    # resolve things. See BLOCK-1435 for details.
    if which systemctl &> /dev/null ; then
        systemctl restart systemd-udevd.service
    fi

    # Load the newly-added udev rules and then manually trigger them to catch
    # any automount volumes that were attached at boot.
    if which udevadm &> /dev/null ; then
        udevadm control -R
        udevadm trigger --action=add --subsystem-match=block
    fi
fi

--===============1806499388242261783==--
