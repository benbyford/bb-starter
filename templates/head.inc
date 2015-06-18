<!DOCTYPE html>
<html lang="<?php echo _x('en', 'HTML language code'); ?>">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title><?php echo $title; ?></title>

    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.5; user-scalable=1;" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content=""> <!--// i.e. black -->
    <link rel="apple-touch-startup-image" href="/startup.png"><!--// startup image on iPhone app mode -->

    <meta name="robots" content="index, follow">

    <meta name="keywords" content="echo $homepage->keywords;">
    <meta name="description" content="<?php echo $summary; ?>" />
    <meta name="generator" content="<?php echo $homepage->title; ?>">

<!-- icons
    <link rel="shortcut icon"  sizes="34x34" href="http://www.example.com/favicon.ico" type="image/x-icon">
    <link rel="icon" sizes="192x192" href="//nice-highres.png">
    <link rel="apple-touch-icon" href="touch-icon-iphone.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="touch-icon-ipad.png">
    <link rel="apple-touch-icon" sizes="120x120" href="touch-icon-iphone-retina.png">
    <link rel="apple-touch-icon" sizes="152x152" href="touch-icon-ipad-retina.png">
-->

    <!-- // open graph // -->
    <meta property="og:site_name" content="<?php echo $homepage->title; ?>">
    <meta property="og:type" content="website"><!--product, blog, website, book, movie, game, actor, see http://ogp.me/#types-->
    
    <meta property="og:image" content="<?php echo $page->images->getRandom()->url; ?>"> <!--multiple og:image permitted-->
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
    <link href='http://fonts.googleapis.com/css?family=Quattrocento' rel='stylesheet' type='text/css'>
    <link href='<?php echo $config->urls->templates?>styles/font-awesome.css' rel='stylesheet' type='text/css'>

    <!-- // minified styles -->
    <link rel="stylesheet" href="<?php echo AIOM::CSS(array('styles/html.less','styles/main.less')); ?>">
</head>
<body class="<?php if($sidebar) echo "has-sidebar "; ?>">