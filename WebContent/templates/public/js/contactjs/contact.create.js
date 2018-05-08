$(document).ready(function()
{
	modal_create_contact=$('#modal_create_contact').dialog({
      autoOpen: false,
      modal: true,
      height: 400,
      width: 600,
	  open: function(){
            jQuery('.ui-widget-overlay').bind('click',function(){
                jQuery('#modal_create_contact').dialog('close');
            })
        }
    });
    $('#create_contact').click(function(event){
        event.preventDefault();
        modal_create_contact.dialog('open');
    });    
});