<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<template:include view="hidden.header"/>

<h1>${currentNode.displayableName}</h1>

<c:url var="publishedAscUrl" value="${renderContext.mainResource.node.url}">
    <c:param name="nodeType" value="j:lastPublished"/>
    <c:param name="sortOrder" value="asc"/>
</c:url>
<c:url var="publishedDescUrl" value="${renderContext.mainResource.node.url}">
    <c:param name="nodeType" value="j:lastPublished"/>
    <c:param name="sortOrder" value="desc"/>
</c:url>
<c:url var="titleAscUrl" value="${renderContext.mainResource.node.url}">
    <c:param name="nodeType" value="jcr:title"/>
    <c:param name="sortOrder" value="asc"/>
</c:url>
<c:url var="titleDescUrl" value="${renderContext.mainResource.node.url}">
    <c:param name="nodeType" value="jcr:title"/>
    <c:param name="sortOrder" value="desc"/>
</c:url>

Sort by published date <a href="${publishedAscUrl}">asc</a> | <a href="${publishedDescUrl}">desc</a><br/>
Sort by title <a href="${titleAscUrl}">asc</a> | <a href="${titleDescUrl}">desc</a><br/>

<hr/>

<c:forEach items="${moduleMap.currentList}" var="subchild" begin="${moduleMap.begin}" end="${moduleMap.end}">
    <template:module node="${subchild}" editable="${moduleMap.editable && !resourceReadOnly}"/>
</c:forEach>
<c:if test="${renderContext.editMode}">
    <template:module path="*" nodeTypes="jnt:myDocument"/>
</c:if>
