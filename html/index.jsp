<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-TW">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shoe Store</title>
    <link rel="stylesheet" href="../css/shoes.css">
    <link rel="stylesheet" href="../css/contents.css">
    <script type="text/javascript" src="../js/Carousel.js"></script>
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
        
        <img src="../photo/slogan.png" class="logo" alt="Shoe Store Logo">
        
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
    <div class="container">
        <div class="slide fade">
             <img src="../photo/adidas02.jpg" alt="Adidas">
        </div>
        <div class="slide fade">
             <img src="../photo/converse02.jpg" alt="Converse">
        </div>
        <div class="slide fade">
             <img src="../photo/fila02.jpg" alt="Fila">
        </div>
        <div class="slide fade">
             <img src="../photo/new balance02.jpg" alt="New Balance">
        </div>
        <div class="slide fade">
             <img src="../photo/nike02.jpg" alt="Nike">
        </div>
        <div class="slide fade">
             <img src="../photo/puma02.jpg" alt="Puma">
        </div>
        <a class="prev" onclick="changeSlide(-1)">&#10094;</a>
        <a class="next" onclick="changeSlide(1)">&#10095;</a>
   </div>
   <div style="text-align: center;">
        <span class="dot" onclick="showSlides(1)"></span>
        <span class="dot" onclick="showSlides(2)"></span>
        <span class="dot" onclick="showSlides(3)"></span>
        <span class="dot" onclick="showSlides(4)"></span>
        <span class="dot" onclick="showSlides(5)"></span>
        <span class="dot" onclick="showSlides(6)"></span>
   </div>

    <main>
        <div class="brands">
            <div class="brand-item"> <a href="adidas.html"><img src="../photo/adidas.png" alt="Adidas"></a></div>
            <div class="brand-item"> <a href="nike.html"><img src="../photo/nike.png" alt="Nike"></a></div>
            <div class="brand-item"> <a href="newbalance.html"><img src="../photo/new balance.png" alt="New Balance"></a></div>
            <div class="brand-item"> <a href="converse.html"><img src="../photo/converse.png" alt="Converse"></a></div>
            <div class="brand-item"> <a href="puma.html"><img src="../photo/puma.png" alt="Puma"></a></div>
            <div class="brand-item"> <a href="fila.html"><img src="../photo/fila.png" alt="Fila"></a></div>
        </div>
    </main>
    <footer>
        <h2>copyright@ 2024 All rights reserved</h2>
    </footer>
</body>
</html>

