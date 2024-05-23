<?php ?>
	<div class="form-info float-right" id="inner-form">
		<form action="enquiries/add" method="post" class="theme-form-one">
			<h2> Quick Enquiry</h2>
			<p id="innersuccessmsg"></p>
			<div class="input-form-wrapper">
				<input type="hidden" name="enquiry_for" value="Enquiry For Contact Us">
				<input type="hidden" name="page_url" value="<?php echo $this->Html->url( null, true ); ?>">
				<input type="text" name="name" placeholder="Name*" required="">
				<input type="email" name="email" placeholder="Email*" required="">
				<input type="text" name="mobile"  onkeypress="return event.charCode >= 48 &amp;&amp; event.charCode <= 57 || event.charCode == 43 || event.charCode == 45 || event.charCode == 0" minlength="10"   maxlength="15" placeholder="Phone*" required="">
				<input type="text" name="address" placeholder="Address">
				<textarea name="message" placeholder="Message"></textarea>
				<button class="" type="submit">Submit Now &nbsp;&nbsp;<i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
			</div> 
		</form>
	</div>
	<script src="https://code.jquery.com/jquery-1.12.3.min.js"></script> 
	<script>
	$(function() {
		$("#inner-form form").on('submit', function(event) {
			
			var $form = $(this);		
			$.ajax({
				type: $form.attr('method'),
				url: $form.attr('action'),
				data: $form.serialize(),
				success: function() {
				$('#innersuccessmsg').html('Thank you for your enquiry with us, <br> Our representative will get in touch with you soon.');
				$('#innersuccessmsg').addClass('alert alert-success');
										 
				 $("#innersuccessmsg").show();
				 setTimeout(function() { $("#innersuccessmsg").hide(); }, 5000);
				 $('#inner-form form')[0].reset();		 
				
				}
			});
			event.preventDefault();		 
		});
	});
	</script>         