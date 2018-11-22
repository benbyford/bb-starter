<?php
/*
 * Pages2Pdf default template
 *
 * This template is used if you have enabled creating PDF files for a template in the module config
 * but didn't create a corresponding template file in '/site/templates/pages2pdf/ folder.
 *
 * Styles defined in styles.css file
 */

$body = $page->body;

if(strpos($body, "<p>{tab=") !== false) {

	$body = str_replace("{/tabs}", "", $body);

	$searchReplace = array(
		"{tab=" => "<h2>",
		"}</p>"	=> "</h2>",
	);

	$body = str_replace(array_keys($searchReplace), $searchReplace, $body);

}

/**
 * Convert Image URLs to Paths
 * Enable the code below if your images show as a red X; also make sure 
 * to create the temp folder WirePDF inside site/assets/cache
 */
// $rootPath = $pages->get(1)->httpUrl;
// $body = str_replace("/site/assets/", $rootPath . "site/assets/" , $body);

?>

<h1><?= $page->get('headline|title') ?></h1>
<p><?= $body ?></p>