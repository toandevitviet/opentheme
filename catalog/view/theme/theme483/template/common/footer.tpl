<div class="clear"></div>
</div>
</div>
</div>
<div class="clear"></div>
</section>
<!-- Footer -->
<footer>
	<div class="container">
		<div class="row">
			<?php if ($informations) { ?>
			<div class="col-sm-2">
				<div class="block">
					<div class="block-heading">
						<?php echo $text_information; ?>
					</div>
					<div class="block-content">
						<ul>
							<?php foreach ($informations as $information) { ?>
							<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
							<?php } ?>
						</ul>
					</div>
				</div>
			</div>
			<?php } ?>
			<div class="col-sm-2">
				<div class="block">
					<div class="block-heading">
						<?php echo $text_service; ?>
					</div>
					<div class="block-content">
						<ul>
							<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
							<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
							<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="block">
					<div class="block-heading">
						<?php echo $text_extra; ?>
					</div>
					<div class="block-content">
						<ul>
							<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
							<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
							<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
							<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="block">
					<div class="block-heading">
						<?php echo $text_account; ?>
					</div>
					<div class="block-content">
						<ul>
							<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
							<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
							<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
							<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="block">
					<div class="block-heading">
						<?php echo $text_follow; ?>
					</div>
					<div class="block-content">
						<ul>
							<li><a href="http://facebook.com"><?php echo $text_fb; ?></a></li>
							<li><a href="http://twitter.com"><?php echo $text_twi; ?></a></li>
							<li><a href="#"><?php echo $text_rss; ?></a></li>
							<li><a href="http://youtube.com"><?php echo $text_yt; ?></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="block">
					<div class="block-heading">
						<?php echo $text_support; ?>
					</div>
					<div class="block-content">
						<div class="foot-phone">
							<i class="fa fa-phone"></i>
							<div class="right">
								<div><?php echo $telephone; ?></div>
								<div><?php echo $fax; ?></div>
							</div>
						</div>
					</div>
				</div>
			</div>			
		</div>
	</div>
	<div id="copyright">
		<!-- copyright -->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<?php echo $powered; ?><!-- [[%FOOTER_LINK]] -->
				</div>
			</div>
		</div>
	</div>
</footer>
<script type="text/javascript" 	src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/js/livesearch.js"></script>
</div>
</div>
</div>
</body></html>