PS C:\Develops\Quest> pwd

Path
----
C:\Develops\Quest


PS C:\Develops\Quest> mkdir powershell_practice


    디렉터리: C:\Develops\Quest


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:38                powershell_practice


PS C:\Develops\Quest> cd C:\Develops\Quest\powershell_practice
PS C:\Develops\Quest\powershell_practice> mkdir documents


    디렉터리: C:\Develops\Quest\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:38                documents


PS C:\Develops\Quest\powershell_practice> mkdir images


    디렉터리: C:\Develops\Quest\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:38                images


PS C:\Develops\Quest\powershell_practice> mkdir backup


    디렉터리: C:\Develops\Quest\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:39                backup


PS C:\Develops\Quest\powershell_practice> mkdir temp


    디렉터리: C:\Develops\Quest\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:39                temp


PS C:\Develops\Quest\powershell_practice> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
├─backup
├─documents
├─images
└─temp
PS C:\Develops\Quest\powershell_practice> cd C:\Develops\Quest\powershell_practice\documents
PS C:\Develops\Quest\powershell_practice\documents> ls
PS C:\Develops\Quest\powershell_practice\documents> cd ~
PS C:\Users\Administrator> cd C:\Develops\Quest\powershell_practice\documents
PS C:\Develops\Quest\powershell_practice\documents> cd ..
PS C:\Develops\Quest\powershell_practice> "Hello PowerShell!" > C:\develops\Quest\powershell_practice\documents\hello.txt
PS C:\Develops\Quest\powershell_practice> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
├─backup
├─documents
├─images
└─temp

PS C:\Develops\Quest\powershell_practice> cd C:\Develops\Quest\powershell_practice\documents
PS C:\Develops\Quest\powershell_practice\documents>  cp hello.txt C:\Develops\Quest\powershell_practice\backup
PS C:\Develops\Quest\powershell_practice\documents> cd C:\Develops\Quest\powershell_practice\temp
PS C:\Develops\Quest\powershell_practice\temp>  "" > C:\develops\Quest\powershell_practice\documents\test.txt
PS C:\Develops\Quest\powershell_practice\temp> mv C:\develops\Quest\powershell_practice\documents
PS C:\Develops\Quest\powershell_practice\temp> rm C:\Develops\Quest\powershell_practice\temp\documents\test.txt
PS C:\Develops\Quest\powershell_practice\temp> rm C:\Develops\Quest\powershell_practice\backup

확인
C:\Develops\Quest\powershell_practice\backup의 항목에는 하위 항목이 있으며 Recurse 매개 변수를 지정하지 않았습니다.
계속하면 해당 항목과 모든 하위 항목이 제거됩니다. 계속하시겠습니까?
[Y] 예(Y)  [A] 모두 예(A)  [N] 아니요(N)  [L] 모두 아니요(L)  [S] 일시 중단(S)  [?] 도움말 (기본값은 "Y"): y
PS C:\Develops\Quest\powershell_practice\temp> ls


    디렉터리: C:\Develops\Quest\powershell_practice\temp


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:00                documents


PS C:\Develops\Quest\powershell_practice\temp> mkdir my_project


    디렉터리: C:\Develops\Quest\powershell_practice\temp


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:21                my_project


PS C:\Develops\Quest\powershell_practice\temp> cd my*
PS C:\Develops\Quest\powershell_practice\temp\my_project> mkdir src


    디렉터리: C:\Develops\Quest\powershell_practice\temp\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:21                src


PS C:\Develops\Quest\powershell_practice\temp\my_project> mkdir docs


    디렉터리: C:\Develops\Quest\powershell_practice\temp\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:21                docs


PS C:\Develops\Quest\powershell_practice\temp\my_project> mkdir tests


    디렉터리: C:\Develops\Quest\powershell_practice\temp\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:21                tests


PS C:\Develops\Quest\powershell_practice\temp\my_project> mkdir build


    디렉터리: C:\Develops\Quest\powershell_practice\temp\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:21                build


PS C:\Develops\Quest\powershell_practice\temp\my_project> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
├─build
├─docs
├─src
└─tests
PS C:\Develops\Quest\powershell_practice\temp\my_project> cd src
PS C:\Develops\Quest\powershell_practice\temp\my_project\src> echo "print('Hello World')" > main.py
PS C:\Develops\Quest\powershell_practice\temp\my_project\src> echo "This is my project" > readme.txt
PS C:\Develops\Quest\powershell_practice\temp\my_project\src> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.

에 하위 폴더가 없습니다.
PS C:\Develops\Quest\powershell_practice\temp\my_project\src> cd ..
PS C:\Develops\Quest\powershell_practice\temp\my_project> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
├─build
├─docs
├─src
└─tests
PS C:\Develops\Quest\powershell_practice\temp\my_project> cd docs
PS C:\Develops\Quest\powershell_practice\temp\my_project\docs> echo "This is my project" > readme.txt
PS C:\Develops\Quest\powershell_practice\temp\my_project\docs> ls


    디렉터리: C:\Develops\Quest\powershell_practice\temp\my_project\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:22             42 readme.txt


PS C:\Develops\Quest\powershell_practice\temp\my_project\docs> cd ..
PS C:\Develops\Quest\powershell_practice\temp\my_project> ls


    디렉터리: C:\Develops\Quest\powershell_practice\temp\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:21                build
d-----      2025-07-15   오후 4:22                docs
d-----      2025-07-15   오후 4:22                src
d-----      2025-07-15   오후 4:21                tests


PS C:\Develops\Quest\powershell_practice\temp\my_project> cd src
PS C:\Develops\Quest\powershell_practice\temp\my_project\src> ls


    디렉터리: C:\Develops\Quest\powershell_practice\temp\my_project\src


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:22             46 main.py
-a----      2025-07-15   오후 4:22             42 readme.txt


PS C:\Develops\Quest\powershell_practice\temp\my_project\src> rm re*.txt
PS C:\Develops\Quest\powershell_practice\temp\my_project\src> cd ..
PS C:\Develops\Quest\powershell_practice\temp\my_project> cp src/main.py ./build/
PS C:\Develops\Quest\powershell_practice\temp\my_project> cp docs/readme.txt docs/project_info.txt
PS C:\Develops\Quest\powershell_practice\temp\my_project> cd docs
PS C:\Develops\Quest\powershell_practice\temp\my_project\docs> ls


    디렉터리: C:\Develops\Quest\powershell_practice\temp\my_project\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:22             42 project_info.txt
-a----      2025-07-15   오후 4:22             42 readme.txt


PS C:\Develops\Quest\powershell_practice\temp\my_project\docs> rm pro*.txt
PS C:\Develops\Quest\powershell_practice\temp\my_project\docs> mv readme.txt project_info.txt
PS C:\Develops\Quest\powershell_practice\temp\my_project\docs> cd ..
PS C:\Develops\Quest\powershell_practice\temp\my_project> cd tests
PS C:\Develops\Quest\powershell_practice\temp\my_project\tests> cd ..
PS C:\Develops\Quest\powershell_practice\temp\my_project> rm tests
PS C:\Develops\Quest\powershell_practice\temp\my_project> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
├─build
├─docs
└─src
PS C:\Develops\Quest\powershell_practice\temp\my_project> cd build
PS C:\Develops\Quest\powershell_practice\temp\my_project\build> ls


    디렉터리: C:\Develops\Quest\powershell_practice\temp\my_project\build


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:22             46 main.py


PS C:\Develops\Quest\powershell_practice\temp\my_project\build> cd ../docs
PS C:\Develops\Quest\powershell_practice\temp\my_project\docs> ls


    디렉터리: C:\Develops\Quest\powershell_practice\temp\my_project\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:22             42 project_info.txt


PS C:\Develops\Quest\powershell_practice\temp\my_project\docs> cd ../src
PS C:\Develops\Quest\powershell_practice\temp\my_project\src> ls


    디렉터리: C:\Develops\Quest\powershell_practice\temp\my_project\src


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:22             46 main.py