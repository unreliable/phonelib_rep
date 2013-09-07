<!doctype html>
<html>
<head>
<title></title>
		<r:require modules="bootstrap"/>
        <r:layoutResources />

</head>
<body>
	<link href="/phonelib/css/bootstrap.css" rel="stylesheet">
	<ul class="nav nav-tabs" id="myTab">
		<li class="offset4"><a href="http://localhost:8080/phonelib/">主页</a></li>
		<li><a href="http://localhost:8080/phonelib/own/list">个人图书管理</a></li>
		<li><a href="http://localhost:8080/phonelib/book/list">馆藏图书</a></li>
	</ul>
	<script> 
      $(function () { 
        $('#myTab a:first').tab('show');})//初始化显示哪个tab 
</script>
        <r:layoutResources />

</body>
</html>
