
## 인자와 read를 함께 사용하여 변수 조합 출력

```bash
#출력결과
~$ 80_2_shell_variables_read.sh agument_first
 read input : read_first

input values : agument_first read_first
```

### 풀이
```bash
[kangbeen@localhost Quest]$ nano variables_read.sh 


read -p "read input : " V_Argument
echo "input values : $1 $V_Argument" 

[kangbeen@localhost Quest]$ source variables_read.sh argument_first
read input : read_first
input values : argument_first read_first


```