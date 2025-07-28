## **✅ 문제 : 간단한 서버 관리 스크립트 작성**

### **🔧 요구사항**

* `start`: 포트 8000에서 `http.server`를 백그라운드로 실행 (`nohup`, 로그는 `server.log`)

* `stop`: 실행 중인 프로세스를 찾아 종료

* `status`: 프로세스가 실행 중인지 확인하여 출력

* `restart`: 중지 후 다시 실행

  ### **🎯 실행 예시**

  $ ./webserver.sh start  
  서버가 백그라운드에서 시작되었습니다.  
    
  $ ./webserver.sh status  
  서버 실행 중입니다. PID: 13579  
    
  $ ./webserver.sh stop  
  서버가 종료되었습니다.  
    
  $ ./[webserver.sh](http://webserver.sh) tail\_log  
  … log message 확인


문제 모두 조건에 따라:

* `if [ "$1" == "start" ]` 식으로 흐름 제어

* 변수 `PORT`, `PID`, `LOGFILE` 등을 정의해 구성 가능
```
  1 PORT=8000
  2 LOGFILE="server.log"
  3 PID=$(ps aux | grep "http" | head -n 1 | awk '{print     $2}')
  4 
  5 #
  6 if [ "$1"  == "start" ]; then
  7   nohup python3 -m http.server "$PORT" --bind 0.0.0.0     &> "$LOGFILE" &
  8  
  9   echo "서버가 백그라운드에서 시작되었습니다."
 10 fi
 11 
 12 #
 13 if [ "$1" == "status" ]; then
 14    if [ -n "$PID" ] && ps -p "$PID" > /dev/null 2>&1;     then
 15     echo "서버 실행 중입니다. PID: $PID"
 16   else
 17     echo "서버가 꺼져 있습니다."
 18   fi
 19 fi
 20 
 21 if [ "$1" == "stop" ]; then 
 22     kill -9 "$PID"
 23     echo "서버가 종료되었습니다."  
 24 fi
 25 
 26 #log message 확인
 27 if [ "$1" == "tail_log" ]; then
 28   if [ -f "$LOGFILE" ]; then
 29     tail -f "$LOGFILE"
 30   fi
 31 fi

```

