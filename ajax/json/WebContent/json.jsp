<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/json2.js"></script>
<script type="text/javascript">
      /*
      var obj1={name:"容儿",age:22,address:"上海"};  //json格式
      alert(obj1.name);
      
      var users={users:[{name:"小青",age:21,score:88},{name:"小花",age:23,score:78}]};
      
      alert(users.users[0].name);
      
      //js eval函数  把字符串转化成对象
      var obj2=eval('({name:"小白"})');
      alert(obj2.name)
      
      //json2.js可以解析json;
      //1.json2 可以把字符串转化成对象parse方法
      */
      var str='{"name":"小燕子","age":22}';
      var obj3=JSON.parse(str);
      alert(obj3.name);
      
      //json2.js 可以对象转化成字符串 stringify
      var obj4={name:"小林",age:20};
      alert(obj4.name);
      var str2=JSON.stringify(obj4);
      alert(str2);
      
      //假设返回页面是一个json格式字符串
      var str3='{"name":"容儿","age":22,"address":"上海"}';
      var obj5=JSON.parse(str3);
      alert(obj5.name)
      
      var str4='[{"address":"上海","password":"fendou1","userName":"liayin1"},{"address":"上海","password":"fendou2","userName":"liayin2"},{"address":"上海","password":"fendou3","userName":"liayin3"},{"address":"上海","password":"fendou4","userName":"liayin4"}]';
      var obj6=JSON.parse(str4);
      alert(obj6[0].userName);
      
      var str5='[{"user":{"address":"上海","password":"fendou","userName":"liayin"}}]';
      var obj7=JSON.parse(str5);
      alert(obj7[0].user.userName);
      
      
      
</script>
</head>
<body>
    
</body>
</html>