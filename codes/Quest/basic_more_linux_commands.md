# 연습문제 1: 기본 파일 시스템 탐색
## 1-1. 현재 위치 확인 및 이동
현재 작업 디렉터pw리의 절대 경로를 출력하시오.
```shell
[kangbeen@localhost ~]$ pwd
/home/kangbeen

홈 디렉터리로 이동하시오.
[kangbeen@localhost ~]$ cd /home

루트 디렉터리(/)로 이동하시오.
[kangbeen@localhost home]$ cd /home/kangbeen

다시 홈 디렉터리로 돌아가시오.
[kangbeen@localhost ~]$ cd /home
```

## 1-2. 디렉터리 내용 확인
현재 디렉터리의 파일과 폴더 목록을 출력하시오.
```shell
[kangbeen@localhost home]$ ls
kangbeen
```

숨김 파일을 포함한 모든 파일의 상세 정보를 출력하시오.
```shell
[kangbeen@localhost home]$ ls -al
total 4
drwxr-xr-x.  3 root     root       22 Jul 16 10:54 .
dr-xr-xr-x. 18 root     root      235 Jul 16 10:12 ..
drwx------. 14 kangbeen kangbeen 4096 Jul 16 10:54 kangbeen
```

/etc 디렉터리의 내용을 확인하시오.
```shell
[kangbeen@localhost home]$ ls /etc
accountsservice          gshadow-                  profile
adjtime                  gss                       profile.d
aliases                  host.conf                 protocols
alsa                     hostname                  pulse
alternatives             hosts                     qemu-ga
anacrontab               hp                        ras
appstream.conf           inittab                   rc.d
asound.conf              inputrc                   rc.local
at.deny                  iscsi                     redhat-release
audit                    issue                     request-key.conf
authselect               issue.d                   request-key.d
avahi                    issue.net                 resolv.conf
bash_completion.d        kdump                     rocky-release
bashrc                   kdump.conf                rocky-release-upstream
bindresvport.blacklist   kernel                    rpc
binfmt.d                 keys                      rpm
bluetooth                keyutils                  rsyncd.conf
brlapi.key               krb5.conf                 rsyslog.conf
brltty                   krb5.conf.d               rsyslog.d
brltty.conf              ld.so.cache               rwtab.d
chromium                 ld.so.conf                samba
chrony.conf              ld.so.conf.d              sane.d
chrony.keys              libaudit.conf             sasl2
cifs-utils               libblockdev               security
cockpit                  libibverbs.d              selinux
containers               libnl                     services
cron.d                   libpaper.d                sestatus.conf
cron.daily               libreport                 setroubleshoot
cron.deny                libssh                    sgml
cron.hourly              libuser.conf              shadow
cron.monthly             locale.conf               shadow-
crontab                  localtime                 shells
cron.weekly              login.defs                skel
crypto-policies          logrotate.conf            smartmontools
crypttab                 logrotate.d               sos
csh.cshrc                lsm                       speech-dispatcher
csh.login                lvm                       ssh
cups                     machine-id                ssl
cupshelpers              magic                     sssd
dbus-1                   mailcap                   statetab.d
dconf                    makedumpfile.conf.sample  subgid
debuginfod               man_db.conf               subgid-
default                  mcelog                    subuid
depmod.d                 microcode_ctl             subuid-
dhcp                     mime.types                sudo.conf
DIR_COLORS               mke2fs.conf               sudoers
DIR_COLORS.lightbgcolor  modprobe.d                sudoers.d
dnf                      modules-load.d            sudo-ldap.conf
dnsmasq.conf             motd                      sysconfig
dnsmasq.d                motd.d                    sysctl.conf
dracut.conf              mtab                      sysctl.d
dracut.conf.d            multipath                 systemd
egl                      nanorc                    system-release
enscript.cfg             netconfig                 system-release-cpe
environment              NetworkManager            terminfo
ethertypes               networks                  tmpfiles.d
exports                  nftables                  tpm2-tss
favicon.png              nsswitch.conf             trusted-key.key
filesystems              nsswitch.conf.bak         tuned
firefox                  nvme                      udev
firewalld                openldap                  udisks2
flatpak                  opt                       updatedb.conf
fonts                    os-release                UPower
foomatic                 ostree                    usb_modeswitch.conf
fprintd.conf             PackageKit                vconsole.conf
fstab                    pam.d                     vimrc
fuse.conf                papersize                 virc
fwupd                    passwd                    vmware-tools
gcrypt                   passwd-                   vulkan
gdm                      pbm2ppa.conf              wgetrc
geoclue                  pinforc                   wireplumber
glvnd                    pkcs11                    wpa_supplicant
gnupg                    pkgconfig                 X11
GREP_COLORS              pki                       xattr.conf
groff                    plymouth                  xdg
group                    pm                        xml
group-                   pnm2ppa.conf              yum
grub2.cfg                polkit-1                  yum.conf
grub.d                   popt.d                    yum.repos.d
gshadow                  printcap

```
# 연습문제 2: 디렉터리 및 파일 생성
## 2-1. 디렉터리 구조 생성
다음과 같은 디렉터리 구조를 생성하시오:
practice/

├── documents/
│   ├── reports/ls
│   └── notes/
├── images/
└── backup/
```shell
[kangbeen@localhost ~]$ mkdir -p practice/documents/reports
[kangbeen@localhost ~]$ mkdir -p practice/documents/notes
[kangbeen@localhost ~]$ mkdir -p practice/images
[kangbeen@localhost ~]$ mkdir -p practice/backup
```
## 2-2. 파일 생성 및 내용 작성
practice/documents/ 디렉터리에 readme.txt 파일을 생성하고 "Hello Linux!"라는 내용을 작성하시오.
```shell
[kangbeen@localhost ~]$ echo "hello Linux!"> practice/documents/readme.txt
```
practice/notes/ 디렉터리에 memo.txt 파일을 생성하고 "Linux 명령어 연습 중"이라는 내용을 작성하시오.
```shell
[kangbeen@localhost ~]$ echo "Linux 명령어 연습 중"> practice/documents/notes/memo.txt
```
# 연습문제 3: 파일 내용 확인 및 조작
## 3-1. 파일 내용 출력
앞서 생성한 readme.txt 파일의 내용을 출력하시오.
memo.txt 파일의 내용을 출력하시오.
```shell
[kangbeen@localhost ~]$ cat practice/documents/readme.txt
hello Linux!
[kangbeen@localhost ~]$ cat practice/documents/notes/memo.txt
Linux 명령어 연습 중
```
## 3-2. 파일 복사
readme.txt 파일을 backup/ 디렉터리에 복사하시오.
```shell
[kangbeen@localhost ~]$ cp practice/documents/readme.txt practice/backup/
```
documents/ 디렉터리 전체를 backup/ 디렉터리에 복사하시오.
```shell
[kangbeen@localhost ~]$ cp practice/documents practice/backup/
cp: -r not specified; omitting directory 'practice/documents'
[kangbeen@localhost ~]$ cp -r practice/documents practice/backup/
```

# 연습문제 4: 파일 이동 및 이름 변경
## 4-1. 파일 이동
memo.txt 파일을 documents/ 디렉터리로 이동하시오.
```shell
[kangbeen@localhost ~]$ mv practice/documents/notes/memo.txt practice/documents/
```
images/ 디렉터리를 practice/media/로 이름을 변경하시오.
```shell
[kangbeen@localhost ~]$ mv practice/images practice/media
```
## 4-2. 파일 이름 변경
readme.txt를 introduction.txt로 이름을 변경하시오.
```shell
[kangbeen@localhost ~]$ mv practice/documents/readme.txt practice/documents/introduction.txt
```
memo.txt를 study_notes.txt로 이름을 변경하시오.
```shell
[kangbeen@localhost ~]$ mv practice/documents/memo.txt practice/documents/study_notes.txt
```

# 연습문제 5: 종합 실습
## 5-1. 프로젝트 디렉터리 생성
다음 요구사항에 따라 프로젝트 디렉터리를 생성하시오:
my_project/라는 최상위 디렉터리 생성
```shell
[kangbeen@localhost ~]$ mkdir my_project
```

하위에 src/, docs/, tests/, config/ 디렉터리 생성
src/ 디렉터리에 main.py 파일 생성 (내용: "# Main Python File")
```shell
[kangbeen@localhost ~]$ echo "# Main Python File" > my_project/src/main_py
```
docs/ 디렉터리에 README.md 파일 생성 (내용: "# My Project Documentation")
```shell
[kangbeen@localhost ~]$ echo "# My Project Documentation" > my_project/docs/README.md
```
config/ 디렉터리에 settings.conf 파일 생성 (내용: "# Configuration File")
```shell
[kangbeen@localhost ~]$ echo "# Configuration File" > my_project/config/settings.conf
```
## 5-2. 백업 및 정리
전체 my_project/ 디렉터리를 my_project_backup/으로 복사하시오.
```shell
[kangbeen@localhost ~]$ cp -r my_project my_project_backup
```
my_project/src/main.py 파일을 my_project/src/app.py로 이름을 변경하시오.
```shell
[kangbeen@localhost ~]$ mv my_project/src/main.py my_project/src/app.py
```
my_project/docs/README.md 파일을 my_project/ 디렉터리로 이동하시오.
```shell
mv my_project/docs/README.md my_project/
```
