<?php ?>
	<section class="our-mission">
		<div class="container">
			<div class="title-heading">
				<h2>Get To Know Us</h2>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 mission-part">
					<div class="under-inner-mission">
						<div class="single-row">
							<div class="single-icon">
								<img src="images/homepages/<?php echo $mission['Homepage']['image']; ?>"  alt="<?php echo $mission['Homepage']['name']; ?>" title="<?php echo $mission['Homepage']['name']; ?>">
							</div>
							<div class="single-content">
								<span><?php echo $mission['Homepage']['name']; ?></span>
								<p><?php echo $mission['Homepage']['description']; ?></p>
							</div>
						</div>
						<div class="single-row">
							<div class="single-icon">
								<img src="images/homepages/<?php echo $vision['Homepage']['image']; ?>"  alt="<?php echo $vision['Homepage']['name']; ?>" title="<?php echo $vision['Homepage']['name']; ?>">
							</div>
							<div class="single-content">
								<span><?php echo $vision['Homepage']['name']; ?></span>
								<p><?php echo $vision['Homepage']['description']; ?></p>
							</div>
						</div>
						<div class="single-row">
							<div class="single-icon">
								<img src="images/homepages/<?php echo $quality['Homepage']['image']; ?>"  alt="<?php echo $quality['Homepage']['name']; ?>" title="<?php echo $quality['Homepage']['name']; ?>">
							</div>
							<div class="single-content">
								<span><?php echo $quality['Homepage']['name']; ?></span>
								<p><?php echo $quality['Homepage']['description']; ?></p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 image-type">
					<img src="images/homepages/<?php echo $home_enquiry['Homepage']['image']; ?>"  alt="<?php echo $company_name; ?>" title="<?php echo $company_name; ?>">
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 form-home">
					<div class="under-home-form" id="homeenquiry-form">
						<span>Get In Touch</span>
						<p id="homeenquirysuccessmsg" class="msg"></p>
						<form action="enquiries/add" method="post">
							<input type="hidden" name="enquiry_for" value="Enquiry For Contact Us">
							<input type="hidden" name="page_url" value="<?php echo $this->Html->url( null, true ); ?>">
							<div class="field-home">
								<input type="text" name="name" placeholder="Name*" required="">
							</div>
							<div class="field-home">
								<input type="email" name="email" placeholder="Email*" required="">
							</div>
							<div class="field-home">
								<input type="text" name="mobile" onkeypress="return event.charCode >= 48 &amp;&amp; event.charCode <= 57 || event.charCode == 43 || event.charCode == 45 || event.charCode == 0" minlength="10"  maxlength="15" placeholder="Phone*" required="">
							</div>
							<div class="field-home">
								<input type="text" name="address" placeholder="Address">
							</div>
							<div class="field-home">
								<textarea name="message" placeholder="Message.."></textarea>
							</div>
							<div class="field-home-btn">
								<button type="submit">Submit Now</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		
		</div>
	</section>
	<script src="https://code.jquery.com/jquery-1.12.3.min.js"></script> 
	<script>
	$(function() {
		$("#homeenquiry-form form").on('submit', function(event) {
			
			var $form = $(this);		
			$.ajax({
				type: $form.attr('method'),
				url: $form.attr('action'),
				data: $form.serialize(),
				success: function() {
				$('#homeenquirysuccessmsg').html('Thank you for your enquiry with us, <br> Our representative will get in touch with you soon.');
				$('#homeenquirysuccessmsg').addClass('alert alert-success');
										 
				 $("#homeenquirysuccessmsg").show();
				 setTimeout(function() { $("#homeenquirysuccessmsg").hide(); }, 5000);
				 $('#homeenquiry-form form')[0].reset();		 
				
				}
			});
			event.preventDefault();		 
		});
	});
	</script> 