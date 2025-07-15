[kangbeenlee@localhost ~]$ pwd
/home/kangbeenlee
#경로확인
[kangbeenlee@localhost ~]$ ls
Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos
$홈 내용 확인
[kangbeenlee@localhost ~]$ cd /home/kangbeenlee/Music
#하위 디렉토리 Music으로 접근
[kangbeenlee@localhost Music]$ pwd
/home/kangbeenlee/Music
#Music 접근했는지 경로 확인
[kangbeenlee@localhost Music]$ cd ..
#상위 디렉토리로 이동
[kangbeenlee@localhost ~]$ cd /home/hs/Pictures
bash: cd: /home/hs/Pictures: No such file or directory
#하위 디렉토리 Pictures로 접근
[kangbeenlee@localhost ~]$ pwd
/home/kangbeenlee
#Pictures에 접근했는지 경로 확인
[kangbeenlee@localhost ~]$ ls
Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos
#Pictures 내용 확인