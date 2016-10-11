<%@page import="com.model.entity.Category"%>
<%@page import="com.model.entity.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.model.service.CategoryService"%>
<%@page import="com.model.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
ProductService productService = new ProductService();
CategoryService categoryService = new CategoryService();

List<Product> listAllProduct = productService.getAllProduct();
List<Category> listAllCategory = categoryService.getAllCategory();

%>
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Wines a Hotels and Restaurants</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }>
</script>
<meta name="keywords" content="Wines Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroidCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!--Google Fonts-->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
<!-- //end-smoth-scrolling -->
</head>
<body>
<!--banner start here-->
<div class="banner-1">
	  <div class="container">
  <!--header start here-->
	 <div class="header">
			
				<div class="logo">
					<h1><a href="index.jsp">WINES</a></h1>
				</div>
					<nav class="navbar navbar-default">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<!--/.navbar-header-->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="index.jsp">Home</a></li>
								<li><a href="about.jsp">About</a></li>
								<li><a href="wines.jsp">Wines</a></li>
								<li class="active"><a href="products.jsp">Products</a></li>
								<li><a href="contact.jsp">Contact</a></li>
							</ul>
						</div>
						<!--/.navbar-collapse-->
					</nav>
				<div class="search-box">
					<div id="sb-search" class="sb-search">
						<form action="#" method="post">
							<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
							<input class="sb-search-submit" type="submit" value="">
							<span class="sb-icon-search"> </span>
							</form>
					</div>
				</div>
					<div class="clearfix"> </div>

				<!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
					<script>
						new UISearch( document.getElementById( 'sb-search' ) );
					</script>
				<!-- //search-scripts -->

			
		</div>
<!--header end here-->

</div>
</div>
<!--banner end here-->
<!--products-->
<div class="services w3l-4">
					<div class="container">
						<h2>Our Products</h2>
						<div class="services-grids w3ls-4">
						<%
						long ran;
						String img;
						for (int i = 0; i < listAllProduct.size(); i++) {
						%>
							<div class="col-md-4 services-grid">
								<a href="SingleProductServlet?productId=<%=listAllProduct.get(i).getProductId() %>" class="mask">					
									<img src=<%=listAllProduct.get(i).getProductImage() %> class="img-responsive zoom-img" alt="">
								</a>							
								<h4><%=listAllProduct.get(i).getProductName() %></h4>
								<p><%=listAllProduct.get(i).getProductDescribe() %>.</p><br>
							</div>
							<br>
						<%	
						}
						%>
							<div class="clearfix"></div>
					   </div>
					   
				</div>
			</div>
<!--products-->
<!--footer-->
<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-3 footer-grid">
					<h3>Extras</h3>
					<p>Ut rutrum neque a mollis laoreet diam enim feuiat dui nec ulacoper quam felis id diam. Nunc ut tortor ligula eu petiu Pelleesque .</p>
				</div>
				<div class="col-md-3 footer-grid">
					<h3>Useful Info</h3>
					<ul>
						<li><a href="singlepage.jsp">Hendrerit quam</a></li>
						<li><a href="singlepage.jsp">Amet consectetur </a></li>
						<li><a href="singlepage.jsp">Iquam hendrerit</a></li>
						<li><a href="singlepage.jsp">Hendrerit quam</a></li>
						<li><a href="singlepage.jsp">Amet consectetur </a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h3>Social</h3>
					<ul class="social-icons1">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h3>Contact Us</h3>
					<p>Pelleesque conquat dignissim lacus quis altrcies.</p>
					<div class="footer-grid-address">
						<p>Tel.800-255-9999</p>
						<p>Fax: 1234 568</p>
						<p>Email: <a class="email-link" href="mailto:info@example.com">Example.com</a></p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="copy-right">
				<p>© 2016 Wines. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
				<p>© 2016 Wines. All rights reserved | Code by <a href="http://www.nguyenductamlhp.com">nguyenductamlhp</a></p>
			</div>
		</div>
	</div>
<!--footer-->
</body>
</html>