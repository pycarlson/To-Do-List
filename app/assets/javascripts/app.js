$(document).ready(function() {
  $(".checkbox").bind('change', function(){

    if (this.checked){
      $.ajax({
        url: '/tasks/'+this.value+'/toggle',
        type: 'POST',
        data: {"status": true}
      });
    }
    else {
     $.ajax({
      url: '/tasks/'+this.value+'/toggle',
      type: 'POST',
      data: {"status": false}
    });
   }
 });


 

  // $('form').on('submit', function(e){

  //   e.preventDefault();
  //   $('form')[0].reset();
  //   console.log($('form').length);
    
  // });

  
});
