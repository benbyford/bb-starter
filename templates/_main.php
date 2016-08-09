<?php

/**
 * _main.php
 * Main markup file (multi-language)
 *
 *   $title: The page title/headline
 *   $content: The markup that appears in the main content/body copy column
 *   $sidebar: The markup that appears in the sidebar column
 *
 */
?>

<?php
	include("./head.inc");
?>

	<!-- top navigation -->
	<ul class='topnav'>
		<?php
		// top navigation consists of homepage and its visible children
		foreach($homepage->and($homepage->children) as $item) {
			if($item->id == $page->rootParent->id) {
				echo "<li class='current'>";
			} else {
				echo "<li>";
			}
			echo "<a href='$item->url'>$item->title</a></li>";
		}

		// output an "Edit" link if this page happens to be editable by the current user
		if($page->editable()) echo "<li class='edit'><a href='$page->editURL'>" . __('Edit') . "</a></li>";
		?>
	</ul>

	<!-- breadcrumbs -->
	<div class='breadcrumbs'>
		<?php
		// breadcrumbs are the current page's parents
		foreach($page->parents() as $item) {
			echo "<span><a href='$item->url'>$item->title</a></span> ";
		}
		// output the current page as the last item
		echo "<span>$page->title</span> ";
		?>
	</div>

	<form class='search' action='<?php echo $pages->get('template=search')->url; ?>' method='get'>
		<input type='text' name='q' placeholder='<?php echo _x('Search', 'placeholder'); ?>' />
		<button type='submit' name='submit'><?php echo _x('Search', 'button'); ?></button>
	</form>


	<div id='main'>

		<!-- main content -->
		<div id='content'>
			<h1><?php echo $title; ?></h1>
			<?php echo $content; ?>
		</div>

		<!-- sidebar content -->
		<?php if($sidebar): ?>
		<div id='sidebar'>
			<?php echo $sidebar; ?>
		</div>
		<?php endif; ?>

	</div>
<?php
	include("./foot.inc");
?>
