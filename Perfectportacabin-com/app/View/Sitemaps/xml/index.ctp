<?php ?>
<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc><?php echo Router::url('/',true); ?></loc>
    <lastmod><?php echo date('Y-m-dTh:i:s+00:00');?></lastmod>
    <changefreq>daily</changefreq>
    <priority>1.0</priority>
  </url>			
  <url>
    <loc><?php echo Router::url('/about-us.html',true); ?></loc>
    <lastmod><?php echo date('Y-m-dTh:i:s+00:00');?></lastmod>
    <changefreq>daily</changefreq>
    <priority>0.8000</priority>
  </url>  
  <url>
    <loc><?php echo Router::url('/ayurvedic-medicine.html',true); ?></loc>
    <lastmod><?php echo date('Y-m-dTh:i:s+00:00');?></lastmod>
    <changefreq>daily</changefreq>
    <priority>0.8000</priority>
  </url>  
    <url>
    <loc><?php echo Router::url('/alternative-medicines.html',true); ?></loc>
    <lastmod><?php echo date('Y-m-dTh:i:s+00:00');?></lastmod>
    <changefreq>daily</changefreq>
    <priority>0.8000</priority>
  </url>    
   <url>
    <loc><?php echo Router::url('/herbal-medicine.html',true); ?></loc>
    <lastmod><?php echo date('Y-m-dTh:i:s+00:00');?></lastmod>
    <changefreq>daily</changefreq>
    <priority>0.8000</priority>
  </url>  
   <url>
    <loc><?php echo Router::url('/disease-indications-solutions.html',true); ?></loc>
    <lastmod><?php echo date('Y-m-dTh:i:s+00:00');?></lastmod>
    <changefreq>daily</changefreq>
    <priority>0.8000</priority>
  </url> 
  <?php foreach ($products as $product): ?>
  <url>
    <loc><?php echo Router::url('/'.$product['Product']['slug'].'.html',true); ?></loc>
    <lastmod><?php echo $product['Product']['modified']; ?></lastmod>
    <changefreq>daily</changefreq>
    <priority>0.8</priority>
  </url>  
  <?php endforeach; ?>
  <url>
    <loc><?php echo Router::url('/sitemap.html',true); ?></loc>
    <lastmod><?php echo date('Y-m-dTh:i:s+00:00');?></lastmod>
    <changefreq>daily</changefreq>
    <priority>0.8000</priority>
  </url>
  <url>
    <loc><?php echo Router::url('/blog.html',true); ?></loc>
    <lastmod><?php echo date('Y-m-dTh:i:s+00:00');?></lastmod>
    <changefreq>daily</changefreq>
    <priority>0.8000</priority>
  </url>
  <url>
    <loc><?php echo Router::url('/contact-us.html',true); ?></loc>
    <lastmod><?php echo date('Y-m-dTh:i:s+00:00');?></lastmod>
    <changefreq>daily</changefreq>
    <priority>0.8000</priority>
  </url>    
  <?php foreach ($locations as $location):?>
  <url>
    <loc><?php echo Router::url('/'.$location['Location']['slug'],true); ?></loc>
    <lastmod><?php echo $location['Location']['modified'];?></lastmod>
    <priority>0.8</priority>
	<total><?php echo count($locations);?></total>
  </url>  
<?php 

 
$location_slug = '-in-'.$location['Location']['slug'];

 foreach ($products as $product): 
?>
  <url>
    <loc><?php echo Router::url('/'.$product['Product']['slug'].$location_slug.'.html',true); ?></loc>
    <lastmod><?php echo $product['Product']['modified']; ?></lastmod>
    <changefreq>daily</changefreq>
    <priority>0.8</priority>
  </url> 
  <?php endforeach; ?>
  <?php endforeach; ?> 
    <?php 
      $exporters_slug = '-exporters';
      
       foreach ($products as $product): 
      ?>
   <url>
      <loc><?php echo Router::url('/'.$product['Product']['slug'].$exporters_slug.'.html',true); ?></loc>
      <lastmod><?php echo $product['Product']['modified']; ?></lastmod>
      <changefreq>daily</changefreq>
      <priority>0.8</priority>
   </url>
   <?php endforeach; ?>
   <?php 
      $manufacturers_slug = '-manufacturers';
      
       foreach ($products as $product): 
      ?>
   <url>
      <loc><?php echo Router::url('/'.$product['Product']['slug'].$manufacturers_slug.'.html',true); ?></loc>
      <lastmod><?php echo $product['Product']['modified']; ?></lastmod>
      <changefreq>daily</changefreq>
      <priority>0.8</priority>
   </url>
   <?php endforeach; ?>
   <?php 
      $suppliers_slug = '-suppliers';
      
       foreach ($products as $product): 
      ?>
   <url>
      <loc><?php echo Router::url('/'.$product['Product']['slug'].$suppliers_slug.'.html',true); ?></loc>
      <lastmod><?php echo $product['Product']['modified']; ?></lastmod>
      <changefreq>daily</changefreq>
      <priority>0.8</priority>
   </url>
   <?php endforeach; ?>
</urlset> 

