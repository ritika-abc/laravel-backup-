<?php
/**
 * Routes configuration
 *
 * In this file, you set up routes to your controllers and their actions.
 * Routes are very important mechanism that allows you to freely connect
 * different urls to chosen controllers and their actions (functions).
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2011, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2011, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Config
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

 
    Router::parseExtensions('rss','xml');
 
	Router::connect('/sitemap', array('controller' => 'sitemaps', 'action' => 'index'));
 
 
    Router::connect('/', ['controller' => 'pages', 'action' => 'index']);
	
    Router::connect('/about-us.html', ['controller' => 'pages', 'action' => 'about_us']);
	
	Router::connect('/products.html', ['controller' => 'products', 'action' => 'index']);	
	 
	Router::connect('/alternative-medicines.html', ['controller' => 'categories', 'action' => 'view']);

    Router::connect('/ayurvedic-medicine.html', ['controller' => 'pages', 'action' => 'ayurvedic_medicine']);  
   
    Router::connect('/suppliers-category.html', ['controller' => 'catalogs', 'action' => 'suppliers']);	
	
	Router::connect('/contact-us.html', ['controller' => 'pages', 'action' => 'contact']);
	 
	Router::connect('/blog.html', ['controller' => 'blogs', 'action' => 'index']);	
	
	Router::connect('/:slug.html', ['controller' => 'webclick', 'action' => 'index'], ['pass' => ['slug']]);
	
    Router::connect('/blogs/:slug.html', ['controller' => 'blogs', 'action' => 'view'], ['pass' => ['slug']]);
	
   #Router::connect('/:slug.html', ['controller' => 'products', 'action' => 'view'], ['pass' => ['slug']]);
   
    Router::connect('/disease-indications-solutions.html', ['controller' => 'pages', 'action' => 'disease_indications_solutions']);	
	
   
	Router::connect('/our-presence.html', ['controller' => 'locations', 'action' => 'index']);	
	
	Router::connect('/manufacturers-category.html', ['controller' => 'catalogs', 'action' => 'manufacturers']);
	
    Router::connect('/exporters-category.html', ['controller' => 'catalogs', 'action' => 'exporters']);
	
	Router::connect('/exporters/:category.html', ['controller' => 'catalogs', 'action' => 'product'], ['pass' => ['category']]);
	
	
	Router::connect('/suppliers/:category.html', ['controller' => 'catalogs', 'action' => 'product'], ['pass' => ['category']]);
	
	Router::connect('/manufacturers/:slug.html', ['controller' => 'catalogs', 'action' => 'productdetails'], ['pass' => ['slug']]);
	
    Router::connect('/admin', ['controller' => 'users', 'action' => 'dashboard', 'admin' => true]);
	
    Router::connect('/sitemap.html', ['controller' => 'pages', 'action' => 'sitemap']);	
 
    #Router::connect('/:slug.html', ['controller' => 'products', 'action' => 'view'] ,['pass' => ['slug']]);
 
   
 
   # Router::connect('/:slug.html', ['controller' => 'products', 'action' => 'productdetails'], ['pass' => ['slug']]);

		Router::connect('/:slug', ['controller' => 'locations', 'action' => 'view'], ['pass' => ['slug']]);
  
	
  
//new router//
Router::connect('/:slug/our-presence.html', ['controller' => 'locations', 'action' => 'country'], ['pass' => ['slug']]);
			
  
 

	Router::connect('/exporters/:category/:slug.html', ['controller' => 'catalogs', 'action' => 'productdetails'], ['pass' => ['category','slug']]);

	
    Router::connect('/manufacturers/:category/:slug.html', ['controller' => 'catalogs', 'action' => 'productdetails'], ['pass' => ['category','slug']]);

    Router::connect('/suppliers/:category/:slug.html', ['controller' => 'catalogs', 'action' => 'productdetails'], ['pass' => ['category','slug']]);
	

	Router::connect('/:location/:category2.html', ['controller' => 'locations', 'action' => 'product'], ['pass' => ['location','category2']]);
	 			 
	Router::connect('/:location/:category2/:slug2.html', ['controller' => 'locations', 'action' => 'productdetails'], ['pass' => ['location','category2','slug2']]);


	
	
 	
 	
	
	 
/*	

	

//  Router::connect('/:slug/our-presence.html', ['controller' => 'locations', 'action' => 'country'], ['pass' => ['slug']]);
//Router::connect('/:slug/market-place.html', ['controller' => 'locations', 'action' => 'country'], ['pass' => ['slug']]);  
/**
 * ...and connect the rest of 'Pages' controller's urls.
 */
  //  Router::connect('/pages/*', ['controller' => 'pages', 'action' => 'display']);

/**
 * Load all plugin routes.  See the CakePlugin documentation on
 * how to customize the loading of plugin routes.
 */
    CakePlugin::routes();

/**
 * Load the CakePHP default routes. Remove this if you do not want to use
 * the built-in default routes.
 */
    require CAKE . 'Config' . DS . 'routes.php';

 