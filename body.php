    
   <div class="main main-raised"> 
        <div class="container mainn-raised" style="width:100%;">

  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
   

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active w-100 h-70">
        <img src="img/banner/thebanner1.jpg"  style="width:100%;">
        
      </div>

      <div class="item">
        <img src="img/banner/thebanner3.jpg" style="width:100%;">
        
      </div>
    
      <div class="item">
        <img src="img/banner/thebanner2.jpg"  style="width:100%;">
        
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control _26sdfg" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only" >Previous</span>
    </a>
    <a class="right carousel-control _26sdfg" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
     


		<!-- SECTION -->
		<div class="section mainn mainn-raised">
		
		
			<!-- container -->
			<div class="container">
			
				<!-- row -->
				<div class="row w-5 h-3">
					
					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<a href="store.php"><div class="shop">
							<div class="shop-img">
								<img src="./img/thephones.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Bikes<br>Collection</h3>
								<a href="store.php?" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div></a>
					</div>
					<!-- /shop -->
					<div class="col-md-4 col-xs-6"></div>
					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<a href="store.php"><div class="shop">
							<div class="shop-img">
								<img src="./img/thebikeparts.jpg" alt="">
							</div>
							<div class="shop-body">
								<h3>Parts<br>Collection</h3>
								<a href="product.php?p=25" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
							</div>
							
					 </div></a>
					</div>
					<!-- /shop -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
		  
		

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">New Products</h3>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12 mainn mainn-raised">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab1" class="tab-pane active">
									<div class="products-slick" data-nav="#slick-nav-1" >
									
									<?php
                    include 'db.php';
								
                    
					$product_query = "SELECT * FROM products,categories WHERE product_cat=cat_id AND product_id BETWEEN 7 AND 14";
                $run_query = mysqli_query($con,$product_query);
                if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $pro_id    = $row['product_id'];
                        $pro_cat   = $row['product_cat'];
                        $pro_brand = $row['product_brand'];
                        $pro_title = $row['product_title'];
                        $pro_price = $row['product_price'];
                        $pro_image = $row['product_image'];

                        $cat_name = $row["cat_title"];

                        echo "
				
                        
                                
								<div class='product'>
									<a href='product.php?p=$pro_id'><div class='product-img'>
										<img src='product_images/$pro_image' style='max-height: 170px;' alt=''>
									</div></a>
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
										<h4 class='product-price header-cart-item-info'>&euro; $pro_price</h4>
										
										<div class='product-rating'>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
										</div>
									</div>
									<div class='add-to-cart'>
										<button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> add to cart</button>
									</div>
								</div>
                               
							
                        
			";
		}
        ;
      
}
?>
										<!-- product -->
										
	
										<!-- /product -->
										
										
										<!-- /product -->
									</div>
									<div id="slick-nav-1" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
		

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">Top selling</h3>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12 mainn mainn-raised">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab2" class="tab-pane fade in active">
									<div class="products-slick" data-nav="#slick-nav-2">
										<!-- product -->
										<?php
                    include 'db.php';
								
                    
					$product_query = "SELECT * FROM products,categories WHERE product_cat=cat_id AND product_id BETWEEN 59 AND 65";
                $run_query = mysqli_query($con,$product_query);
                if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $pro_id    = $row['product_id'];
                        $pro_cat   = $row['product_cat'];
                        $pro_brand = $row['product_brand'];
                        $pro_title = $row['product_title'];
                        $pro_price = $row['product_price'];
                        $pro_image = $row['product_image'];

                        $cat_name = $row["cat_title"];

                        echo "
				
                        
                                
								<div class='product'>
									<a href='product.php?p=$pro_id'><div class='product-img'>
										<img src='product_images/$pro_image' style='max-height: 170px;' alt=''>
										
									</div></a>
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
										<h4 class='product-price header-cart-item-info'>&euro; $pro_price</h4>
										<div class='product-rating'>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
											<i class='fa fa-star'></i>
										</div>
										
									</div>
									<div class='add-to-cart'>
										<button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> add to cart</button>
									</div>
								</div>
                               
							
                        
			";
		}
        ;
      
}
?>
										
										<!-- /product -->
									</div>
									<div id="slick-nav-2" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- /Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Top selling</h4>
							<div class="section-nav">
								<div id="slick-nav-3" class="products-slick-nav"></div>
							</div>
						</div>
						

						<div class="products-widget-slick" data-nav="#slick-nav-3">
							<div id="get_product_home">
								<!-- product widget -->
								
								<!-- product widget -->
							</div>

							<div id="get_product_home2">
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/KONA6.jpg" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Bikes</p>
										<h3 class="product-name"><a href="product.php?p=9">SHONKY</a></h3>
										<h4 class="product-price">&euro;1249</h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/KONA5.jpg" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Bikes</p>
										<h3 class="product-name"><a href="product.php?p=8">UNIT X</a></h3>
										<h4 class="product-price">&euro;1149</h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/KONA4.jpg" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Bikes</p>
										<h3 class="product-name"><a href="product.php?p=7">FIRE MOUNTAIN</a></h3>
										<h4 class="product-price">&euro;799</h4>
									</div>
								</div>
								<!-- product widget -->
							</div>
						</div>
					</div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Top selling</h4>
							<div class="section-nav">
								<div id="slick-nav-4" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-4">
							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/cube4.jpg" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Bikes</p>
										<h3 class="product-name"><a href="product.php?p=14">KATHIMANDU HYBRID EXC 625</a></h3>
										<h4 class="product-price">&euro;629</h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/cube2.jpg" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Bikes</p>
										<h3 class="product-name"><a href="product.php?p=12">REACTION HYBRID PERFORMANCE 625 ALLROAD</a></h3>
										<h4 class="product-price">&euro;419</h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/cube3.jpg" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Bikes</p>
										<h3 class="product-name"><a href="product.php?p=13">SUPREME SPORT HYBRID EXC 625</a></h3>
										<h4 class="product-price">&euro;450</h4>
									</div>
								</div>
								<!-- product widget -->
							</div>

							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/trek2.webp" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Bikes</p>
										<h3 class="product-name"><a href="product.php?p=16">Slash 9.9 XX1 AXS Flight Attendant</a></h3>
										<h4 class="product-price">&euro;599</h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/merida.jpg" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Bikes</p>
										<h3 class="product-name"><a href="product.php?p=17">SCULTURA TEAM</a></h3>
										<h4 class="product-price">&euro;151</h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/specialized.webp" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Bikes</p>
										<h3 class="product-name"><a href="product.php?p=18">Demo Expert</a></h3>
										<h4 class="product-price">&euro;369</h4>
									</div>
								</div>
								<!-- product widget -->
							</div>
						</div>
					</div>

					<div class="clearfix visible-sm visible-xs">
					    
					</div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Top selling</h4>
							<div class="section-nav">
								<div id="slick-nav-5" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-5">
							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/railXTR.webp" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Bikes</p>
										<h3 class="product-name"><a href="product.php?p=1">Rail 9.9 XTR</a></h3>
										<h4 class="product-price">&euro;435 </h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/trek3.jpg" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Bikes</p>
										<h3 class="product-name"><a href="product.php?p=21">Bontrager Aeolus RSL 62 TLR Disc Road Wheel</a></h3>
										<h4 class="product-price">&euro;179 </h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/kona7.jpg" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Gadgets</p>
										<h3 class="product-name"><a href="product.php?p=23">KONA STRAPS</a></h3>
										<h4 class="product-price">&euro;55</h4>
									</div>
								</div>
								<!-- product widget -->
							</div>

							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/scott3.jpg" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">Gadgets</p>
										<h3 class="product-name"><a href="product.php?p=25">SYNCROS IS52/31.8 - IS52/42 HEADSET</a></h3>
										<h4 class="product-price">&euro;55</h4>
									</div>
								</div>
								<!-- /product widget -->
								

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/scott4.jpg" alt="">
									</div>
									<div class="product-body">
										<p class="product-category"></p>
										<h3 class="product-name"><a href="product.php?p=29">SYNCROS BELCARRA R SL, CHANNEL SADDLE
</a></h3>
										<h4 class="product-price">&euro;10</h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./product_images/scott5.jpg" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">POWERBANKS</p>
										<h3 class="product-name"><a href="product.php?p=30">SYNCROS TOP CAP COMP. MOUNT MTB DC
</a></h3>
										<h4 class="product-price">&euro;14</h4>
									</div>
								</div>
								<!-- product widget -->
							</div>
						</div>
					</div>

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
</div>
		