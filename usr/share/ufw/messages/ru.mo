��    �      ,  �   <      �
     �
  "   �
  b       y  (   �  #   �  &   �          )     =  *   R     }     �     �  "   �     �  /   �     
  #     #   A  %   e      �     �     �     �  W   �     O     l  &   �  "   �     �     �          !     :  !   Y  '   {     �     �     �  !   �  %     &   ,  5   S  .   �  =   �     �  (     0   1  &   b     �  >   �  @   �  3     ,   O     |     �     �     �     �  '   �          $     =  +   S          �     �     �     �     �       	        (  /   @     p     �     �     �  &   �     �  !        =     Y     _  1   f  /   �     �  !   �  ,   �  T   $     y  
   �           %     2     @     M     [     n     �  4   �     �     �  *     :   B      }  )   �     �  #   �  0   	     :     K  
   \     g     {     �     �     �  %   �          !     >     [     u  4   w     �     �     �  �  �     \  E   ^  �  �  L   �%  ?   �%  M   &  5   \&  6   �&     �&  -   �&  n   '     �'     �'  (   �'  A   �'  ,   (  �   ?(  ,   �(  J   �(  J   =)  A   �)  O   �)  &   *  %   A*  /   g*  �   �*  6   0+  9   g+  I   �+  J   �+  2   6,  /   i,  2   �,  2   �,  R   �,  E   R-  i   �-  +   .  1   ..  #   `.  G   �.  k   �.  P   8/  X   �/  P   �/  T   30     �0  s   �0  p   1  a   �1  8   �1  �   2  X   �2  v   3  3   3  $   �3  &   �3  &   �3  '   &4  $   N4  =   s4  $   �4  >   �4  +   5  ?   A5  8   �5  2   �5  !   �5  $   6  '   46  .   \6  *   �6     �6  1   �6  `   7  B   h7  6   �7     �7  5   �7  K   38  6   8  :   �8  J   �8  	   <9     F9  _   R9  W   �9     
:  9   :  ]   X:  �   �:  �   ?;  !    <  C   B<     �<  !   �<  !   �<  !   �<  &   
=  <   1=  O   n=  [   �=  ;   >  4   V>  U   �>  s   �>  G   U?  \   �?  >   �?  J   9@  D   �@  $   �@  &   �@     A  *   -A  6   XA  G   �A  <   �A  4   B  R   IB  6   �B  P   �B  P   $C  :   uC     �C  2   �C     �C     �C     �C     Y      F   5      H       S          w       I   8   9   ^      W   %   Z       v          g           G       k       7      b           q   (       ,   ;      n   Q   B                 c   3              {       O   <   J      '           \         u   !       �       0       	                  X   A   1   T       r   U   ]   .   *       p   h   -      s       E   >   o             �   @   �           K         ~       $   /   #   d   z                  N      P          _               e   +       y   "   i           &   
   :           [   }   =   t   a   R   M       ?       |   V   D   l      x   4   L   )      m   j   f   2   C       `      6    
 
Error applying application rules. 
Usage: %(progname)s %(command)s

%(commands)s:
 %(enable)-31s enables the firewall
 %(disable)-31s disables the firewall
 %(default)-31s set default policy
 %(logging)-31s set logging to %(level)s
 %(allow)-31s add allow %(rule)s
 %(deny)-31s add deny %(rule)s
 %(reject)-31s add reject %(rule)s
 %(limit)-31s add limit %(rule)s
 %(delete)-31s delete %(urule)s
 %(insert)-31s insert %(urule)s at %(number)s
 %(reset)-31s reset firewall
 %(status)-31s show firewall status
 %(statusnum)-31s show firewall status as numbered list of %(rules)s
 %(statusverbose)-31s show verbose firewall status
 %(show)-31s show firewall report
 %(version)-31s display version information

%(appcommands)s:
 %(applist)-31s list application profiles
 %(appinfo)-31s show information on %(profile)s
 %(appupdate)-31s update %(profile)s
 %(appdefault)-31s set default application policy
  (skipped reloading firewall)  Attempted rules successfully unapplied.  Some rules could not be unapplied. '%(f)s' file '%(name)s' does not exist '%s' already exists. Aborting '%s' does not exist '%s' is not writable (be sure to update your rules accordingly) Aborted Action Available applications: Backing up '%(old)s' to '%(new)s'
 Bad interface name Bad interface name: can't use interface aliases Bad interface type Cannot insert rule at position '%d' Cannot insert rule at position '%s' Cannot specify 'all' with '--add-new' Cannot specify insert and delete Checking raw ip6tables
 Checking raw iptables
 Command '%s' already exists Command may disrupt existing ssh connections. Proceed with operation (%(yes)s|%(no)s)?  Could not back out rule '%s' Could not find '%s'. Aborting Could not find a profile matching '%s' Could not find executable for '%s' Could not find profile '%s' Could not find protocol Could not find rule '%d' Could not find rule '%s' Could not get listening status Could not get statistics for '%s' Could not normalize destination address Could not perform '%s' Could not set LOGLEVEL Couldn't find '%s' Couldn't find parent pid for '%s' Couldn't find pid (is /proc mounted?) Couldn't update rules file for logging Default %(direction)s policy changed to '%(policy)s'
 Default: %(in)s (incoming), %(out)s (outgoing) Deleting:
 %(rule)s
Proceed with operation (%(yes)s|%(no)s)?  Description: %s

 Duplicate profile '%s', using last found Firewall is active and enabled on system startup Firewall not enabled (skipping reload) Firewall reloaded Found multiple matches for '%s'. Please use exact profile name Found non-action/non-logtype match (%(xa)s/%(ya)s %(xl)s/%(yl)s) Improper rule syntax ('%s' specified with app rule) Insert position '%s' is not a valid position Invalid '%s' clause Invalid 'from' clause Invalid 'port' clause Invalid 'proto' clause Invalid 'to' clause Invalid IPv6 address with protocol '%s' Invalid command '%s' Invalid interface clause Invalid log type '%s' Invalid policy '%(policy)s' for '%(chain)s' Invalid port with protocol '%s' Invalid ports in profile '%s' Invalid position ' Invalid position '%d' Invalid profile Invalid profile name Invalid token '%s' Logging:  Missing policy for '%s' Must specify 'tcp' or 'udp' with multiple ports Need 'from' or 'to' with '%s' Need 'to' or 'from' clause New profiles: No ports found in profile '%s' No rules found for application profile Option 'log' not allowed here Option 'log-all' not allowed here Port ranges must be numeric Port: Ports: Profile '%(fn)s' has empty required field '%(f)s' Profile '%(fn)s' missing required field '%(f)s' Profile: %s
 Profiles directory does not exist Protocol mismatch with specified protocol %s Resetting all rules to installed defaults. Proceed with operation (%(yes)s|%(no)s)?  Resetting all rules to installed defaults. This may disrupt existing ssh connections. Proceed with operation (%(yes)s|%(no)s)?  Rule added Rule changed after normalization Rule deleted Rule inserted Rule updated Rules updated Rules updated (v6) Rules updated for profile '%s' Skipped reloading firewall Skipping '%(value)s': value too long for '%(field)s' Skipping '%s': field too long Skipping '%s': invalid name Skipping '%s': too many files read already Skipping IPv6 application rule. Need at least iptables 1.4 Skipping inserting existing rule Skipping malformed tuple (bad length): %s Skipping malformed tuple: %s Skipping unsupported IPv6 '%s' rule Status: active
%(log)s
%(pol)s
%(app)s%(status)s Status: active%s Status: inactive Title: %s
 Unknown policy '%s' Unsupported action '%s' Unsupported default policy Unsupported direction '%s' Unsupported policy '%s' Unsupported policy for direction '%s' Unsupported protocol '%s' WARN: '%s' is world readable WARN: '%s' is world writable Wrong number of arguments n uid is %(uid)s but '%(path)s' is owned by %(st_uid)s unknown y yes Project-Id-Version: ufw
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2012-07-29 09:48-0500
PO-Revision-Date: 2011-10-06 15:46+0000
Last-Translator: Sergey Basalaev <SBasalaev@gmail.com>
Language-Team: Russian <ru@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2012-08-12 01:56+0000
X-Generator: Launchpad (build 15780)
 
 
Ошибка применения правил приложения. 
Использование: %(progname)s %(command)s

%(commands)s:
 %(enable)-31s включить межсетевой экран
 %(disable)-31s отключить межсетевой экран
 %(default)-31s задать правило по умолчанию
 %(logging)-31s задать уровень журналирования %(level)s
 %(allow)-31s добавить allow %(rule)s
 %(deny)-31s добавить deny %(rule)s
 %(reject)-31s добавить reject %(rule)s
 %(limit)-31s добавить limit %(rule)s
 %(delete)-31s удалить %(urule)s
 %(insert)-31s вставить %(urule)s в позиции %(number)s
 %(reset)-31s сбросить межсетевой экран
 %(status)-31s показать состояние межсетевого экрана
 %(statusnum)-31s показать состояние межсетевого экрана как нумерованный список %(rules)s
 %(statusverbose)-31s показать подробное состояние межсетевого экрана
 %(show)-31s показать отчёт межсетевого экрана
 %(version)-31s отобразить информацию о версии

%(appcommands)s:
 %(applist)-31s список профилей приложения
 %(appinfo)-31s показать информацию по %(profile)s
 %(appupdate)-31s обновить %(profile)s
 %(appdefault)-31s задать правило приложения по умолчанию
  (пропущен перезапуск межсетевого экрана)  Пробные правила отменены успешно.  Некоторые правила не могут быть отменены. '%(f)s' файл '%(name)s' не существует '%s' уже существует. Завершение '%s' не существует '%s' недоступен для записи (не забудьте соответствующим образом обновить ваши правила) Прервано Действие Доступные приложения: Резервное копирование '%(old)s' в '%(new)s'
 Неверное имя интерфейса Неверное имя интерфейса: невозможно использовать псевдонимы интерфейса Неверный тип интерфейса Не удалось вставить правило в позицию '%d' Не удалось добавить правило в позицию '%s' Нельзя указывать 'all' вместе с '--add-new' Не удалось распознать вставку или удаление Проверка рядов ip6tables
 Проверка рядов iptables
 Команда '%s' уже существует Команда может разорвать существующие соединения ssh. Продолжить операцию (%(yes)s|%(no)s)?  Не удалось вернуть правило '%s' Не удалось найти '%s'. Завершение Не найдено профилей, удовлетворяющих '%s' Не удалось найти исполняемый файл для '%s' Не удалось найти профиль '%s' Не удалось найти протокол Не удалось найти правило '%d' Не удалось найти правило '%s' Не удалось получить состояние прослушивания Не удалось получить статистику для '%s' Не удалось привести адрес назначения к стандартному виду Не удалось выполнить '%s' Не удалось установить LOGLEVEL Не удалось найти '%s' Не удалось найти родительский pid для '%s' Не удалось найти pid (убедитесь, что каталог /proc смонтирован) Не удалось обновить правила журналирования Правило по умолчанию %(direction)s изменено на '%(policy)s'
 По умолчанию: %(in)s (входящие), %(out)s (исходящие) Удаление:
 %(rule)s
Продолжить операцию (%(yes)s|%(no)s)?  Описание: %s

 Профиль '%s' дублируется, будет использован последний найденный Межсетевой экран активен и будет запущен при запуске системы Межсетевой экран не включен (перезагрузка пропущена) Межсетевой экран перезагружен Найдены множественные совпадения для '%s'. Используйте точное название профиля Найдено non-action/non-logtype совпадение (%(xa)s/%(ya)s %(xl)s/%(yl)s) Неверный синтаксис правила ('%s' указан с правилом для приложения) Неверная позиция вставки '%s' Неверное условие '%s' Неверное условие 'from' Неверное условие 'port' Неверное условие 'proto' Неверное условие 'to' Неверный адрес IPv6 с протоколом '%s' Неверная команда '%s' Неверное расположение интерфейса Неверный тип журнала '%s' Неверное правило '%(policy)s' для '%(chain)s' Неверный порт для протокола '%s' Неверные порты в профиле '%s' Неверная позиция ' Неверная позиция '%d' Неправильный профиль Неправильное имя профиля Некорректный символ '%s' Журналирование:  Отсутствует правило для '%s' Должно быть указано 'tcp' или 'udp' при нескольких портах Необходимо указать 'from' или 'to' для '%s' Необходимо условие 'to' или 'from' Новые профили: Не указаны порты в профиле '%s' Не найдено правил для профиля приложения Параметр 'log' здесь недопустим Параметр 'log-all' здесь недопустим Интервалы портов должны быть численными Порт: Порты: Профиль '%(fn)s' содержит пустое обязательное поле '%(f)s' В профиле '%(fn)s' пропущено обязательное поле '%(f)s' Профиль: %s
 Каталог профилей не существует Несоответствие протокола с указанным протоколом %s Сброс всех правил к значениям по умолчанию. Продолжить операцию (%(yes)s|%(no)s)?  Сброс всех правил к значениям по умолчанию. Это может разорвать существующие соединения ssh. Продолжить операцию (%(yes)s|%(no)s)?  Правило добавлено Правило изменено после нормализации Правило удалено Правило вставлено Правило обновлено Правила обновлены Правила обновлены (v6) Правила для профиля '%s' обновлены Пропущена перезагрузка межсетевого экрана Пропуск '%(value)s': значение слишком велико для '%(field)s' Пропуск '%s': поле слишком большое Пропуск '%s': недопустимое имя Пропуск '%s': слишком много файлов уже прочитано Пропуск правила приложения IPv6. Требуется iptables версии не ниже 1.4 Пропуск вставки существующего правила Пропуск некорректных элементов (неверная длина): %s Пропуск некорректных элементов: %s Пропуск неподдерживаемого правила IPv6 '%s' Состояние: активен
%(log)s
%(pol)s
%(app)s%(status)s Состояние: активен%s Состояние: неактивен Заголовок: %s
 Неизвестное правило '%s' Неподдерживаемое действие '%s' Неподдерживаемое правило по умолчанию Неподдерживаемое направление '%s' Неподдерживаемое правило '%s' Неподдерживаемое правило для направления '%s' Неподдерживаемый протокол '%s' ПРЕДУПРЕЖДЕНИЕ: '%s' доступен для чтения всем ПРЕДУПРЕЖДЕНИЕ: '%s' доступен для записи всем Неверное количество аргументов n uid %(uid)s, но '%(path)s' занят %(st_uid)s Неизвестно y yes 