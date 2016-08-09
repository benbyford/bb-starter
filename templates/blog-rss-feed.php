<?php
// retrieve the RSS module
$rss = $modules->get("MarkupRSS");

// configure the feed. see the actual module file for more optional config options.
$rss->title = "Latest updates"; $rss->description = "The most recent pages updated on my site";

// find the pages you want to appear in the feed.
// this can be any group of pages returned by
$items = $pages->find("template=blog-post-page, limit=10, sort=-modified"); 

// send the output of the RSS feed, and you are done
$rss->render($items);
