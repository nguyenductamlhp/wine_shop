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


long productId = 1;
if (request.getAttribute("productId") != null) {
	productId = Integer.parseInt((String)request.getAttribute("productId"));	
}
else {
	productId = Math.round(Math.random() * listAllProduct.size()) + 1;
}
Product product = productService.getProductById((int)productId);
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
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
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
								<li><a href="products.jsp">Products</a></li>
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
<!--asingle-->
<div class="single w3l-5">
		<div class="container">
				<div class="single-left1 w3ls-5">
					<img src="<%=product.getProductImage() %>" alt=" " class="img-responsive">
					<h2><%=product.getProductName() %></h2>
					<ul>
						<li><span class="glyphicon glyphicon-tag" aria-hidden="true"></span><a href="#">5 Tags</a></li>
						<li><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span><a href="#">5 Comments</a></li>
					</ul>
					<p><%=product.getProductDescribe() %></p>
				</div>
				
				<div class="comments agile-5">
					<h3>Details</h3>
					<div class="comments-grids">
						<h2>Origin: <%=product.getProductOrigin() %></h2>
						<h2>Procedure day: <%=product.getProductProdate() %></h2>
						
					</div>
				</div>
				<div class="leave-coment-form agileits-5">
					<h3>Leave Your Comment</h3>
					<form action="#" method="post">
						<input type="text" value="Name " name="name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
						<input type="email" value="Email" name="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
						<textarea type="text" name="comment" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Comment...';}" required="">Your Comment...</textarea>
						<input type="submit" value="Submit Comment">
					</form>
				</div>
			
		
		</div>
	</div>
<!--about-->
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
					<p>Please contact us by: </p>
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