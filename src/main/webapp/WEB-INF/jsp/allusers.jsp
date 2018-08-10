<%--
  Created by IntelliJ IDEA.
  User: ML
  Date: 06.08.2018
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">
<head>
    <base href="./">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <title>Tweeter Mock App</title>
    <!-- Icons-->
    <link href="${pageContext.request.contextPath}/node_modules/@coreui/icons/css/coreui-icons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/node_modules/flag-icon-css/css/flag-icon.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/node_modules/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/node_modules/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
    <!-- Main styles for this application-->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendors/pace-progress/css/pace.min.css" rel="stylesheet">
</head>
<body class="app header-fixed sidebar-fixed aside-menu-fixed sidebar-lg-show">
<header class="app-header navbar">
    <button class="navbar-toggler sidebar-toggler d-lg-none mr-auto" type="button" data-toggle="sidebar-show">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">
        <img class="navbar-brand-full" src="${pageContext.request.contextPath}/img/brand/logo.svg" width="89" height="25" alt="CoreUI Logo">
        <img class="navbar-brand-minimized" src="${pageContext.request.contextPath}/img/brand/sygnet.svg" width="30" height="30" alt="CoreUI Logo">
    </a>
    <button class="navbar-toggler sidebar-toggler d-md-down-none" type="button" data-toggle="sidebar-lg-show">
        <span class="navbar-toggler-icon"></span>
    </button>
    <ul class="nav navbar-nav d-md-down-none">
        <li class="nav-item px-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/">Dashboard</a>
        </li>
        <li class="nav-item px-3">
            <a class="nav-link" href="${pageContext.request.contextPath}/tweets/users">Users</a>
        </li>
    </ul>
    <ul class="nav navbar-nav ml-auto">
        <li class="nav-item d-md-down-none">
            <a class="nav-link" href="#">
                <i class="icon-bell"></i>
                <span class="badge badge-pill badge-danger">5</span>
            </a>
        </li>
        <li>
            <div class="col-6 col-sm-4 col-md-2 col-xl mb-3 mb-xl-0">
                <a href="${pageContext.request.contextPath}/logout"><i class="fa fa-power-off fa-2x"></i></a>
           </div>
        </li>
    </ul>

</header>
<div class="app-body">
    <div class="sidebar">
        <nav class="sidebar-nav">
            <ul class="nav">
                <li class="nav-item">
                        <a class="nav-link nav-link-success" href="#" target="_top">
                            <i class="nav-icon icon-cloud-download"></i> Tweet now!</a>
                </li>
                <li class="nav-title">Explore App</li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="nav-icon icon-drop"></i> Newest tweets</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="nav-icon icon-pencil"></i> Message</a>
                </li>
                <li class="nav-title">Comments</li>
                <li class="nav-item nav-dropdown">
                    <a class="nav-link nav-dropdown-toggle" href="#">
                        <i class="nav-icon icon-puzzle"></i> Comments menu</a>
                    <ul class="nav-dropdown-items">
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="nav-icon icon-puzzle"></i> All comments</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="nav-icon icon-puzzle"></i> Newest 10 comments</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="nav-icon icon-puzzle"></i> Oldest 10 comments</a>
                        </li>

                    </ul>
                </li>
        </nav>
        <button class="sidebar-minimizer brand-minimizer" type="button"></button>
    </div>
    <main class="main">
        <!-- Breadcrumb-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="${pageContext.request.contextPath}/tweets">All tweets</a>
            </li>
            <li class="breadcrumb-item">
                <a href="#">Newest 10 tweets</a>
            </li>
            <!-- Breadcrumb Menu-->
            <li class="breadcrumb-menu d-md-down-none">
                <div class="btn-group" role="group" aria-label="Button group">

                    <a class="btn" href="./">
                        <i class="fa fa-user-o fa-lg mt-2"></i>  Hello ${user.username}!</a>
                </div>
            </li>
        </ol>
        <div class="container-fluid">
            <div class="animated fadeIn"></div>
        </div>

        <%--=================cards=================--%>
        <div class="w-90 p-3 align-content-center">
        <div class="row">
            <c:forEach items="${allusers}" var="singleUser">
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">${singleUser.id}. ${singleUser.username}</h5>
                            <p class="card-text">Email: ${singleUser.email}</p>
                            <a href="#" class="btn btn-primary">Tweets</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        </div>
    </main>
</div>
<footer class="app-footer">
    <div>
        <a href="https://github.com/mlipski00">GitHub</a>
        <span>&copy; 2018 Michał Lipski.</span>
    </div>
</footer>
<script src="${pageContext.request.contextPath}/node_modules/pace-progress/pace.min.js"></script>
<script src="${pageContext.request.contextPath}/node_modules/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>


<script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@coreui/coreui/dist/js/coreui.min.js"></script>
</body>
</html>
