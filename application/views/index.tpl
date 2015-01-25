<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>{$page->title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  
    {include $common_dir|cat:"inc_meta.tpl"}
    {include $common_dir|cat:"inc_styles.tpl"}
  </head>
  <body>  
      
    <div class="navbar navbar-default">
      {include $common_dir|cat:"header.tpl"}
    </div> 
    <div class="container content">
        <div class="row status">
            {include $common_dir|cat:"status.tpl"}
        </div>
        <div class="row">
            {include $content|cat:".tpl"}
        </div>
        <div class="row">
            <hr>
            <footer>   
              {include $common_dir|cat:"footer.tpl"}
            </footer>   
        </div>
    </div>    
            
    {include $common_dir|cat:"inc_scripts.tpl"}  
  </body>
</html>
