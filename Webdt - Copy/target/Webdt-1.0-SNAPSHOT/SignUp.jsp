<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--phải có dòng này thì jsp mới chạy đc-->
<%--get du lieu co attribute la error duoc gui vao day va gan no vao String error --%>
<%
    //NEU XOA O DAY THI PHAI XOA LUON O DUOI NEU KHONG SE BI LOI
    String error = (String) request.getAttribute("error");
%>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sign Up</title>

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet'
          type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="header-area">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="user-menu">
                    <ul>
                        <li><a href="/Webdt/MyAccount"><i class="fa fa-user"></i> My Account</a></li>
                        <li><a href="Wishlist.html"><i class="fa fa-heart"></i> Wishlist</a></li>
                        <li><a href="/Webdt/cart"><i class="fa fa-user"></i> My Cart</a></li>
                        <li><a href="/Webdt/Checkout"><i class="fa fa-user"></i> Checkout</a></li>
                        <li><a href="login.jsp"><i class="fa fa-user"></i> Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End header area -->

<div class="site-branding-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-left">
                <div class="logo">
                    <h1><a href="/Webdt/HomePage"><img src="img/logo.png"></a></h1>
                </div>
            </div>

            <div class="col-sm-6 col-right">
                <div class="search">
                    <form action="/Webdt/SearchController" method="post"><!--them trang o day de khi bam submit ta se vao trang duoc them vao o day-->
                        <input type="text" placeholder="Search products..." style="width:300px" name="searchName">
                        <input type="submit" value="Search" >
                    </form>
                </div>

            </div>
        </div>
    </div>
</div> <!-- End site branding area -->


<div class="mainmenu-area">
    <div class="container">
        <div class="row">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="/Webdt/HomePage">Home</a></li>
                    <li><a href="Category.jsp">Category</a></li>
                    <li><a href="/Webdt/cart">Cart</a></li>
                    <li><a href="/Webdt/Checkout">Checkout</a></li>
                    <li><a href="/Webdt/Others?page=1&id=5">Others</a></li>
                    <li><a href="Contact.jsp">Contact</a></li>
                </ul>
            </div>
        </div>
    </div>
</div> <!-- End mainmenu area -->


<div class="product-big-title-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <h2>Sign Up</h2>
                </div>
            </div>
        </div>
    </div>
</div><!--End big title -->

<!--Start do in here-->
<div class="total_register">
    <form action="/Webdt/RegisterWithCSDL" method="post">
        <% if(error != null){ %>
        <div class="alert alert-danger" role="alert">
            <%=error%>
        </div>
        <% } %>
        <div class="account">
            <h6 class="title_account">Sign Up</h6>
            <input type="text" placeholder="Full Name" class="text" name="username">
            <input type="email" placeholder="Email Adress" class="text" name="email">
            <input type="password" placeholder="Password" class="text" id="passwordID" name="password">
            <div class="showPass">
                <input type="checkbox" onclick="seePassword()">Show Password
            </div>
        </div>
        <div class="Other">
            <div class="DateBirth oter">
                <h6 class="title_Date">Date of Birth</h6>
                <div id="dateBirth">
                    <input type="text" placeholder="DD" class="day cell" name="day">
                    <input type="text" placeholder="MM" class="month cell" name="month">
                    <input type="text" placeholder="YYYY" class="year cell" name="year">
                </div>
            </div>
            <div class="Gender oter">
                <h6 class="title_Gender">Gender</h6>
                <div id="gender">
                    <input type="text" placeholder="gender" class="male m" style="width:235px" name="gender">
                </div>
            </div>
        </div>
        <div class="payment">
            <h6 class="title_payment">Payment Details</h6>
            <input type="text" placeholder="Card Number" class="card_number" name="card_number">
            <div>
                <input type="text" placeholder="Card CVC" class="cvc text2">
                <div class="date text2">
                    <select id="day_month" name="day_month" class="pix_text">
                        <option value="">01 Jan</option>
                        <option value="">1</option>
                        <option value="">2</option>
                        <option value="">3</option>
                    </select>
                    <select id="year" name="year" class="pix_text">
                        <option value="">2015</option>
                        <option value="">1</option>
                        <option value="">2</option>
                        <option value="">3</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="last">
            <h6 class="term">Terms and Conditions</h6>
            <label>
                <input type="checkbox"> I accept the terms and conditions for signing up to this service, and hereby
                confirm I have read the privacy policy
                <div class="signUp">
                    <button class="supButton">Sigh Up</button>
                    <br>
                    <a href="login.html" class="gLogin">Login</a>
                </div>
            </label>
        </div>
    </form>
</div>
/<!--STOP DO IN HERE-->

<div class="footer-top-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="footer-about-us">
                    <h2>u<span>Stora</span></h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam
                        laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure
                        eaque ipsam iste, pariatur omnis sint! Suscipit, debitis, quisquam. Laborum commodi veritatis
                        magni at?</p>
                    <div class="footer-social">
                        <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-menu">
                    <h2 class="footer-wid-title">User Navigation </h2>
                    <ul>
                        <li><a href="">My account</a></li>
                        <li><a href="">Order history</a></li>
                        <li><a href="">Wishlist</a></li>
                        <li><a href="">Vendor contact</a></li>
                        <li><a href="">Front page</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-menu">
                    <h2 class="footer-wid-title">Categories</h2>
                    <ul>
                        <li><a href="./Iphone.html">Iphone</a></li>
                        <li><a href="./SamSungGalaxy.html">SamSung Galaxy</a></li>
                        <li><a href="./Headphone.html">Headphone</a></li>
                        <li><a href="./backupCharger.html">Backup Charger</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-newsletter">
                    <h2 class="footer-wid-title">Newsletter</h2>
                    <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your
                        inbox!</p>
                    <div class="newsletter-form">
                        <input type="email" placeholder="Type your email">
                        <input type="submit" value="Subscribe">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer-bottom-area">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="copyright">
                    <p>&copy; 2015 uCommerce. All Rights Reserved. <a href="http://www.freshdesignweb.com"
                                                                      target="_blank">freshDesignweb.com</a></p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="footer-card-icon">
                    <i class="fa fa-cc-discover"></i>
                    <i class="fa fa-cc-mastercard"></i>
                    <i class="fa fa-cc-paypal"></i>
                    <i class="fa fa-cc-visa"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Latest jQuery form server -->
<script src="https://code.jquery.com/jquery.min.js"></script>

<!-- Bootstrap JS form CDN -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- jQuery sticky menu -->
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.sticky.js"></script>

<!-- jQuery easing -->
<script src="js/jquery.easing.1.3.min.js"></script>

<!-- Main Script -->
<script src="js/main.js"></script>

<script>
    //neu type no la password thi chuyen type no thanh text, neu type no la text thi chuyen lai ve password
    function seePassword() {
        var x = document.getElementById("passwordID");
        if (x.type == "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }
</script>
</body>
</html>