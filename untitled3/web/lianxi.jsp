<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/5
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="jquery-1.11.1.js"></script>
    <script>
      $(function(){
          $("input[type='button']").click(function () {
              $.ajax({
                  url:"lianxi",
                  data:{"stuName":"zhangsan","stuID":"4"},
                  type:"get",
                  dataType:"json",
                  success:function (data) {
                      alert(data.stuName)
                  }
              })
          })
      })
    </script>

</head>
<body>
        <div>
            jjjjjj
        </div>
        <input type="button" value="按钮"/>
        <input type="text" >
</body>v
</html>
