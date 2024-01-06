
<div class="nav-wrapper">
    <div class="nav-outer">
        <div class="nav-container container-fluid container-md">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="http://{$WEB_ROOT}{$PUBLIC_DIR}">
                    <img src="http://{$WEB_ROOT}{$PUBLIC_DIR}/img/small_skull.png" width="30" alt="Online Vibes">
                </a>
                <ul class="navbar-nav mr-auto d-md-none">
                    <li class="nav-item dropdown text-uppercase">
                        <a href="http://{$WEB_ROOT}{$PUBLIC_DIR}" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {if $vendorRead neq false}
                                {$vendorRead.name}
                            {/if}
                        </a>
                        <div class="dropdown-menu position-absolute" aria-labelledby="navbarDropdown">
                            {if $vendorRead neq false}
                                <a class="dropdown-item {if $module eq 'store'} active{/if}" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/store">Storefront</a>
                            {/if}
                            <a class="dropdown-item {if $module eq 'about'} active{/if}" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/about">About OV</a>
                            {if isset($user_id) and $user_id > 0}
                                <a class="dropdown-item{if $module eq 'settings'} active{/if}" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/settings">Settings</a>
                            {/if}
                            {if isset($user_is_vendor) and $user_is_vendor}
                                <a class="dropdown-item{if $module eq 'storeadmin'} active{/if}" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/storeadmin">Admin</a>
                            {/if}
                        </div>
                    </li>
                </ul>
                <ul class="navbar-nav mr-auto d-none d-md-flex flex-row">
                    <li class="nav-item text-uppercase">
                        <a class="nav-link{if $module eq 'store' || $module eq 'home'} active{/if}" href="http://{$WEB_ROOT}{$PUBLIC_DIR}">
                            {if $vendorRead neq false}
                                {$vendorRead.name}
                            {/if}
                        </a>
                    </li>
                    {*
                    {if isset($user_id) and $user_id > 0}
                    <li class="nav-item">
                        <a class="nav-link{if $module eq 'settings'} active{/if}" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/settings">Settings</a>
                    </li>
                    {/if}
                    *}
                    {if isset($vendorRead['currentUser']) && $vendorRead['currentUser']}
                        <li class="nav-item">
                            <a class="nav-link" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/admin">Admin</a>
                        </li>
                    {/if}
                </ul>
                <ul class="navbar-nav flex-row">
                    {*
                    {if $vendorRead neq false and !($class eq 'store' and $event eq 'cart')}
                        <li class="nav-item">
                            <a class="nav-link" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/store/cart">
                                <i class="fa-solid fa-cart-shopping"></i>
                                <span id="basket_inner">{$cart_items}</span>
                            </a>
                        </li>
                    {/if}
                    *}
                    {if isset($user_id) and $user_id > 0}
                        <li class="nav-item ">
                            <a class="nav-link" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/user/logout">Sign Out</a>
                        </li>
                    {else}
                        <li class="nav-item ">
                            <a class="nav-link" href="http://{$WEB_ROOT}{$PUBLIC_DIR}/user/login">Log In</a>
                        </li>
                    {/if}
                </ul>
            </nav>
        </div>
    </div>
    {if $module eq 'store' && isset($breadcrumb) and count($breadcrumb)}
        {include file="comp_breadcrumb.tpl"}
    {/if}
</div>
