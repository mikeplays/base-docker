


{if !($module eq 'user' && $class eq 'user' && $event eq 'login')}
    </div>
{/if}

<script type="text/javascript" src="http://{$WEB_ROOT}{$PUBLIC_DIR}/js/common.js"></script>
<script type="text/javascript" src="http://{$WEB_ROOT}{$PUBLIC_DIR}/vendor/js/main.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>

<style type="text/css">

    .ekko-lightbox {
        padding-right: 0 !important;
    }
    .ekko-lightbox .modal-dialog {
        width: 90% !important;
        max-width: 90% !important;
        height: 90% !important;

    }
    .ekko-lightbox .modal-body {
        padding: 0;
    }

    .ekko-lightbox-container iframe {
        width: 100% !important;
    }

    .ekko-lightbox .modal-content, .ekko-lightbox-container,
    .ekko-lightbox-container .ekko-lightbox-item.show,
    .ekko-lightbox-container .ekko-lightbox-item.show iframe {
        height: 100% !important;
    }
</style>


<script type="application/javascript">

    $(document).ready(function() {
        $(document).delegate('*[data-toggle="lightbox"]', 'click', function (event) {
            event.preventDefault();
            $(this).ekkoLightbox({
                alwaysShowClose: true,
                showArrows: false
            });
        });
    });
</script>

</body>
</html>