<!-- Add new block here -->
<div class="box newquery">
  <div class="box-heading">
    Submit your enquries here !
  </div><!-- end box-heading --> 
  <div class="box-content">
        <div class="row">  	
            <div class="col-sm-12">
                <div class="query-form">
                    <div class="status alert alert-success" style="display: none"></div>
                    <form id="main-query-form" class="contact-form row" name="query-form" method="post">
                        <div class="form-group col-md-6">
                            <div class="row">
                                <label class="col-md-4" for="name">Name:</label>
                                <span class="col-md-8"><input type="text" name="name" class="form-control"></span>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="row">
                                <label class="col-md-4" for="company">Company name:</label>
                                <span class="col-md-8"><input type="text" name="email" class="form-control"></span>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="row">
                                <label class="col-md-4" for="name">TEL:</label>
                                <span class="col-md-8"><input type="text" name="name" class="form-control"></span>
                            </div>
                        </div>
                        <div class="form-group col-md-6">
                            <div class="row">
                                <label class="col-md-4" for="company">Email:</label>
                                <span class="col-md-8"><input type="text" name="email" class="form-control"></span>
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <div class="row">
                                <label class="col-md-2" for="messages" style="width:17.5%">MESSAGES:</label>
                                <span class="col-md-10" style="width:82.5%"><textarea name="message" id="message" class="form-control" rows="10"></textarea></span>
                            </div>
                        </div>                        
                        <div class="form-group col-md-12">
                            <input type="submit" name="submit" class="btn pull-right" value="SUBMIT">
                        </div>
                    </form>
                </div>
            </div>
	</div> 
  </div> <!-- end box-content -->
</div> 

<script type="text/javascript">
	if ($('body').width() > 767) {
		(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
	$(window).load(function(){
		if($(".maxheight-feat").length){
		$(".maxheight-feat").equalHeights()}
	});
	};
</script>
<div class="box featured">
  <div class="box-heading">
      <div class="row">
          <div class="col-sm-8">
            <?php echo $heading_title; ?>
          </div>
          <div class="col-sm-4 featured-seemore">
              <a class="" href="#">See more >>></a>
          </div>
      </div>
  </div>
  <div class="box-content">
	<div class="box-product">
		<ul class="row">
		  <?php $i=0; foreach ($products as $product) { $i++ ?>
		  <?php 
			   $perLine = 4;
			   //$spanLine = 3;
                           $spanLine = 4;
			   
                            $last_line = "";
					$total = count($products);
					$totModule = $total%$perLine;
					if ($totModule == 0)  { $totModule = $perLine;}
					if ( $i > $total - $totModule) { $last_line = " last_line";}
					if ($i%$perLine==1) {
						$a='first-in-line';						
					}
					elseif ($i%$perLine==0) {
						$a='last-in-line';
					}
					else {
						$a='';
					}
				?>
			<li class="<?php echo $a. $last_line ;?> col-sm-<?php echo $spanLine ;?>">
				<script type="text/javascript">
				$(document).ready(function(){
					$("a.colorbox<?php echo $i?>").colorbox({
					rel: 'colorbox',
					inline:true,
					html: true,
					width:'58%',
					maxWidth:'780px',
					height:'70%',
					open:false,
					returnFocus:false,
					fixed: true,
					title: false,
					href:'.quick-view<?php echo $i;?>',
					current:'<?php echo $text_product; ?>'
					});
					});
				</script> 
				<div class="padding">
				<!-- Product image -->
				<div class="product_image image2">
					<a href="<?php echo $product['href']; ?>"><?php if ($product['thumb']) { ?><img id="img_<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /><?php } else{ ?><img src="catalog/view/theme/theme483/image/no-image.png" alt="" /><?php } ?></a>
				</div>
				
				<!-- Product quick view -->
				<div style="display:none;">
					<div  class="quick-view<?php echo $i;?> preview">
						<div class="wrapper marg row">
							<?php if ($product['thumb1']) { ?>
							<div class="left col-sm-4">
								<div class="product_image image3">
									<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb1']; ?>" alt="<?php echo $product['name']; ?>" /></a>
								</div>								
							</div>
							<div class="right col-sm-8"><?php } else { ?><div class="left col-sm-12"><?php } ?>
								<h2><?php echo $product['name']; ?></h2>
								<div class="inf">
									<?php if ($product['author']) {?>
										<span class="product_manufacture manufacture"><?php echo $text_manufacturer; ?> <a href="<?php echo $product['manufacturers'];?>"><?php echo $product['author']; ?></a></span>
									<?php }?>
									<?php if ($product['model']) {?>
										<span class="product_model model"><?php echo $text_model; ?><?php echo $product['model']; ?></span>
									<?php }?>
									<span class="product_stock prod-stock-2"><?php echo $text_availability; ?></span>
										
										<?php
										   if ($product['text_availability'] > 0) { ?>
										 <span class="product_stock prod-stock"><?php echo $text_instock; ?></span>
										<?php } else { ?>
											   <span class="product_stock prod-stock"><?php echo $text_outstock; ?></span>
										 <?php
										 }	
										 ?>
									<?php if ($product['price']) { ?>
										<div class="product_price price">
									  <span class="text-price"><?php echo $text_price; ?></span>
									  <?php if (!$product['special']) { ?>
									  <?php echo $product['price']; ?>
									  <?php } else { ?>
									  <span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span>
									  <?php } ?>
									  
									</div>
									<?php } ?>
								</div>
								<div class="product_button">
									<div class="cart">
										<a data-id="<?php echo $product['product_id']; ?>;" title="<?php echo $button_cart; ?>" class="tooltip-1 button addToCart">
											<i class="fa fa-shopping-cart"></i>
										</a>
									</div>									
								</div>
								<div class="clear"></div>
								<?php if ( $product['rating'] ) { ?>
									<div class="product_rating rating">
										<img src="catalog/view/theme/theme483/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
									</div>
								<?php } ?>
							</div>
						</div>
						<div class="product_description description">
							<?php echo $product['description'];?>
						</div>
						
					</div>
				</div>
				<a href="<?php echo $product['href']; ?>" class="colorbox<?php echo $i;?> quick-view-button"><i class=" fa fa-search "></i></a>
				<div class="inner maxheight-feat">
					<div class="f-left">					
						<!-- product name -->
						<div class="product_name name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
						
						<!-- Product description -->
						<?php if ($product['description']) {?>
						<div class="product_description description"><?php echo mb_substr($product['description1'],0,59,'UTF-8').'...';?></div>
						<?php } ?>
					
					<!-- Product price -->
					<?php if ($product['price']) { ?>
					<div class="product_price">
						<div class="price">
							<?php if (!$product['special']) { ?>
							<?php echo $product['price']; ?>
							<?php } else { ?>
							<span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span>
							<?php } ?>
						</div>
					</div>
					<?php } ?>
					</div>
					
					<!-- Product raitng -->					
					<div class="product_rating rating"><?php if ( $product['rating'] ) { ?>
						<img src="catalog/view/theme/theme483/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /><?php } ?>
					</div>
					<div class="clear"></div>
						
					<!-- Product buttons -->
					<div class="product_button">
						<div class="cart">
							<a data-id="<?php echo $product['product_id']; ?>;" title="<?php echo $button_cart; ?>" class="tooltip-1 button addToCart">
								<i class="fa fa-shopping-cart"></i>
							</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
				</div>
			</li>
		  <?php } ?>
		</ul>
	</div>
	<div class="clear"></div>
  </div>
</div>
