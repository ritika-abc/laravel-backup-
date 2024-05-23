<div class="open-title contact-form"  id="contact-form"> <h3 class="left-title">Quick Contact</h3>
 					
 <h3 id="successmsg"></h3>
 
<form id="contact" action="enquiries/add" method="post">
   <input type="hidden" name="category_id" value="<?php echo $category_id;?>" > 
   <input type="hidden" name="enquiry_for" value="Enquiry For <?php echo $category['Category']['name'];?>">	

   <input type="hidden" name="page_url" value="<?php echo $this->Html->url( null, true ); ?>"> 
     <fieldset>
      <input placeholder="Your name" type="text" tabindex="1" name="name"  required="required">
    </fieldset>
	<fieldset>
      <input placeholder="Your Company " type="text" tabindex="2" name="company">
    </fieldset>
	<fieldset>
      <input placeholder="Your Phone Number" type="tel" tabindex="3" name="mobile" required="required"> 
    </fieldset>
    <fieldset>
      <input placeholder="Your Email Address" type="email" tabindex="2" required="" name="email">
    </fieldset>
	<fieldset>
      <input placeholder="Address" type="text" tabindex="2" required="required" name="address">
    <fieldset>
	<select name="country" required="">
	<option value="">Select Country</option>   
	<?php foreach ($countries as $item): ?>
	<option value="<?php echo $item['Country']['name'];?>"><?php echo $item['Country']['name'];?></option> 
	<?php endforeach; ?>
	</select>
    </fieldset>
    <fieldset>
    <textarea placeholder="Type your Message Here...." tabindex="5" name="message"></textarea>
    </fieldset>
    <fieldset>
      <input name="submit" type="submit" id="contact-submit" data-submit="...Sending" value="Submit">
    </fieldset>
    
 
</form>
</div><br>
	  
	  				
<script src="http://code.jquery.com/jquery-1.12.3.min.js"></script>
 
<script>
$(function() { 

	$("#contact-form form").on('submit', function(event) {
		
	 
		var $form = $(this);
		
		$.ajax({
			type: $form.attr('method'),
			url: $form.attr('action'),
			data: $form.serialize(),
			success: function() {
 			$('#successmsg').html('Thank you for your enquiry with us, <br> Our representative will get in touch with you soon.');
		 	$('#successmsg').addClass(' alert alert-success');
			
			$("#contact-form").find('input[type=text],textarea,select').filter(':visible').val('');
			
			}
		});
		event.preventDefault();
		 
	});
});
</script>
 
 