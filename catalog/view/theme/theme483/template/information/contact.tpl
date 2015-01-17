<?php echo $header; ?>
<?php echo $column_left; ?>
		<div class="<?php if ($column_left or $column_right) { ?>col-sm-12<?php } ?> <?php if (!$column_left & !$column_left) { ?>col-sm-12  <?php } ?> <?php if ($column_left & $column_right) { ?>col-sm-6<?php } ?>" id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	<?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact" class="form-horizontal">
	<h2 style="display:none"><?php echo $text_location; ?></h2>
	<div class="contact-info">
		<div class="content row">
			<div class="map-left col-sm-6">      
				<div class="contact-box"><i class="fa fa-home"></i><b class="green-color"><?php echo $text_address; ?></b>
					<b class="black-color"><?php echo $address; ?></b> 
				</div>
				<div class="contact-box">
					<?php if ($telephone) { ?>
					<i class="fa fa-phone"></i><b class="green-color"><?php echo $text_telephone; ?></b>
					<b class="black-color"><?php echo $telephone; ?></b> 
					<?php } ?>
				</div>
				<div class="contact-box">
					<?php if ($fax) { ?>
					<i class="fa fa-phone"></i><b class="green-color"><?php echo $text_fax; ?></b>
					<b class="black-color"><?php echo $fax; ?></b> 
					<?php } ?>
				</div>
				<div class="contact-box">
					<?php if ($text_email_add) { ?>
					<i class="fa fa-envelope"></i><b class="green-color"><?php echo $text_email; ?></b>
					<b class="black-color"><?php echo $text_email_add; ?></b> 
					<?php } ?>
				</div>
			</div>
			<div class="map-content col-sm-6">         
				<figure>
				<iframe width="100%" height="200px"  src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
				</figure>
			</div>
		</div>
	</div>
	<div class="content contact-f form-horizontal">
		<!--<h2><?php echo $text_contact; ?></h2>-->

		<div class="box-content-es">
		        <div class="row">  	
		            <div class="col-sm-12">
		                <div class="query-form-contact">
		                    <div class="status alert alert-success" style="display: none"></div>
		                    <form id="main-query-form" class="contact-form row" name="query-form" method="post">
		                        <div class="form-group-es col-md-6">
		                            <div class="row">
		                                <label class="col-md-4" for="name">Name:</label>
		                                <span class="col-md-8"><input type="text" name="name" class="form-control"></span>
		                            </div>
		                        </div>
		                        <div class="form-group-es col-md-6">
		                            <div class="row">
		                                <label class="col-md-4" for="company">Company name:</label>
		                                <span class="col-md-8"><input type="text" name="email" class="form-control"></span>
		                            </div>
		                        </div>
		                        <div class="form-group-es col-md-6">
		                            <div class="row">
		                                <label class="col-md-4" for="name">TEL:</label>
		                                <span class="col-md-8"><input type="text" name="name" class="form-control"></span>
		                            </div>
		                        </div>
		                        <div class="form-group-es col-md-6">
		                            <div class="row">
		                                <label class="col-md-4" for="company">Email:</label>
		                                <span class="col-md-8"><input type="text" name="email" class="form-control"></span>
		                            </div>
		                        </div>
		                        <div class="form-group-es col-md-12">
		                            <div class="row">
		                                <label class="col-md-2" for="messages" style="width:19.5%">MESSAGES:</label>
		                                <span class="col-md-10" style="width:80.5%"><textarea name="message" id="message" class="form-control" rows="10"></textarea></span>
		                            </div>
		                        </div>                        
		                        <div class="form-group-es col-md-12">
		                            <input type="submit" name="submit" class="btn pull-right" value="SUBMIT">
		                        </div>
		                    </form>
		                </div>
		            </div>
			</div> 
		  </div> <!-- end box-content -->




		<!-- <div class="form-group">
			<label class="control-label col-sm-5" ><?php //echo $entry_name; ?></label>
			<div class="col-sm-7">
				<input  type="text" name="name" value="<?php// echo $name; ?>" />
				<?php //if ($error_name) { ?>
				<span class="error help-block"><?php //echo $error_name; ?></span>
				<?php //} ?>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-5" ><?php //echo $entry_email; ?></label>
			<div class="controls col-sm-7">
				<input  type="text" name="email" value="<?php //echo $email; ?>" />
				<?php //if ($error_email) { ?>
				<span class="error help-block"><?php //echo $error_email; ?></span>
				<?php //} ?>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-5" ><?php //echo $entry_enquiry; ?></label>
			<div class="controls col-sm-7">
				<textarea  name="enquiry" cols="40" rows="10" ><?php //echo $enquiry; ?></textarea>
				<?php //if ($error_enquiry) { ?>
				<span class="error help-block"><?php //echo $error_enquiry; ?></span>
				<?php //} ?>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-5" ><?php //echo $entry_captcha; ?></label>
			<div class="controls col-sm-7">
				<input type="text" class="capcha" name="captcha" value="<?php //echo $captcha; ?>" />
				<div class="captcha"><img src="index.php?route=information/contact/captcha" alt="" /></div>
				<?php //if ($error_captcha) { ?>
				<span class="error help-block"><?php //echo $error_captcha; ?></span>
				<?php // } ?>
				<div class="buttons"><a onclick="$('#contact').submit();" class="button"><span><?php //echo $button_continue; ?></span></a></div>
			</div>
		</div> -->
	</div>
</form>
	<?php //echo $content_bottom; ?></div>

<?php //echo $column_right; ?>

<?php echo $footer; ?>