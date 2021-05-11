<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html class="no-js h-100" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Add New Phone</title>
</head>
<body class="h-100">
<div class="container-fluid">
    <div class="row">
        <main class="main-content col-lg-12 col-md-12 col-sm-12 p-0">
            <!-- / .main-navbar -->
            <div class="main-content-container container-fluid px-4">
                <!-- Page Header -->
                <!-- End Page Header -->
                <div class="row">
                    <div class="col-lg-9 col-md-12">
                        <!-- Add New Post Form -->
                        <div class="card card-small mb-3">
                            <div class="card-body">
                                <form class="add-new-post" method="post" action="home">
                                    <input class="form-control form-control-lg mb-3" type="text"
                                           placeholder="Name Phone" name="name">
                                    <select name="brandid">
                                        <c:forEach var="b" items="${requestScope.brand}">
                                            <option value="${b.id}">${b.name}</option>
                                        </c:forEach>
                                    </select>
                                    <input class="form-control form-control-lg mb-3" type="number" placeholder="Price"
                                           name="price">
                                    <input class="form-control form-control-lg mb-3" type="text" placeholder="Description"
                                           name="description">
                                    <input class="btn btn-primary" style="float: right" type="submit" value="Submit">
                                    <%--                                    <div id="editor-container" class="add-new-post__editor mb-1"></div>--%>
                                </form>
                            </div>
                        </div>
                        <!-- / Add New Post Form -->
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
</body>
</html>