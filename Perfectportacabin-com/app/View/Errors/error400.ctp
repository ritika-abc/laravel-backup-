<?php ?>
   <section class="common-banner">
      <div class="container">
         <h1>404 Page</h1>
         <ul>
            <li><a href="<?php echo $this->webroot; ?>" title="Home"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
            <li>/</li>
            <li>404 Page</li>
         </ul>
      </div>
   </section>

   <section class="sitemap">
      <div class="container">
         <div class="row">
            <div class="co-lg-9 col-md-9 col-sm-9 col-xs-12 sitemap-list">
               <br>
               <h2 class="error">
               <?php printf(
               __d('cake', 'This page doesn’t exist in our website.'),
               "<strong>'{$url}'</strong>"
               ); ?>
               <br> 
               </h2>
               <br> 
               <br> 
               <h3>You can still browse our products – <a href="our-products.html" style="color:#f83800;">View Products</a></h3>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 form-side">
               <?php echo $this->element('jenish/inner_enquiry'); ?>
            </div>
         </div>
      </div>
   </section>
