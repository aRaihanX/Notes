for i in {1..10};do echo $i;done
##OUTPUT
1
2
3
4
5
6
7
8
9
10

for i in {001..5};do echo $i;done
##OUTPUT 
01
02
03
04
05

for i in {1..10..2};do echo $i;done
##OUTPUT
1
3
5
7
9

seq 10
##OUTPUT
1
2
3
4
5
6
7
8
9
10

seq 10 15
#OUTPUT
10
11
12
13
14
15

seq 10 2 20
#OUTPUT
10
12
14
16
18
20

seq -w 10
#OUTPUT
01
02
03
04
05
06
07
08
09
10
