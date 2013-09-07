
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<button type="button" class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="brand" href="#">手机图书馆</a>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<li class=" "><a href="#">主页</a></li>
					<li><a href="#about">关于</a></li>
					<li><a href="#contact">联系</a></li>
				</ul>
				<form class="navbar-form pull-right">
					<input class="span2" type="text" placeholder="Email"> <input
						class="span2" type="password" placeholder="Password">
					<button type="submit" class="btn">登陆</button>
				</form>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>

</div>
<h3>手机图书馆，同学们，可以通过手机访问学校的图书馆，管理自己的借阅记录。</h3>
<ul class="nav nav-tabs" id="myTab">
	<li class="offset4"><a href="http://localhost:8080/phonelib/">主页</a></li>
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">个人图书管理<b class="caret"></b></a>
		<ul class="dropdown-menu">
			<li><a href="http://localhost:8080/phonelib/own/list" >我的图书</a></li>
			<li><a href="http://localhost:8080/phonelib/borrow/list">借入图书</a></li>
			<li><a href="http://localhost:8080/phonelib/borrow/list">借出图书</a></li>
		</ul>
	</li>	
	<li><a href="http://localhost:8080/phonelib/book/list">馆藏图书</a></li>
</ul>

<script>$('.dropdown-toggle').dropdown()</script>
