
{if $module eq 'blog' and $event eq 'item'}
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@onlinevibes_" />
    <meta name="twitter:title" content="{$blog->heading}" />
    <meta name="twitter:description" content="{$blog->body|blog_images:$WEB_ROOT:$PUBLIC_DIR|strip_tags|truncate:200}" />
    <meta name="twitter:creator" content="@onlinevibes_" />
    {if isset($primary_image)}
        <meta name="twitter:image:src" content="http://{$WEB_ROOT}{$PUBLIC_DIR}/uploads/{$primary_image}" />
    {/if}

    <meta property="og:title" content="{$blog->heading}" />
    <meta property="og:type" content="article" />
    {* TODO: get url! *}
    {*<meta property="og:url" content="http://www.example.com/" />*}
    {if isset($primary_image)}
        <meta property="og:image" content="http://{$WEB_ROOT}{$PUBLIC_DIR}/uploads/{$primary_image}" />
    {/if}
    <meta property="og:description" content="{$blog->body|strip_tags|truncate:200}" />
    <meta property="og:site_name" content="Online Vibes" />
    <meta property="article:published_time" content="{$blog->stamp|sdate:"c"}" />
    {*<meta property="article:modified_time" content="2013-09-16T19:08:47+01:00" />*}
    <meta property="article:section" content="{$sample_category}" />

    {* TODO: get tags! *}
    {*<meta property="article:tag" content="Article Tag" />*}
    {*<meta property="fb:admins" content="Facebook numberic ID" />*}
{/if}
