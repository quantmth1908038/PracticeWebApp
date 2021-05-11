<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/7/2021
  Time: 10:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Admin Automobili Lamborghini - Official Website</title>
</head>
<body>

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">
    <!-- Main Content -->
    <div id="content">
        <!-- Topbar -->
        <nav
                class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow"
        >
            <!-- Sidebar Toggle (Topbar) -->
            <button
                    id="sidebarToggleTop"
                    class="btn btn-link d-md-none rounded-circle mr-3"
            >
                <i class="fa fa-bars"></i>
            </button>

            <!-- Topbar Search -->
            <form
                    class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search"
            >
                <div class="input-group">
                    <input
                            type="text"
                            class="form-control bg-light border-0 small"
                            placeholder="Search for..."
                            aria-label="Search"
                            aria-describedby="basic-addon2"
                    />
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                            <i class="fas fa-search fa-sm"></i>
                        </button>
                    </div>
                </div>
            </form>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
            <div style="width: 100%; text-align: center; margin-bottom: 50px" >
                <a style="font-weight: 700; font-size: 18px; padding: 10px 200px; border-radius: 8px; border: 3px solid #2e56c7;" href="add-new-phone.jsp">Add Car</a>
            </div>
            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Table Car</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            </thead>
                            <tfoot>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Image</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            </tfoot>
                            <tbody>
                            <c:forEach var="p" items="${requestScope.product}">
                                <tr>
                                    <td>${p.id}</td>
                                    <td>${p.name}</td>
                                    <td style="width: 450px"><img src="${p.image}" alt="car" width="420" height="170" style="object-fit: cover"></td>
                                    <td>${p.price}</td>
                                    <td>${p.quantity}</td>
                                    <td style="width: 120px;"><a style="color: #01c20a; text-decoration: none" href="update?id=${p.id}"><i class="fas fa-pen-square"></i> Edit</a></td>
                                    <td style="width: 120px"><a style="color: red; text-decoration: none" href="#" onclick="showMess(${p.id})"><i class="fas fa-trash-alt"></i> Delete</a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- End of Main Content -->
</div>
<!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<script>
    function showMess(id) {
        var option = confirm('Are you sure to delete');
        if(option === true){
            window.location.href = 'delete?id=' + id;
        }
    }
</script>

</body>
</html>