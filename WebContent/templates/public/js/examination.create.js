$(document).ready(function()
{
	modal_create_examination=$('#modal_create_examination').dialog({
      autoOpen: false,
      modal: true,
      height: 400,
      width: 600,
	  open: function(){
            jQuery('.ui-widget-overlay').bind('click',function(){
                jQuery('#modal_create_examination').dialog('close');
            })
        }
    });
    $('.create_examination').click(function(event){
        event.preventDefault();
        modal_create_examination.dialog('open');
    });    
});