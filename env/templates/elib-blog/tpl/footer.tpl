


</section>
</div><!-- /.container -->
</div>
<div class="bottom">
    <div class="container-fluid container-md">
        <div class="row">
            <div class="col-md-6">
                <div class="logo d-flex align-items-center">
                    <a href="http://{$WEB_ROOT}{$PUBLC_DIR}">
                        <img class="logo-img" src="http://{$WEB_ROOT}{$PUBLCI_DIR}/img/skull_clean_light.png" alt="Skull clean" />
                    </a>
                    <h1><a href="http://{$WEB_ROOT}{$PUBLC_DIR}">Online Vibes</a></h1>
                </div>
                <p class="about">Online Vibes is a minimal online marketplace for up-and-coming creatives and personalities.</p>
            </div>
        </div>
        <div class="separator-w"></div>
        <div class="d-flex align-items-center justify-content-between align-items-center">
            <div class="terms">
                <span class="mr-4">Copyright © {$smarty.now|date_format:'%Y'} Ai-em Ltd.</span>
                <span>
                        <a target="_blank" href="https://twitter.com/onlinevibes_" class="text-secondary">
                            Twitter&nbsp;&nbsp;<i class="fa-brands fa-twitter"></i>
                        </a>
                    </span>
                <div class="separator-h"></div>
                <span>
                        <a target="_blank" href="https://instagram.com/onlinevibesofficial" class="text-secondary">
                            Instagram&nbsp;&nbsp;<i class="fa-brands fa-instagram"></i>
                        </a>
                    </span>
                {*
                <span><a href="/terms">Terms</a></span>
                <div class="separator-h"></div>
                <span><a href="/privacy">Privacy</a></span>
                *}
            </div>
        </div>
    </div>
</div>
{if $disqusUsername neq ''}
    <script id="dsq-count-scr" src="//{$disqusUsername}.disqus.com/count.js" async></script>
{/if}
<script src="http://{$WEB_ROOT}{$PUBLIC_DIR}/vendor/js/main.min.js"></script>
<script src="http://{$WEB_ROOT}{$PUBLIC_DIR}/js/common.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>
<script src="http://{$WEB_ROOT}{$PUBLIC_DIR}/js/blog.js"></script>

</body>
</html>
