<urlset xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
	<url>
		<loc><?php echo Router::url('/',true); ?></loc>
		<lastmod><?php echo date('Y-m-dTh:i:s+00:00');?></lastmod>
		<changefreq>daily</changefreq>
		<priority>1.0</priority>
	</url>
 	<?php foreach ($locations as $location):?>
	<url>	
		<loc><?php echo Router::url('/'.$location['Location']['slug'],true); ?></loc>
		<lastmod><?php echo $location['Location']['modified'];?></lastmod>
		<priority>0.8</priority>
	</url>
	<?php endforeach; ?>
 	<?php foreach ($products as $product):?>
	<url>
		<loc><?php echo Router::url('/agra/'.$product['Product']['slug'].'.html',true); ?></loc>
		<lastmod><?php echo $product['Product']['modified']; ?></lastmod>
		<changefreq>daily</changefreq>
		<priority>0.8</priority>
	</url>
	<?php endforeach; ?>
</urlset>