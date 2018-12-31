<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/json2.js"></script>
  <script type="text/javascript">
     var xhr;
     function createXMLHTTPRequest(){
    	 xhr=new XMLHttpRequest();  //创建ajax核心对象
     }
     function check(){
    	 var username=document.getElementById("username").value;
    	 createXMLHTTPRequest();
    	 xhr.open("get","json.do?username="+username);  //发送请求;
    	 xhr.send(null);   //发送;
    	 //接收服务器的响应数据;
    	 xhr.onreadystatechange=callBack;
     }
     //回调函数--服务器响应就绪
    // 在 onreadystatechange 事件中，我们规定当服务器响应已做好被处理的准备时所执行的任务。

   // 当 readyState 等于 4 且状态为 200 时，表示响应已就绪：
     function callBack(){
    	 if(xhr.readyState==4 && xhr.status==200){  //可以开始接收返回的数据了....
    		 //服务器响应类型 1.字符串   2.xml文件
    		 var content=xhr.responseText; //服务器以字符串的方式返回;
    		 var obj=JSON.parse(content);
    		 var result=document.getElementById("result");
    		 result.innerHTML="<font color='red'>"+obj.uname+"</font>";  		 
    	 }
     }
  
  </script>
</head>
<body>
     用户名:<input type="text" id="username"/><span id="result"></span>
       <input type="button" id="btn" value="检查" onclick="check();"/>
</body>
</html>