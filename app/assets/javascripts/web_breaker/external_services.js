$(function(){

  $('.service-toggle').on('switch-change', function (e, data) {
    var $el = $(data.el)
    var id = $el.data('id');

    $.ajax({
      url: '/web_breaker/external_services/' + id + '/toggle',
      type: 'PUT'
    });
  });

});