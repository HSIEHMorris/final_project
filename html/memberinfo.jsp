<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Member Information</title>
    <link rel="stylesheet" href="../css/shoes.css">
    <link rel="stylesheet" href="../css/contents.css">
    <script type="text/javascript" src="../js/Carousel.js"></script>
    <style>
        body {
            font-family: Georgia;
            background: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background: #8E99a4;
            color: #fff;
            padding: 10px 0;
        }
        .menu-container ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .menu-container ul li {
            display: inline;
            margin-right: 10px;
        }
        .menu-container ul li a {
            color: #fff;
            text-decoration: none;
        }
        .logo {
            display: block;
            margin: 0 auto;
        }
        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            text-align: center;
        }
        nav ul li {
            display: inline;
            margin-right: 20px;
        }
        nav ul li a {
            color: #fff;
            text-decoration: none;
        }
        .search-container {
            text-align: center;
            margin-top: 10px;
        }
        .search-container input[type="text"] {
            padding: 5px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .search-container button {
            padding: 5px 10px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            background: #8E99a4;
            color: #fff;
            cursor: pointer;
        }
        .search-container button:hover {
            background: #555;
        }
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .member-info {
            font-size: 18px;
            line-height: 1.6;
        }
        .member-info p {
            margin: 10px 0;
        }
        footer {
            background: #8E99a4;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
        }
        main{
            padding: 80px;
        }
    </style>
</head>
<body>
    <header>
        <div class="menu-container">
            <ul class="drop-down-menu">
                <li>
                    <img src="../photo/004.png" class="menu-icon" alt="品牌選單">
                    <ul>
                        <li><a href="#">各樣品牌</a>
                            <ul>
                                <li><a href="adidas.html" target="_self">Adidas</a></li>
                                <li><a href="nike.html">Nike</a></li>
                                <li><a href="newbalance.html">New Balance</a></li>
                                <li><a href="converse.html">Converse</a></li>
                                <li><a href="puma.html">Puma</a></li>
                                <li><a href="fila.html">Fila</a></li>
                            </ul>
                        </li>
                        <li><a href="#">運動鞋(18)</a></li>
                        <li><a href="#">休閒鞋(18)</a></li>
                        <li><a href="#">拖鞋(18)</a></li>
                        <li><a href="#">店長推薦款</a></li>
                        <li><a href="login.html">會員登入</a></li>
                        <li><a href="cart.html">我的購物車</a></li>
                        <li><a href="contactus.html">聯絡我們</a></li>
                    </ul>
                </li>
            </ul>
        </div>         
        
        <a href="index.jsp"><img src="../photo/slogan.png" class="logo" alt="Shoe Store Logo"></a>
        
        <nav>
            <ul>
                <li class="member-menu">
                    <img src="../photo/002.png" class="img" alt="會員">
                    <ul>
                        <% 
                        String username = (String) session.getAttribute("username");
                        if (username != null) { 
                        %>
                            <li><a href="memberinfo.jsp">會員資料</a></li>
                            <li><a href="logout.jsp">登出</a></li>
                        <% } else { %>
                            <li><a href="login.html">會員登入</a></li>
                            <li><a href="register.html">還不是會員？</a></li>
                        <% } %>
                    </ul>
                </li>
                <li><a href="cart.html"><img src="../photo/001.png" class="img" alt="Icon 2"></a></li>
                <li><a href="contactus.html"><img src="../photo/003.png" class="img" alt="Icon 3"></a></li>
            </ul>
        </nav>

        <!-- 新增搜尋欄 -->
        <div class="search-container">
            <form action="/search" method="get">
                <input type="text" placeholder="Search.." name="search">
                <button type="submit">Search</button>
            </form>
        </div>
    </header>

    <main>
        <div class="container">
            <h1>會員資料</h1>
            <div class="member-info">
                <p><strong>姓名:</strong> 張三</p>
                <p><strong>會員ID:</strong> user123</p>
                <p><strong>電子郵件:</strong> user123@example.com</p>
                <p><strong>聯絡電話:</strong> 0912345678</p>
                <p><strong>地址:</strong> 台北市信義區松高路1號</p>
                <p><strong>購物偏好:</strong> 運動鞋, 休閒鞋</p>
                <p><strong>會員等級:</strong> 白金會員</p>
                <p><strong>加入日期:</strong> 2022-01-01</p>
            </div>
        </div>
    </main>

    <footer>
        <h2>copyright@ 2024 All rights reserved</h2>
    </footer>
</body>
</html>
