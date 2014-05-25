$(document).ready(function() {
  $(".checkbox").bind('change', function(){

    if (this.checked){
      $.ajax({
        url: '/tasks/'+this.value+'/toggle',
        type: 'PUT',
        data: {"status": true},
      });

    }
    else {
     $.ajax({
      url: '/tasks/'+this.value+'/toggle',
      type: 'PUT',
      data: {"status": false}
    });
   }
 });
  
});
