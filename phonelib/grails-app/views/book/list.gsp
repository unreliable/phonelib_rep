
<%@ page import="phonelib.Book" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
		
	<body>
		<div id="douban"></div>

		<a href="#list-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-book" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="title" title="${message(code: 'book.title.label', default: 'Title')}" />
						<g:sortableColumn property="isbn13" title="${message(code: 'book.isbn13.label', default: 'Isbn13')}" />
					</tr>
				</thead>
				<tbody id="father">
				<g:each in="${bookInstanceList}" status="i" var="bookInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: bookInstance, field: "isbn13")}</td>
						<td id=${bookInstance.isbn13}></td>
						
<script type="text/javascript" src="../js/douban_api.js"></script>
<script>
//alert(${bookInstance.isbn13});
DOUBAN.apikey = 
	DOUBAN.getISBNBook({
	    isbn:${bookInstance.isbn13},
	    callback:function(re){
	        //alert(re.title);
	       eletest=document.getElementById(re.isbn13);
	       eletest.innerHTML=re.title; 
	       eletest.parentNode.appendChild()
	    }
	})
</script>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bookInstanceTotal}" />
			</div>
		</div>
	</body>


	
</html>
