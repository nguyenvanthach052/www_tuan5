<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        .styled-table {
            border-collapse: collapse;
            width: 90%;
            margin: 0 auto;
            background: #fff;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            border-radius: 8px;
            overflow: hidden;
            text-align: center;
        }

        /* Header */
        .styled-table thead {
            background: #007bff;
            color: #fff;
        }

        .styled-table thead th {
            padding: 12px;
            font-size: 14px;
        }

        /* Body */
        .styled-table tbody td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            font-size: 14px;
            color: #333;
        }

        /* Hàng xen kẽ */
        .styled-table tbody tr:nth-child(even) {
            background: #f9f9f9;
        }

        .styled-table tbody tr:hover {
            background: #eef4ff;
        }

        /* Cột width */
        .styled-table th:nth-child(1), .styled-table td:nth-child(1) { width: 10%; }
        .styled-table th:nth-child(2), .styled-table td:nth-child(2) { width: 20%; }
        .styled-table th:nth-child(3), .styled-table td:nth-child(3) { width: 10%; }
        .styled-table th:nth-child(4), .styled-table td:nth-child(4) { width: 20%; }
        .styled-table th:nth-child(5), .styled-table td:nth-child(5) { width: 15%; }
        .styled-table th:nth-child(6), .styled-table td:nth-child(6) { width: 25%; }

        /* Hình ảnh */
        .styled-table img {
            max-width: 100px;
            border-radius: 6px;
        }


    </style>
</head>
<body>
    <div >
        <table class="styled-table">
            <thead>
            <tr>
                <th>Mã DT</th>
                <th>Tên ĐT</th>
                <th>Năm sản xuất</th>
                <th>Cấu hình</th>
                <th>Mã nhà cung cấp</th>
                <th>Hình ảnh</th>
            </tr>
            </thead>
            <c:forEach var="phone" items="${products}">
                <tr>
                    <td>${phone.maDT}</td>
                    <td>${phone.tenDT}</td>
                    <td>${phone.namSX}</td>
                    <td>${phone.cauHinh}</td>
                    <td>${phone.maNCC.maNCC}</td>
                    <td>
                        <img src="${pageContext.request.contextPath}/images/${phone.hinhAnh}" alt="${phone.tenDT}"
                             style="max-width:100px; border-radius:6px;">

                    </td>
                </tr>
            </c:forEach>
        </table>

    </div>


</body>
</html>