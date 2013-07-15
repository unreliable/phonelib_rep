<%@ page import="phonelib.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${bookInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'isbn13', 'error')} required">
	<label for="isbn13">
		<g:message code="book.isbn13.label" default="Isbn13" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="isbn13" required="" value="${bookInstance?.isbn13}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="book.users.label" default="Users" />
		
	</label>
	
</div>

