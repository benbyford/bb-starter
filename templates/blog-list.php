<?php

$limit = $page->posts_limit;
$results = $page->children("limit=$limit");

$pagination = $results->renderPager();

foreach($results as $result) {
    $post = "<div class='post'>";
    $post .= "<h3><a href='{$result->url}'>{$result->title}</a></h3>";
    $post .= $result->body;
    $post .= "</div>";
    $content .= $post;
}

    $content .= $pagination;
?>
