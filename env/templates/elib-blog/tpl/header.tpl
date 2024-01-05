<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    {include file="elib://comp_title.tpl"}
    {include file="elib://comp_description.tpl"}
    {include file="elib://comp_keywords.tpl"}
    <link rel="icon" href="/favicon.ico">
    <link href='https://fonts.googleapis.com/css?family=Archivo+Narrow' rel='stylesheet' type='text/css'>
    <link href="http://{$WEB_ROOT}{$PUBLIC_DIR}/vendor/css/style.min.css" rel="stylesheet">
    <link href="http://{$WEB_ROOT}{$PUBLIC_DIR}/css/styles.css?rand={$rand}" rel="stylesheet">
    <link href="http://{$WEB_ROOT}{$PUBLIC_DIR}/css/blog.css?rand={$rand}" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" rel="stylesheet">
    {include file="comp_social_markup.tpl"}
</head>

<body id="{$module}" class="hasnav">
{include file="comp_nav.tpl"}

<div class="top">
    <div class="container content-outer">
        {if ($module eq 'store' && $event neq 'product') || $module eq 'home' || $module eq 'user'}
            {include file="comp_header.tpl"}
        {/if}

        <section class="content">
