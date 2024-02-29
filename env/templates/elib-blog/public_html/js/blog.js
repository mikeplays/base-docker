// from cerebellum project


var archive = function () {
  $('#archive ul ul, #archive ul ul ul').each(function () {

    var $this = $(this);
    if (!$this.hasClass('current')) {
      $this.css('display', 'none');
    }
  });

  $('#archive > nav > ul > li > a, #archive > nav > ul > li > ul > li > a').bind('click', function (e) {
    var $this = $(this);
    toggle_archive($this);
    return false;
  });
};


var toggle_archive = function (link) {
  var item = link.parent();
  var list = item.find('> ul');
  if (list.css('display') == 'none') {
    list.show();
    //item.css('list-style', 'circle');
  } else {
    list.hide();
    //item.css('list-style', 'disc');
  }
};


$(document).ready(function () {


  $('.blog-post p img').each(function () {
    var $item = $(this);

    var $parent = $item.parent();
    $item.css('display', 'inline');
    //$parent.addClass('text-center');

    var src = $item.attr('src');
    var src_arr = src.split('/');
    var filename = src_arr.pop();
    var data_title = $item.data('title');
    filename = filename.replace(/^(l_|mid_|tn_)/g, '');
    //$item.attr('src', src_arr.join('/') + '/mid_' + filename);
    var $wrap = $('<a data-toggle="lightbox" data-title="' + data_title + '" href="' + src + '"></a>');
    $wrap.append($item);
    $parent.empty();
    $parent.append($wrap);

    $item.hide();
    $item.fadeIn(500);
  });


  $(document).delegate('*[data-toggle="lightbox"]', 'click', function (event) {
    event.preventDefault();
    $(this).ekkoLightbox({
      alwaysShowClose: true,
      showArrows: false,
      onContentLoaded: function () {
        $('.ekko-lightbox-container iframe').on("load", function () {
          setTimeout(function () {
            var container = $('.ekko-lightbox-container');
            var iframe = container.find('iframe');
            var height = container.height();
            var width = container.width();
            var poster = iframe.contents().find('.vjs-poster');
            var video = iframe.contents().find('.video-js');

            poster.css('height', height);
            poster.css('width', width);
            video.css('height', height);
            video.css('width', width);
          }, 100);
        });
      }
    });
  });

  if($('#archive').length > 0) {
    archive();
  }
  
  var re = new RegExp(window.location.hostname, "g");
  if (!document.referrer.match(re)) {
    $('.page-link.back').hide();
  } else {
    $('.page-link.back').bind('click', function(e) {
      e.preventDefault();

      window.history.back();
      return false;
    });
  }

});