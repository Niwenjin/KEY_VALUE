echo "显示帮助信息"
./key_value -h
echo "从文档导入键值对"
./key_value -f week.txt
echo "交互式添加键值对"
./key_value -a
echo "命令行参数添加键值对NAME=Niwenjin"
./key_value -aNAME=Niwenjin
echo "命令行参数查询"
./key_value -q1
./key_value -q2
./key_value -q3
./key_value -q4
./key_value -q5
./key_value -q6
./key_value -q7
./key_value -qNAME
echo "交互式查询"
./key_value -q
echo "删除键值对NAME"
./key_value -d NAME
echo "删除后查询NAME"
./key_value -qNAME