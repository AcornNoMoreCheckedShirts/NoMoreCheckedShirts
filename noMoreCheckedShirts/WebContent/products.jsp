<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>No More Checked Shirts</title>
	<jsp:include page="commom/StyleScript.jsp"/>
	<!-- the jScrollPane script -->
	<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
	<script type="text/javascript" id="sourcecode">
		$(function() {
			$('.scroll-pane').jScrollPane();
		});
	</script>
	<!-- //the jScrollPane script -->
	<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
	<!-- the mousewheel plugin -->
	<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
</head>
<body>
	<%-- header include --%>
	<jsp:include page="commom/header.jsp"/>

	<div class="content">
		<div class="product-model">	 
			<div class="container">
				<h2>상품 목록</h2>			
				<div class="col-md-9 product-model-sec">
					<%-- 세트 상품 리스트를 나열한다. --%>
					<c:forEach var="dto" items="${setList}">
					<div class="product-grid">
						<a href="products.html?taget=${dto.scode}">
							<div class="more-product"><span> </span></div>
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="${dto.img}" class="img-responsive" alt="">
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
										<button> + </button>
									</h4>
								</div>
							</div>
						</a>		
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${dto.name}</h4>								
								<span class="item_price">${dto.price}</span>
								<input type="text" class="item_quantity" value="1" />
								<input type="button" class="item_add items" value="+">
								<div class="clearfix"> </div>
							</div>												
						</div>
					</div>
					</c:forEach>
					<%-- 세트 상품 리스트를 나열끝. --%>
				</div>	
				<div class="rsidebar span_1_of_left">
					<section  class="sky-form">
						<div class="product_right">
							<h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories</h4>
							<div class="tab1">
								<ul class="place">								
									<li class="sort">All Clothing</li>
									<li class="by"><img src="images/do.png" alt=""></li>
									<div class="clearfix"> </div>
								</ul>
								<div class="single-bottom">						
									<a href="#"><p>Sports</p></a>
									<a href="#"><p>Gym</p></a>
									<a href="#"><p>Bikins</p></a>
									<a href="#"><p>shorts</p></a>
								</div>
							</div>						  
							<div class="tab2">
								<ul class="place">								
									<li class="sort">All women Clothing</li>
									<li class="by"><img src="images/do.png" alt=""></li>
									<div class="clearfix"> </div>
								</ul>
								<div class="single-bottom">						
									<a href="#"><p>Bikins</p></a>
									<a href="#"><p>Shorts</p></a>									
								</div>
							</div>
							<div class="tab3">
								<ul class="place">								
									<li class="sort">All Men Clothing</li>
									<li class="by"><img src="images/do.png" alt=""></li>
									<div class="clearfix"> </div>
								</ul>
								<div class="single-bottom">						
									<a href="#"><p>Sports</p></a>
								</div>
							</div>
							<div class="tab4">
								<ul class="place">								
									<li class="sort">All Kids</li>
									<li class="by"><img src="images/do.png" alt=""></li>
									<div class="clearfix"> </div>
								</ul>
								<div class="single-bottom">						
									<a href="#"><p>Standing Lamps</p></a>
									<a href="#"><p>shorts</p></a>
									<a href="#"><p>Bikini</p></a>
								</div>
							</div>
							<!--script-->
							<script>
								$(document).ready(function(){
									$(".tab1 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									
									$(".tab1 ul").click(function(){
										$(".tab1 .single-bottom").slideToggle(300);
										$(".tab2 .single-bottom").hide();
										$(".tab3 .single-bottom").hide();
										$(".tab4 .single-bottom").hide();
										$(".tab5 .single-bottom").hide();
									})
									$(".tab2 ul").click(function(){
										$(".tab2 .single-bottom").slideToggle(300);
										$(".tab1 .single-bottom").hide();
										$(".tab3 .single-bottom").hide();
										$(".tab4 .single-bottom").hide();
										$(".tab5 .single-bottom").hide();
									})
									$(".tab3 ul").click(function(){
										$(".tab3 .single-bottom").slideToggle(300);
										$(".tab4 .single-bottom").hide();
										$(".tab5 .single-bottom").hide();
										$(".tab2 .single-bottom").hide();
										$(".tab1 .single-bottom").hide();
									})
									$(".tab4 ul").click(function(){
										$(".tab4 .single-bottom").slideToggle(300);
										$(".tab5 .single-bottom").hide();
										$(".tab3 .single-bottom").hide();
										$(".tab2 .single-bottom").hide();
										$(".tab1 .single-bottom").hide();
									})	
									$(".tab5 ul").click(function(){
										$(".tab5 .single-bottom").slideToggle(300);
										$(".tab4 .single-bottom").hide();
										$(".tab3 .single-bottom").hide();
										$(".tab2 .single-bottom").hide();
										$(".tab1 .single-bottom").hide();
									})	
								});
							</script>
							<!-- script -->					 
						</section>				 
						
						<section  class="sky-form">
							<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Price</h4>
							<ul class="dropdown-menu1">
								<li><a href="">								               
									<div id="slider-range"></div>							
									<input type="text" id="amount" style="border: 0; font-weight: NORMAL;   font-family: 'Dosis-Regular';" />
								</a></li>			
							</ul>
						</section>
						<!---->
						<script type="text/javascript" src="js/jquery-ui.min.js"></script>
						<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
							<script type='text/javascript'>//<![CDATA[ 
								$(window).load(function(){
									$( "#slider-range" ).slider({
										range: true,
										min: 0,
										max: 100000,
										values: [ 500, 100000 ],
										slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
									}
								});
									$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

							});//]]> 
						</script>
						<!---->
						
						<section  class="sky-form">
							<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Type</h4>
							<div class="row row1 scroll-pane">
								<div class="col col-4">
									<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Alla (30)</label>
								</div>
								<div class="col col-4">
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Amante   (30)</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Roxy      (30)</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>River Land        (30)</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Penny  (30)</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>N-Gal  (30)</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Penny  (30)</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>N-Gal  (30)</label>
								</div>
							</div>
						</section>
						<section  class="sky-form">
							<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Brand</h4>
							<div class="row row1 scroll-pane">
								<div class="col col-4">
									<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Everyday</label>
								</div>
								<div class="col col-4">
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Dorothy Perkins</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Vero Moda </label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Nidhi Munim</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Omana Fashion</label>
									<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>PrettySecrets</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Gold Medal</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Dorothy Perkins</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Vero Moda </label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Nidhi Munim</label>
								</div>
							</div>
						</section>				   
					</div>				 
				</div>
			</div>
		</div>
		<!---->
	</div>

	<%-- footer include --%>
	<jsp:include page="commom/footer.jsp" />
</body>
</html>