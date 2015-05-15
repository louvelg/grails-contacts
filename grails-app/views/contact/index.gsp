<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-contact" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-contact" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${contactList}" />

			
			<table>
			  <tr>
				<th>First name</th>
				<th>Last name</th>
				<th>Phone</th>
				<th>Birthday</th>
				<th></th>
			  </tr>

			  <g:each in="${contactList}" var="contact">
				<tr>
				  <td>${contact.firstname}</td>
				  <td>${contact.lastname}</td>
				  <td>${contact.telephonenumber}</td>
				  <td><g:formatDate format="dd/MM/yyyy" date="${contact.birthday}"/></td>
				  <td>
					<g:link action="edit" resource="${contact}"><asset:image src="edit.png" alt="Editer"/></g:link>&nbsp;&nbsp;
					<g:form resource="${contact}" method="DELETE" style="display:inline;">
						<button type="submit" style="cursor:pointer; background:none; border : 0px;" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><asset:image src="delete.png" alt="Supprimer"/></button>
		            </g:form>
				  </td>
				
				</tr>
			  </g:each>
			</table>
			

            <div class="pagination">
                <g:paginate total="${contactCount ?: 0}" />
            </div>
        </div>
    </body>
</html>