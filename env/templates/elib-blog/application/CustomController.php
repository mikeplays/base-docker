<?php

namespace Empathy\MVC\Controller;

use Empathy\MVC\Controller as Controller;
use Empathy\ELib\VCache;
use Empathy\MVC\Config;

/**
 * Empathy Custom Controller
 * @file			eaa/application/CustomController.php
 * @description		Site-wide controller customisation goes in this file.
 * @author			Mike Whiting
 * @license			LGPLv3
 *
 * (c) copyright Mike Whiting
 * This source file is subject to the LGPLv3 License that is bundled
 * with this source code in the file licence.txt
 */
class CustomController extends Controller
{

    /**
     * Calls to custom routines can go in here.
     *
     * @return void
     */
    public function __construct($boot)
    {
        parent::__construct($boot);

        $cache_enabled = true;
        $cache = new VCache('127.0.0.1', 11211, null, $cache_enabled);
        $this->stash->store('cache', $cache);

        $this->assign('custom_title', 'É‘Éª-É›É±.net');
        $this->assign('custom_title2', 'Mike Whiting\'s blog');

        if ($this->module == 'blog') {
            if (isset($_SERVER['HTTP_REFERER'])) {
                if (strpos($_SERVER['HTTP_REFERER'], 'http://'.Config::get('WEB_ROOT')) === 0) {
                    $this->assign('internal_referrer', true);
                }
            }
            $bc = \Empathy\MVC\Session::get('blog_category');
            $bc_loaded = $bc;
            if (!is_numeric($bc)) {
                $bc = ELIB_DEF_BLOG_CATEGORY;
            } elseif(isset($_GET['cat_id']) && $_GET['cat_id'] == ELIB_DEF_BLOG_CATEGORY) {
                $bc = $_GET['cat_id'];
            }
            if($bc_loaded !== $bc) {
                \Empathy\MVC\Session::set('blog_category', $bc);
            }
            $this->stash->store('blog_category', $bc);
            $this->assign('blog_category', $bc);
            $this->assign('def_category', ELIB_DEF_BLOG_CATEGORY);

            $this->assign('def_date_format', 'M jS, Y \a\t g:ia');

            $about = file_get_contents(Config::get('DOC_ROOT').'/presentation/statement.tpl');
            $this->assign('about', $about);
            $this->assign('rand', uniqid());
        }

    }

}