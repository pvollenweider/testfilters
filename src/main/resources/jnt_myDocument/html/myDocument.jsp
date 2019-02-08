<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>

<h2>${currentNode.properties['jcr:title'].string}</h2>
<p><fmt:formatDate type="both" dateStyle="medium" timeStyle="medium"
                   value="${currentNode.properties['j:lastPublished'].time}"/></p>
