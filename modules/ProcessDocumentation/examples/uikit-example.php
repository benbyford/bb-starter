<?php

/** 
 * UIKit Documentation Page Example
 * ====================================================
 * This file is an example of how you can use native UIKit styles
 * in your doc pages if you are using Admin Theme UIKit.
 *
 * Features
 * * Auto extraction of page anchors to right column table of contents
 * * first paragraph lead style
 * * UIKit native styling for HTML elements
 * 
 */


$created = date('M d, Y', $page->created);
$modified = date('M d, Y', $page->modified);


require_once($config->paths->ProcessDocumentation . 'simple_html_dom.php');

$html = str_get_html($page->body);
if (!empty($html)) {

	// UL
	foreach (($html->find('ul')) as $ul) {
		$ul->class = 'uk-list uk-list-striped'; //uk-list-large 
	}

	foreach (($html->find('ol')) as $ul) {
		$ul->class = 'uk-list-large';
	}

	foreach (($html->find('blockquote')) as $bq) {
		$bq->class = 'pd-blockquote';
	}

	foreach (($html->find('table')) as $table) {
		$table->class = 'uk-table uk-table-small uk-table-striped';
	}

	foreach (($html->find('img')) as $img) {
		if($img->class) {
			$img->class .= ' pd-image';
		} else {
			$img->class = 'pd-image';
		}
	}

	// Create Table Of Contents from Anchors
	$anchors = $html->find("a[id]");

	// Pull out the first paragraph for lead size
	$lead = $html->find('p', 0)->innertext;
	$html->find('p', 0)->outertext = '';

	$body = $html;
}


?>


<div class="uk-section uk-section-small section-content">
	<div class="uk-container uk-position-relative">
		<div class="uk-grid" uk-grid="">

			<div class="uk-width-3-4@m uk-first-column">
				<article class="uk-article">

					<header>
						<h1 class="uk-article-title uk-margin-bottom"><?=$page->title?></h1>
						<div class="author-box uk-card">
							<div class="uk-card-header uk-padding-remove">
								<div class="uk-grid-small uk-flex-middle uk-position-relative uk-grid" uk-grid="">
									<div class="uk-width-expand">
										<?php if($page->headline) { ?>
										<h5 class="uk-card-title"><?=$page->headline?></h5><?php } ?>
										<p class="uk-article-meta uk-margin-remove-top">Created: <?=$created?> - Updated: <?=$modified?></p>
									</div>
								</div>
							</div>
						</div>
					</header>

					<div class="entry-content uk-margin-medium-top">
						<p class="uk-text-lead"><?=$lead?></p>
						<?=$body?>
					</div>

				</article>
			</div>


<?php 

if(count($anchors)) {

?>
			<div class="uk-width-1-4@m">

				<div style="" uk-sticky="offset: 100" class="scrollspy uk-sticky uk-card uk-card-small uk-card-body uk-padding-remove-top uk-visible@m">
					<h3 class="uk-card-title">Table of Contents</h3>
					<ul class="uk-nav uk-nav-default" uk-scrollspy-nav="closest: li; scroll: true; offset: 30">

					<?php
					$count = 0;
					foreach ($anchors as $anchor) {
						$class = $count == 0 ? ' class="uk-active"' : '';
						$title = str_replace('-', ' ', $anchor->attr['id']);
						$title = ucwords($title);
						echo "<li{$class}><a href='#{$anchor->attr['id']}'>{$title}</a></li>";
						$count++;
					}
					?>

					</ul>
				</div>
				<div style="height: 191.583px; margin: 0px;" class="uk-sticky-placeholder" hidden="hidden"></div>

			</div>

<?php } ?>


		</div>
	</div>
</div>