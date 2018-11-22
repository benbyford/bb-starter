<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title><?php echo $title; ?></title>

    <link rel="preload" href="<?php echo $mainStyleURL?>" as="style">
    <link rel="preload" href="<?php echo $googleFontsURL?>" as="style">

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5, user-scalable=1" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content=""> <!--// i.e. black -->
    <link rel="apple-touch-startup-image" href="/startup.png"><!--// startup image on iPhone app mode -->

    <meta name="robots" content="index, follow">

    <meta name="keywords" content="<?php echo $homepage->keywords;?>">
    <meta name="description" content="<?php echo $summary; ?>" />
    <meta name="generator" content="<?php echo $homepage->title; ?>">

    <!-- icons -->
    <link rel="shortcut icon"  sizes="34x34" href="<?php echo $config->urls->templates?>images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" sizes="72x72" href="<?php echo $config->urls->templates?>images/benbyford-logo-ipad.png">
    <link rel="apple-touch-icon" sizes="120x120" href="touch-icon-iphone-retina.png">
    <link rel="apple-touch-icon" sizes="144x144" href="<?php echo $config->urls->templates?>images/benbyford-logo-iphone.png">

    <!-- // open graph // -->
    <meta property="og:site_name" content="<?php echo $homepage->title; ?>">
    <meta property="og:type" content="website"><!--product, blog, website, book, movie, game, actor, see http://ogp.me/#types-->

    <meta property="og:image" content="<?php if(count($page->images)) echo $page->images->getRandom()->url; ?>"> <!--multiple og:image permitted-->
    <meta property="og:title" content="<?php echo $title; ?>"> <!--title-->
    <meta property="og:description" content="<?php echo $summary; ?>"> <!--summary-->

    <!-- // twitter:cards - can be used in conjunction with og meta tags // -->
    <meta name="twitter:card" content="summary"> <!-- // options: summary / photo / player - see twitter docs// -->
    <meta name="twitter:site" content="@<?php echo $homepage->twitter; ?>">
    <meta name="twitter:creator" content="@<?php echo $homepage->twitter; ?>">

    <meta property="fb:admins" content="<?php echo $homepage->facebook; ?>">

    <!-- // rss // -->
    <link rel="alternate" type="application/rss+xml" title="Example (RSS 2.0)" href="<?php echo $pages->get('/')->url; ?>blog-rss-feed/">

    <!-- // fonts -->
    <link href='<?php echo $googleFontsURL?>' rel='stylesheet' type='text/css'>

    <!-- // minified styles -->
    <link rel="stylesheet" href="<?php echo $mainStyleURL?>">
</head>
<body class="<?php
    echo "template-" . $page->template;
    if($sidebar) echo " has-sidebar";
?>">
