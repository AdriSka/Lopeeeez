
<%@ page import="cuandoEnsayo.Sala" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sala.label', default: 'Sala')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sala" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sala" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sala">
			
				<g:if test="${salaInstance?.precioPorHora}">
				<li class="fieldcontain">
					<span id="precioPorHora-label" class="property-label"><g:message code="sala.precioPorHora.label" default="Precio Por Hora" /></span>
					
						<span class="property-value" aria-labelledby="precioPorHora-label"><g:fieldValue bean="${salaInstance}" field="precioPorHora"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="sala.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${salaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salaInstance?.complejo}">
				<li class="fieldcontain">
					<span id="complejo-label" class="property-label"><g:message code="sala.complejo.label" default="Complejo" /></span>
					
						<span class="property-value" aria-labelledby="complejo-label"><g:fieldValue bean="${salaInstance}" field="complejo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salaInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="sala.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${salaInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${salaInstance?.barrioLocalidad}">
				<li class="fieldcontain">
					<span id="barrioLocalidad-label" class="property-label"><g:message code="sala.barrioLocalidad.label" default="Barrio Localidad" /></span>
					
						<span class="property-value" aria-labelledby="barrioLocalidad-label"><g:fieldValue bean="${salaInstance}" field="barrioLocalidad"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:salaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${salaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
