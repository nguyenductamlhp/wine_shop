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
<!--JS for animate-->
	<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
	<script src="js/wow.min.js"></script>
		<script>
			new WOW().init();
		</script>
	<!--//end-animate-->
</head>
<body>
<!--banner start here-->
<div class="banner">
	  <div class="container">
	 <div class="header">
			
				<div class="logo wow fadeInLeft animated" data-wow-delay=".5s">
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
							<ul class="nav navbar-nav animated wow fadeInUp animated animated" data-wow-duration="1200ms" data-wow-delay="500ms">
								<li class="active"><a href="index.jsp">Home</a></li>
								<li><a href="about.jsp">About</a></li>
								<li><a href="wines.jsp">Wines</a></li>
								<li><a href="products.jsp">Products</a></li>
								<li><a href="contact.jsp">Contact</a></li>
							</ul>
						</div>
						<!--/.navbar-collapse-->
					</nav>
				<div class="search-box">
					<div id="sb-search" class="sb-search wow fadeInRight animated" data-wow-delay=".5s">
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
 	<div class="banner-main">

	  <section class="slider">
           <div class="flexslider">
             <ul class="slides">
				   <li>
				   <img src="images/4444.png" class="img-responsive" alt="">
				   <h3>At vero eos et accusamus </h3>
					<p> ducimus qui blanditiis praesentium voluptatum atque corrupti quos dolores deleniti atque corrupti quos dolores et quas.</p>
				   </li>
				   <li>
				    <img src="images/5555.png" class="img-responsive" alt="">
				   <h3>Accusamus et iusto odio </h3>
					<p> ducimus qui blanditiis praesentium atque corrupti quos dolores voluptatum deleniti atque corrupti quos dolores et quas.</p>
				   </li>
				   <li>
				    <img src="images/4444.png" class="img-responsive" alt="">
				   <h3>Et accusamus et iusto </h3>
					<p> ducimus qui blanditiis praesentium voluptatum atque corrupti quos dolores deleniti atque corrupti quos dolores et quas.</p>
				   </li>
          </ul>
        </div>
      </section>
	
	</div>

<!--FlexSlider-->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
</div>
</div>
<!--banner end here-->
<!--welcome-->
<div class="welcome w3l">
			<div class="container">
			<h3>welcome</h3>
				<div class="welcome-grids">
					<div class="col-md-4 welcome-grid wow fadeInLeft animated" data-wow-delay=".5s">
						<div class="wel1 hvr-bounce-to-bottom">
						<span class="glyphicon glyphicon-glass" aria-hidden="true"></span>
						<h4>famous wines</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin ultricies vestibulum velit.Lorem ipsum dolor sit amet.</p>
					</div>
					</div>
					<div class="col-md-4 welcome-grid animated wow fadeInUp animated animated" data-wow-duration="1200ms" data-wow-delay="500ms">
						<div class="wel2 hvr-bounce-to-bottom">
						<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
						<h4>featured persons</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin ultricies vestibulum velit.Lorem ipsum dolor sit amet.</p>
						</div>
						</div>
					<div class="col-md-4 welcome-grid wow fadeInRight animated" data-wow-delay=".5s">
							
					<div class="wel3 hvr-bounce-to-bottom">
						<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
						<h4>persons liked</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisc elit. Proin ultricies vestibulum velit.Lorem ipsum dolor sit amet.</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
<!--welcome-->
<!--admission-->
<div class="admission w3ls">
	   <div class="container">
	   	 <div class="faculty_top">
	   	 <%
	   	 for (int i = 0; i < 9; i++) {
	   	 %>
	   	 	<div class="col-md-4 faculty_grid wow fadeInLeft animated" data-wow-delay=".5s">
		   	  	<figure class="team_member">
		   	  		<img src="<%=listAllProduct.get(i).getProductImage()%>" class="img-responsive wp-post-image" alt="<%= listAllProduct.get(i).getProductName()%>">
		   	  		<div></div>
		   	  		<figcaption><h3 class="person-title"><a href="singlepage.jsp">Wines</a></h3>
		   	  			<span class="person-deg"><%=listAllProduct.get(i).getProductName() %></span>
		   	  			<p><a href="SingleProductServlet?productId=<%=listAllProduct.get(i).getProductId()%>"><%=listAllProduct.get(i).getProductDescribe() %></a></p>
		   	  			<p><% %>Years</p>
		   	  	   </figcaption>
		   	  	</figure>
		   	  </div>	
	   	 <%	 
	   	 }
	   	 %>
	   	  <div class="clearfix"> </div>
	   	 </div>
	  </div>
	</div>
<!--admission-->
<!--content-middle-->
		<div class="content-middle wthree">
			<div class="container">
				<div class="mid-content wow fadeInRight animated" data-wow-delay=".5s">
					<h3>the best features</h3>
					<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
					<a class="hvr-sweep-to-right more-in" href="singlepage.jsp">Read More</a>
				</div>
			</div>
		</div>
<!--content-middle-->
<!--events-->
<div class="events agile">
		<div class="container">
			<div class="events-grids">
				<div class="col-md-6 events-left wow fadeInLeft animated" data-wow-delay=".5s">
					<h3>Voluptatemut enim</h3>
					<h5>Magnam aliquam quaerat voluptatemut enim minima veniam, quis nostrum .</h5>
					<p>There are many variations of passages of Lorem Ipsum available, but the majority have, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum </p>
				</div>
				<div class="col-md-6 events-right wow fadeInRight animated" data-wow-delay=".5s">	
					<h3>Upcoming Events</h3>
					<ul>
						<li><a href="singlepage.jsp">Donec quam lscele lorem Ipsum .</a></li>
						<li><a href="singlepage.jsp">Etiam volutpatbh lorem Ipsum </a></li>
						<li><a href="singlepage.jsp">Varius lorem Ipsum available .</a></li>
						<li><a href="singlepage.jsp">Donec Lorem Ipsum available .</a></li>
						<li><a href="singlepage.jsp">Etiam volutpatbh Lorem Ipsum .</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="bnr-galry">
				<div class="col-md-6 bnr-galry-left wow fadeInLeft animated" data-wow-delay=".5s">
					<a href="singlepage.jsp" class="mask">					
						<img src="images/4.jpg" class="img-responsive zoom-img" alt="">
					</a>
				</div>
				<div class="col-md-6 bnr-galry-right wow fadeInRight animated" data-wow-delay=".5s">
					<a href="singlepage.jsp" class="mask">					
						<img src="images/10.jpg" class="img-responsive zoom-img" alt="">
					</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
<!--events-->
<!--footer-->
<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-3 footer-grid wow fadeInLeft animated" data-wow-delay=".5s">
					<h3>Extras</h3>
					<p>Ut rutrum neque a mollis laoreet diam enim feuiat dui nec ulacoper quam felis id diam. Nunc ut tortor ligula eu petiu Pelleesque .</p>
				</div>
				<div class="col-md-3 footer-grid animated wow fadeInUp animated animated" data-wow-duration="1200ms" data-wow-delay="500ms">
					<h3>Useful Info</h3>
					<ul>
						<li><a href="singlepage.jsp">Hendrerit quam</a></li>
						<li><a href="singlepage.jsp">Amet consectetur </a></li>
						<li><a href="singlepage.jsp">Iquam hendrerit</a></li>
						<li><a href="singlepage.jsp">Hendrerit quam</a></li>
						<li><a href="singlepage.jsp">Amet consectetur </a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid animated wow fadeInUp animated animated" data-wow-duration="1200ms" data-wow-delay="500ms">
					<h3>Social</h3>
					<ul class="social-icons1">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid wow fadeInRight animated" data-wow-delay=".5s">
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
			<div class="copy-right animated wow fadeInUp animated animated" data-wow-duration="1200ms" data-wow-delay="500ms">
				<p>© 2016 Wines. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
				<p>© 2016 Wines. All rights reserved | Code by <a href="http://www.nguyenductamlhp.com">nguyenductamlhp</a></p>
			</div>
		</div>
	</div>
<!--footer-->
</body>
</html>