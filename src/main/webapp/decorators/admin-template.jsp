<!DOCTYPE html>
<%@ taglib prefix="decarators" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<html lang="en">

<head>

    <%@include file="head-admin.jsp" %>

</head>

<body id="page-top">
<!-- Page Wrapper -->
<div id="wrapper">
    <!-- Sidebar -->
    <%@include file="navigation-admin.jsp"%>

    <decarators:body></decarators:body>

    <%@include file="../js/admin-js.jsp"%>
</body>

</html>