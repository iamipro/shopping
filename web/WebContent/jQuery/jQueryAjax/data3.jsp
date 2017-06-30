<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
  <c:choose>
    <c:when test="${param.code eq 'java'}">
     <font color='red'>JAva Study</font>
    </c:when>
   <c:otherwise>
   
    <c:out value="Oracle Study"></c:out>
   </c:otherwise>
  
  </c:choose>
  


  