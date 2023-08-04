# wc
Sensitive word detection - 敏感词检测  
附有词库大约5W

# requirements
flask  
jieba

# usage
~~~shell
./build.sh
./run.sh
python3 test.py
~~~

默认跑起来服务位于http://127.0.0.1:5002/api/check  
传参: http://127.0.0.1:5002/api/check?input=content

# 返回示例 
~~~json
{
  "divide" : "哈哈",
  "pass" : true,
  "time" : 0.00537023871
}
~~~
