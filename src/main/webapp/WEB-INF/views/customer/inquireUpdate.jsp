<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <c:set var="root" value="${pageContext.request.contextPath}" />	
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>고객게시판</title>
  <!-- Custom fonts for this template-->
  <link href="${root}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="${root}/resources/css/sb-admin-2.min.css" rel="stylesheet">
  <!-- Custom styles for this page -->
  <link href="${root}/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  <!-- jQuery -->
  <script type="text/javascript" src="${root}/resources/jquery.js"></script>
</head>
<body>
 	<c:if test="${check>0}">
      <script type="text/javascript">
         alert("글을 수정하였습니다.")
      </script>
   </c:if>
   
   <c:if test="${check==0}">
      <script type="text/javascript">
         alert("요청하신 작업이 처리되지 않았습니다.")
      </script>
   </c:if>
   
   <script type="text/javascript">
       location.href = "${root}/customer/inquireList.do";
    </script>
</body>
</html>