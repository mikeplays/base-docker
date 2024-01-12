<?php

namespace Empathy\MVC\Controller;

use Empathy\MVC\Controller as Controller;
use Empathy\MVC\Config;

class CustomController extends Controller
{
    public function __construct($boot)
    {
        parent::__construct($boot);

        $this->assign('rand',
            Config::get('BOOT_OPTIONS')['environment'] === 'dev'
                ? uniqid()
                : ''
        );

        if ($this->module == 'blog') {
            $this->internalReferrer();

            $this->blogCategory();

            $this->assign('def_date_format', 'M jS, Y \a\t g:ia');

            $cache = $this->stash->get('cache');
            $this->assign('about', $cache->cachedCallback('about_text', array($this, 'loadAboutText')));
        }
    }

    public function loadAboutText()
    {
        return file_get_contents(Config::get('DOC_ROOT').'/presentation/statement.tpl');
    }

    private function blogCategory()
    {
        $bc = \Empathy\MVC\Session::get('blog_category');
        if (!is_numeric($bc)) {
            $bc = ELIB_DEF_BLOG_CATEGORY;
        }
        $this->stash->store('blog_category', $bc);
        $this->assign('blog_category', $bc);
        $this->assign('def_category', ELIB_DEF_BLOG_CATEGORY);
    }

    private function internalReferrer()
    {
        if (isset($_SERVER['HTTP_REFERER'])) {
            if (
                strpos($_SERVER['HTTP_REFERER'], 'http://'.Config::get('WEB_ROOT')) === 0 ||
                strpos($_SERVER['HTTP_REFERER'], 'https://'.Config::get('WEB_ROOT')) === 0
            ) {
                $this->assign('internal_referrer', true);
            }
        }
    }

}