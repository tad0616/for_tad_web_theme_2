<!DOCTYPE html>
<html lang="<{$xoops_langcode}>">
  <head>
    <!--目前$_SESSION['bootstrap']="<{php}>echo $_SESSION['bootstrap'];<{/php}>"; -->
    <!--將目前的資料夾名稱，設定為樣板標籤變數 theme_name-->
    <{assign var=theme_name value=$xoTheme->folderName}>
    <{assign var=bootstrap value=3}>

    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/meta.tpl"}>
    <!-- 網站的標題及標語 -->
    <title><{$xoops_sitename}> - <{$xoops_pagetitle}></title>

    <{$module_css}>
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/link_css.tpl"}>

    <link href="<{$xoops_url}>/modules/tad_web/module.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="<{$xoops_url}>/modules/tadtools/css/iconize.css" rel="stylesheet" media="screen" type="text/css" />
    <link rel="stylesheet" type="text/css" media="all"  href="<{xoImgUrl css/style.css}>" />

    <!-- 給模組套用的樣板標籤 -->
    <{$xoops_module_header}>

    <style>
      <{if $theme_display_mode!="blank"}>
        body{
          <{if $bg_color}>background-color: <{$bg_color}>;<{/if}>
          <{if $web_bg}>background-image: url('<{$xoops_url}>/uploads/tad_web/<{$WebID}>/bg/<{$web_bg}>');<{/if}>
          <{if $bg_repeat}>background-repeat: <{$bg_repeat}>;<{/if}>
          <{if $bg_attachment}>background-attachment: <{$bg_attachment}>;<{/if}>
          <{if $bg_postiton}>background-position: <{$bg_postiton}>;<{/if}>
          <{if $bg_size}>background-size: <{$bg_size}>;<{/if}>
        }
      <{else}>
        body{
          font-family: "Microsoft JhengHei UI";
        }
      <{/if}>
      .sf-menu a{
        color: <{$navbar_color}>;
      }
      .sf-menu a:hover{
        color: <{$navbar_color_hover}>;
      }

      .sf-menu{
        width: 100%;
        float: none;
      }
      .sf-menu, .sf-menu * {
        font-size: <{$menu_font_size}>px;
      }


      #tad_sf_menu{
        background-color: <{$navbar_bg_top}>;
        z-index:197;
      }

      .web_center_block {
        color: <{$center_text_color}> ;
      }

      .web_center_block a{
        color: <{$center_link_color}> ;
      }

      .web_center_block a:hover{
        color: <{$center_hover_color}> ;
      }

      .web_center_block h1,.web_center_block h2,.web_center_block h3{
        color: <{$center_header_color}>;
        text-shadow: 1px 1px 0 <{$center_border_color}>, -1px -1px 0 <{$center_border_color}>, 1px -1px 0 <{$center_border_color}>, -1px 1px 0 <{$center_border_color}>,1px 0px 0 <{$center_border_color}>, -1px 0px 0 <{$center_border_color}>, 0px -1px 0 <{$center_border_color}>, 0px 1px 0 <{$center_border_color}>;
      }

      .web_side_block {
        color: <{$side_text_color}> ;
      }

      .web_side_block a{
        color: <{$side_link_color}> ;
      }

      .web_side_block a:hover{
        color: <{$side_hover_color}> ;
      }

      .web_side_block h1,.#web_side_block h2,.web_side_block h3{
        color: <{$side_header_color}>;
        text-shadow: 1px 1px 0 <{$side_border_color}>, -1px -1px 0 <{$side_border_color}>, 1px -1px 0 <{$side_border_color}>, -1px 1px 0 <{$side_border_color}>,1px 0px 0 <{$side_border_color}>, -1px 0px 0 <{$side_border_color}>, 0px -1px 0 <{$side_border_color}>, 0px 1px 0 <{$side_border_color}>;
      }

      .list-group, .list-group-item, .well{
        background: transparent url('<{xoImgUrl images/tran50.png}>');
      }

    </style>
    <{if $_IS_EZCLASS}>
      <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-61272-4', 'auto');
      ga('send', 'pageview');

      </script>
    <{/if}>
  </head>

  <body>

    <{php}>
    $_SESSION['bootstrap']=3;
    <{/php}>

    <{if $web_display_mode=="no"}>
      <div class="container" id="container" style="background-color: <{$container_bg_color}>;">
        <a name="top"></a>
        <div class="row" style="margin-top: 10px;">
          <div class="col-sm-12">
            <{includeq file="$xoops_rootpath/modules/tad_web/templates/tad_web_header_b3.tpl"}>
          </div>
        </div>
        <div class="row">
          <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/menu/superfish/menu.tpl"}>

          <style>
            .sf-menu a{
              color: <{$navbar_color}>;
              border-top: none;
            }

            .sf-arrows .sf-with-ul:after {
              border-top-color: <{$navbar_color}>;
            .sf-arrows > li > .sf-with-ul:focus:after,
            .sf-arrows > li:hover > .sf-with-ul:after,
            .sf-arrows > .sfHover > .sf-with-ul:after {
              border-top-color: <{$navbar_color_hover}>; /* IE8 fallback colour */
            }
            .sf-arrows ul .sf-with-ul:after {
              border-left-color: <{$navbar_color}>;
            }
            .sf-arrows ul li > .sf-with-ul:focus:after,
            .sf-arrows ul li:hover > .sf-with-ul:after,
            .sf-arrows ul .sfHover > .sf-with-ul:after {
              border-left-color: <{$navbar_color_hover}>;
            }

          </style>
          <div class="col-sm-12 text-center" id="web_center_block">
            <a href="index.php">
              <img src="<{xoAppUrl modules/tad_web/images/site_close.png}>" alt="The web does not exist!">
            </a>
          </div>
        </div>
      </div>
    <{elseif $theme_display_mode=="blank"}>
      <{if $blank_kind=="content"}>
        <{includeq file="$xoops_rootpath/modules/tad_web/templates/tad_web_blank_b3.tpl"}>
      <{else}>
        <{includeq file="$xoops_rootpath/modules/tad_web/templates/tad_web_blocks_demo_b3.tpl"}>
      <{/if}>
    <{else}>
      <div class="container" id="container" style="background-color: <{$container_bg_color}>;">
        <a name="top"></a>
        <div class="row" style="margin-top: 10px;">
          <div class="col-sm-12">
            <{includeq file="$xoops_rootpath/modules/tad_web/templates/tad_web_header_b3.tpl"}>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-12">
            <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/menu/superfish/menu.tpl"}>
          </div>
        </div>

        <style>
          .sf-menu a{
            color: <{$navbar_color}>;
            border-top: none;
          }

          .sf-arrows .sf-with-ul:after {
            border-top-color: <{$navbar_color}>;
          .sf-arrows > li > .sf-with-ul:focus:after,
          .sf-arrows > li:hover > .sf-with-ul:after,
          .sf-arrows > .sfHover > .sf-with-ul:after {
            border-top-color: <{$navbar_color_hover}>; /* IE8 fallback colour */
          }
          .sf-arrows ul .sf-with-ul:after {
            border-left-color: <{$navbar_color}>;
          }
          .sf-arrows ul li > .sf-with-ul:focus:after,
          .sf-arrows ul li:hover > .sf-with-ul:after,
          .sf-arrows ul .sfHover > .sf-with-ul:after {
            border-left-color: <{$navbar_color_hover}>;
          }

        </style>

        <div class="row">
          <{if $theme_side=="none"}>
            <div class="col-sm-12 web_center_block" id="web_center_block">
              <{includeq file="$xoops_rootpath/modules/tad_web/templates/tad_web_blocks_center_b3.tpl"}>
            </div>
          <{else}>
            <{if $theme_side=="left"}>
              <div class="col-sm-3 web_side_block" id="web_side_block">
                <div <{if $side_bg_color!=$container_bg_color }>style="background: <{$side_bg_color}>; border-radius: 5px; padding: 20px 10px; margin-bottom: 20px;"<{/if}>>
                <{includeq file="$xoops_rootpath/modules/tad_web/templates/tad_web_blocks_side_b3.tpl"}>
                </div>
              </div>
            <{/if}>
            <div class="col-sm-9 web_center_block" id="web_center_block">
                <{includeq file="$xoops_rootpath/modules/tad_web/templates/tad_web_blocks_center_b3.tpl"}>
            </div>
            <{if $theme_side=="right"}>
              <div class="col-sm-3 web_side_block" id="web_side_block">
                <div <{if $side_bg_color!=$container_bg_color}>style="background: <{$side_bg_color}>; border-radius: 5px; padding: 20px 10px; margin-bottom: 20px;"<{/if}>>
                  <{includeq file="$xoops_rootpath/modules/tad_web/templates/tad_web_blocks_side_b3.tpl"}>
                </div>
              </div>
            <{/if}>
          <{/if}>
        </div>
      </div>
      <div id="tad_web_footer" style="background: #000000; color: #fcfcfc; font-size: 12px; font-family: Arial, Tahoma, Helvetica, Comic Sans MS, Georgia; padding: 5px;">

        <{if $_IS_EZCLASS}>
          <div class="row">
            <div class="col-sm-6 text-left"><a href="http://class.tn.edu.tw/<{$WebID}>" target="_blank">本站網址：<span style="color:#60FF88;">http://class.tn.edu.tw/<{$WebID}></span></a></div>
            <div class="col-sm-6 text-right"><a href="http://class.tn.edu.tw" target="_blank">本站使用「班網輕鬆架」服務架設</a></div>
          </div>
        <{else}>
          <div class="text-center">
            <a href="http://campus-xoops.tn.edu.tw/modules/tad_modules/index.php?module_sn=16" target="_blank">tad web</a> version: <{$your_version}>
          </div>
        <{/if}>
      </div>
    <{/if}>

    <!-- 載入bootstrap -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/bootstrap_js.tpl"}>

    <!-- 載入自訂js -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/my_js.tpl"}>

    <script type="text/javascript" src="<{xoAppUrl /modules/tadtools/jquery.pin/jquery.pin.js}>"></script>
    <script type='text/javascript'>
      $(document).ready(function(){
        $('#tad_sf_menu').pin();
      });
    </script>
    <{$my_code}>
    <!-- 顯示參數，開發用，開發完可刪除 -->
    <{if $show_var=='1'}>
      <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/show_var.tpl"}>
    <{/if}>
  </body>
</html>