<!--phải có dòng này thì jsp mới chạy đc-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--phải có dòng này thì jsp mới chạy đc-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="singleProduct"
       value="${sessionScope.singleProduct}"/><!--lay du lieu singleProduct duoc luu trong session-->

<%--<c:set var="categoryName" value="${sessionScope.categoryName}"/><!--lay du lieu categoryName duoc luu trong session-->--%>
<%
    String categoryName = (String) request.getAttribute("categoryName");//lay ten category duoc gui den
%>
<c:set var="cart" value="${sessionScope.cart}"/>
<c:set var="lastProduct" value="${sessionScope.lastestProduct}"/>
<%@ page import="com.google.gson.Gson" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product</title>

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

            <div class="col-md-4">
                <div class="header-right">
                    <ul class="list-unstyled list-inline">
                        <li class="dropdown dropdown-small">
                            <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span
                                    class="key">currency :</span><span class="value">USD </span><b
                                    class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">USD</a></li>
                                <li><a href="#">INR</a></li>
                                <li><a href="#">GBP</a></li>
                            </ul>
                        </li>

                        <li class="dropdown dropdown-small">
                            <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span
                                    class="key">language :</span><span class="value">English </span><b
                                    class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">English</a></li>
                                <li><a href="#">French</a></li>
                                <li><a href="#">German</a></li>
                            </ul>
                        </li>
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
                    <form action="/Webdt/SearchController" method="post">
                        <!--them trang o day de khi bam submit ta se vao trang duoc them vao o day-->
                        <input type="text" placeholder="Search products..." style="width:300px" name="searchName">
                        <input type="submit" value="Search">
                    </form>
                </div>

                <div class="shopping-item">
                    <a href="/Webdt/cart">Cart - $<span class="cart-amunt">${cart.totalPrice}</span> <i
                            class="fa fa-shopping-cart"></i> <span
                            class="product-count">${cart.productList.size()}</span></a>
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
                    <h2>Shop</h2>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <!-- <div class="single-sidebar">
                    <h2 class="sidebar-title">Search Products</h2>
                    <form action="">
                        <input type="text" placeholder="Search products...">
                        <input type="submit" value="Search">
                    </form>
                </div> -->

                <div class="single-sidebar">
                    <h2 class="sidebar-title">Products</h2>
                    <c:forEach begin="0" end="3" items="${lastestProduct}" var="lp">
                        <div class="thubmnail-recent">
                            <img src="${lp.img}" class="recent-thumb" alt="">
                            <h2><a href="SingleProduct?id=${lp.id}">${lp.name}</a></h2>
                            <div class="product-sidebar-price">
                                <ins>${lp.sale_price}</ins>
                                <del>${lp.price}</del>
                            </div>
                        </div>
                    </c:forEach>
                </div>

                <div class="single-sidebar">
                    <h2 class="sidebar-title">Recent Posts</h2>
                    <ul>
                        <li><a href="">Iphone 6</a></li>
                        <li><a href="">Iphone 8</a></li>
                        <li><a href="">Iphone 12 x 128G</a></li>
                        <li><a href="">Iphone X</a></li>
                        <li><a href="">Sony Smart TV - 2015</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-8">
                <div class="product-content-right">
                    <div class="product-breadcroumb">
                        <a href="Category.jsp">Home</a>
                        <a href="ProductListController?id=${categoryID}">${categoryName}</a>
                        <a href="">${singleProduct.name}</a>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="product-images">
                                <div class="product-main-img">
                                    <img src="${singleProduct.img}" alt="">
                                </div>

                                <div class="product-gallery">
                                    <c:forEach items="${listThumbnail}" var="t">
                                        <img src="${t}" alt="">
                                    </c:forEach>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="product-inner">
                                <h2 class="product-name">${singleProduct.name}</h2>
                                <div class="product-inner-price">
                                    <ins>${singleProduct.sale_price}</ins>
                                    <del>${singleProduct.price}</del>
                                </div>

                                <form action="" class="cart">
                                    <%--<button class="add_to_cart_button" type="submit">Add to cart</button>--%>
                                        <div class="product-option-shop">
                                            <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70"
                                               rel="nofollow" pid="${singleProduct.id}" onclick="document.location.reload(true)">Add to cart</a>
                                        </div>
                                </form>

                                <div class="product-inner-category">
                                    <p>Category: <a href="">Summer</a>. Tags: <a href="">awesome</a>, <a
                                            href="">best</a>, <a href="">sale</a>, <a href="">shoes</a>. </p>
                                </div>

                                <div role="tabpanel">
                                    <ul class="product-tab" role="tablist">
                                        <li role="presentation" class="active"><a href="#home" aria-controls="home"
                                                                                  role="tab" data-toggle="tab">Description</a>
                                        </li>
                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab"
                                                                   data-toggle="tab">Reviews</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade in active" id="home">
                                            <%--                                            <h2>Cấu hình Điện thoại iPhone 6 Plus</h2>--%>
                                            <%--                                            <p>Màn hình: LED-backlit IPS LCD5.5"Retina HD</p>--%>
                                            <%--                                            <p>Hệ điều hành: iOS 10</p>--%>
                                            <%--                                            <p>Camera sau: 8 MP</p>--%>
                                            <%--                                            <p>Camera trước: 1.2 MP</p>--%>
                                            <%--                                            <p>Chip: Apple A8</p>--%>
                                            <%--                                            <p>RAM: 1 GB</p>--%>
                                            <%--                                            <p>Bộ nhớ trong: 32 GB</p>--%>
                                            <%--                                            <p>SIM: 1 Nano SIM</p>--%>
                                            <%--                                            <p>Pin, Sạc: 2915 mAh</p>--%>
                                            <p>${singleProduct.description}</p>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="profile">
                                            <h2>Reviews</h2>
                                            <div class="submit-review">
                                                <p><%--@declare id="name"--%><label for="name">Name</label> <input
                                                        name="name" type="text"></p>
                                                <p><%--@declare id="email"--%><label for="email">Email</label> <input
                                                        name="email" type="email">
                                                </p>
                                                <div class="rating-chooser">
                                                    <p>Your rating</p>

                                                    <div class="rating-wrap-post">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                </div>
                                                <p><%--@declare id="review"--%><label for="review">Your review</label>
                                                    <textarea name="review" id=""
                                                              cols="30"
                                                              rows="10"></textarea>
                                                </p>
                                                <p><input type="submit" value="Submit"></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                    <div class="related-products-wrapper">
                        <h2 class="related-products-title">Related Products</h2>
                        <div class="related-products-carousel">
                            <c:forEach begin="0" end="7" items="${lastestProduct}" var="lp">
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="${lp.img}" alt="">
                                        <div class="product-hover">
                                            <a href="Cart-add?id=${lp.id}" class="add-to-cart-link"><i
                                                    class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="SingleProduct?id=${lp.id}" class="view-details-link"><i
                                                    class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="SingleProduct?id=${lp.id}">${lp.name}</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>${lp.sale_price}</ins>
                                        <del>${lp.price}</del>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


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
                        <li><a href="">Mobile Phone</a></li>
                        <li><a href="">Home accesseries</a></li>
                        <li><a href="">LED TV</a></li>
                        <li><a href="">Computer</a></li>
                        <li><a href="">Gadets</a></li>
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
    $('.add_to_cart_button').on('click', function (){
        <!--gui mot cai ajax len server de tien hanh xoa san pham-->
        //send ajax to remove product in cart
        var id =$(this).attr('pid');
        thisRow =$(this);
        $.ajax({
            url :'/Webdt/Cart-add',
            type:'POST',
            data:{
                id : id
            },
            success:function (data){
                // delete user.id;
                // var dt =$('#cart').DataTable();
                // dt.row(thisRow.parents('tr')).remove().draw();
                // loadCart(cart);
                alert("Đã thêm vào giỏ hàng");
            },
            error:function (data){
                alert("Đã thêm vào giỏ hàng");

            }
        });

    });
</script>
</body>
</html>