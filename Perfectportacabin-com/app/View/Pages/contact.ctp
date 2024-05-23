<?php ?>
	<section class="common-banner">
		<div class="container">
			<h1>Contact Us</h1>
			<ul>
				<li><a href="<?php echo $this->webroot; ?>" title="Home"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
				<li>/</li>
				<li>Contact Us</li>
			</ul>
		</div>
	</section>

	<section class="contact-info-section">
		<div class="container">
			<div class="row ">
			
				<div class="contact-detail col-md-4 col-sm-6 col-xs-12">
					<div class="inner-box">
						<h3>Address</h3>
						<div class="text"><?php echo $company_address; ?></div>
					</div>
				</div>

				<div class="contact-detail col-md-4 col-sm-6 col-xs-12">
					<div class="inner-box">
						<h3>Phone & Email</h3>
						<div class="text">
							<ul>
								<li><a href="mailto:<?php echo $company_email; ?>" title="<?php echo $company_email; ?>"><?php echo $company_email; ?></a></li>
								<li><a href="mailto:<?php echo $company_email1; ?>" title="<?php echo $company_email1; ?>"><?php echo $company_email1; ?></a></li>
								<li><a href="tel:<?php echo $company_phone; ?>" title="<?php echo $company_phone; ?>"><?php echo $company_phone; ?></a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="contact-detail col-md-4 col-sm-6 col-xs-12">
					<div class="inner-box">
						<h3>Stay In Touch</h3>
						<div class="text">Also find us on social Media</div>
						<ul class="social-icon-four">
							<?php foreach($socialicons as $socialicon): ?>
							<li><a href="<?php echo $socialicon['Socialicon']['url']; ?>" class="fa <?php echo $socialicon['Socialicon']['iconcss']; ?>" title="<?php echo $socialicon['Socialicon']['name']; ?>" target="_blank"></a></li>
							<?php endforeach; ?>
						</ul>
					</div>
				</div>

			</div>
        </div>
    </section>
	
	<section class="contact-form-section">
		<div class="container">
			<div class="row clearfix">
				<div class="content-column col-md-5 col-sm-12 col-xs-12">
					<h2>Still Have <br> Any Question? <br> Ask Us!</h2>
					<div class="text">
						<p>We are a customer-oriented company and here in the domain to meet their diverse demands. If you need our support or have any query related to the same, fill the form or dial our number right away.</p>
					</div>
				</div>
				<div class="contact-form-column col-md-7 col-sm-12 col-xs-12">
					<h2>Contact Us</h2>
					<div class="default-form contact-form"  id="contact-form">
						<p id="contactsuccessmsg"></p>
						<form method="post" action="enquiries/add">
							<input type="hidden" name="enquiry_for" value="Enquiry For Contact Us">
							<input type="hidden" name="page_url" value="<?php echo $this->Html->url( null, true ); ?>">
							<div class="row clearfix">
								<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="form-group">
										<div class="group-inner">
											<input type="text" name="name" placeholder="Name*" required="" class="error">
										</div>
									</div>
									<div class="form-group">
										<div class="group-inner">
											<input type="email" name="email" placeholder="Email*" required="" class="error">
										</div>
									</div>
									<div class="form-group">
										<div class="group-inner">
											<input type="text" name="mobile" onkeypress="return event.charCode >= 48 &amp;&amp; event.charCode <= 57 || event.charCode == 43 || event.charCode == 45 || event.charCode == 0" minlength="10" maxlength="15" placeholder="Phone*" required="" class="error">
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">    
									<div class="form-group">
										<div class="group-inner">
											<input type="text" name="address" placeholder="Address" class="error">
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-6 col-xs-12">    
									<div class="form-group">
										<div class="group-inner">
											<textarea name="message" placeholder="Message" class="error"></textarea>
										</div>
									</div>
								</div>
								<div class="form-group col-md-12 col-xs-12">
									<button type="submit" class="theme-btn btn-style-one">Submit</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

    <section class="map">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14038.595022129504!2d77.30235445!3d28.399675!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cdc30cdc9e0a5%3A0xc657f9f8435ad908!2sNew%20Industrial%20Twp%205%2C%20New%20Industrial%20Township%2C%20Faridabad%2C%20Haryana%20121001!5e0!3m2!1sen!2sin!4v1683543120763!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>		
    </section>
	<script src="https://code.jquery.com/jquery-1.12.3.min.js"></script> 
	<script>
	$(function() {
		$("#contact-form form").on('submit', function(event) {
			
			var $form = $(this);		
			$.ajax({
				type: $form.attr('method'),
				url: $form.attr('action'),
				data: $form.serialize(),
				success: function() {
				$('#contactsuccessmsg').html('Thank you for your enquiry with us, <br> Our representative will get in touch with you soon.');
				$('#contactsuccessmsg').addClass('alert alert-success');
										 
				 $("#contactsuccessmsg").show();
				 setTimeout(function() { $("#contactsuccessmsg").hide(); }, 5000);
				 $('#contact-form form')[0].reset();		 
				
				}
			});
			event.preventDefault();		 
		});
	});
	</script>