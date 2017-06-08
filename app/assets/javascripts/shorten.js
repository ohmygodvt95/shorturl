$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();
  $('form').submit(function(event){
    event.preventDefault();
    var url = $('input.url').val();
    var origin = $('input.origin_url').val();
    var base = $('base').attr('href');

    $.post(url, {url: {origin: origin}}, function(data, status) {
      if(status === 'success'){
        var alias = $('.alias');
        alias.attr('href', base + data.data.alias);
        alias.text(base + data.data.alias);



        var origin = $('.origin_view');
        origin.attr('href', data.data.origin);
        origin.text(data.data.origin);

        var analytics = $('.analytics');
        analytics.attr('href', base + data.data.origin + '/info');
        var modal = $('#myModal');
        modal.find('i.copy').attr('data', base + data.data.alias);
        modal.modal();
      }
    });
  });
  $('.copy').click(function () {
    copyToClipboard(this);
  });

  function copyToClipboard(element) {
    var $temp = $("<input>");
    $("body").append($temp);
    $temp.val($(element).attr('data')).select();
    document.execCommand("copy");
    $temp.remove();
    toastr['success']('Short URL copied');
  }
});
