<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Trang Quản Lý</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        .container {
            border: 1px solid blue;
            width: 700px;
            margin: 0 auto;
        }
        .header img {
            max-height: 100px;
            margin: 10px;
        }
        .menu {
            border-top: 1px solid blue;
            border-bottom: 1px solid blue;
            padding: 5px;
        }
        .menu a {
            text-decoration: none;
            color: blue;
            margin: 0 10px;
        }
        .content {
            min-height: 300px;
            padding: 20px;
        }
        .footer {
            border-top: 1px solid blue;
            padding: 10px;
            font-weight: bold;
            color: blue;
        }
    </style>
</head>
<body>
<div class="container">

    <div class="header">
        <img src="./images/logo.png" alt="Logo">
    </div>


    <div class="menu">
        <a href="phones">Danh sách sản phẩm</a> |
        <a href="index.jsp?page=add">Thêm mới sản phẩm</a> |
        <a href="index.jsp?page=manage">Chức năng quản lý</a>
    </div>


    <div class="content">
        <c:choose>
            <c:when test="${param.page == 'list'}">
                <jsp:include page="list/DanhSachDienThoaiNCC.jsp"/>
            </c:when>
            <c:when test="${param.page == 'add'}">
                <jsp:include page="list"/>
            </c:when>
            <c:when test="${param.page == 'manage'}">
                <jsp:include page="list"/>
            </c:when>
            <c:otherwise>
                <h3>Chào mừng đến Trang Quản Lý</h3>
            </c:otherwise>
        </c:choose>

    </div>


    <div class="footer">
        Phan Viết Hiếu – 22641741 – DHKTPM18B
    </div>
</div>
</body>
</html>
