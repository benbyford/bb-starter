<?php

// basic-page.php template file

// Primary content is the page's body copy
$content = $page->body;

$limit = $page->posts_limit;
$results = $page->children("blog_tags=$page->title, limit=$limit");

$pagination = $results->renderPager();

foreach($results as $result) {
    $post = "<div class='post'>";
    $post .= "<h3><a href='{$result->url}'>{$result->title}</a></h3>";
    $post .= $result->body;
    $post .= "</div>";
    $content .= $post;
}

$content .= $pagination;
