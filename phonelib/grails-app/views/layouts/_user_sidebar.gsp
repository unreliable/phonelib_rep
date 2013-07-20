<div id="user_sidebar"></div>
<script>
var obj = document.getElementById("user_sidebar");
//var menubook="<ul>	<li class="controller"><a href="/phonelib/borrow/index">天文</a></li>	<li class="controller"><a href="/phonelib/own/index">地理</a></li>	<li class="controller"><a href="/phonelib/user/index">历史</a></li></ul>";
//var menuuser="	<ul>	<li class="controller"><a href="/phonelib/borrow/index">phonelib.BorrowController</a></li>	<li class="controller"><a href="/phonelib/own/index">phonelib.OwnController</a></li>	<li class="controller"><a href="/phonelib/user/index">phonelib.UserController</a></li></ul>"
var menubook="<ul>	<li class='controller'><a href='/phonelib/borrow/index'>天文</a></li>	<li class='controller'><a href='/phonelib/own/index'>地理</a></li>	<li class='controller'><a href='/phonelib/user/index'>历史</a></li></ul>";
var menuuser="<ul>	<li class='controller'><a href='/phonelib/borrow/index'>借阅图书</a></li>	<li class='controller'><a href='/phonelib/own/index'>我的图书</a></li>	<li class='controller'><a href='/phonelib/user/index'>用户</a></li></ul>"

if(location.href=="http://localhost:8080/phonelib/book/list") 
	obj.insertAdjacentHTML("beforeEnd",menubook);
else
	obj.insertAdjacentHTML("beforeEnd",menuuser);

</script>