<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="query" uri="http://www.jahia.org/tags/queryLib" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<c:set var="nodeType" value="${param.nodeType}"/>
<c:set var="sortOrder" value="${param.sortOrder}"/>

<c:if test="${! empty nodeType && ! empty sortOrder}">
    Let's build the query sorted by ${nodeType} - ${sortOrder}

    <query:definition var="listQuery">
        <query:selector nodeTypeName="jnt:myDocument"/>
        <query:descendantNode path="${currentNode.path}"/>
        <query:sortBy propertyName="${nodeType}" order="${sortOrder}"/>
    </query:definition>
    <c:set target="${moduleMap}" property="listQuery" value="${listQuery}"/>

</c:if>
