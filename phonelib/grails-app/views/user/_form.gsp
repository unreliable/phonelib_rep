<%@ page import="phonelib.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="user.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${userInstance?.userName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'books', 'error')} ">
	<label for="books">
		<g:message code="user.books.label" default="Books" />
		
	</label>
	<g:select name="books" from="${phonelib.Book.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.books*.id}" class="many-to-many"/>
</div>

