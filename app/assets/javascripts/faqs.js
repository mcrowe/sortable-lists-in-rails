$(document).ready(function() {

  $('#faqs').sortable({
    update: function() {
      var ids = $(this).sortable('serialize');
      $.post('/faqs/sort', ids);
    }
  });

});