<!DOCTYPE html>
<html lang="<{$xoops_langcode|default:''}>">
    <head>
        <{assign var="bootstrap" value=$smarty.session.bootstrap|default:$session.bootstrap}>
        <!--目前$_SESSION['bootstrap']="<{$bootstrap|default:''}>"; -->
        <!--將目前的資料夾名稱，設定為樣板標籤變數 theme_name-->
        <{assign var="theme_name" value=$xoTheme->folderName}>
        <!--目前佈景=<{$theme_name|default:''}> -->
        <{assign var="bootstrap" value=5}>

        <{include file="$xoops_rootpath/modules/tadtools/themes_common/meta.tpl"}>
        <!-- 網站的標題及標語 -->
        <title><{$xoops_sitename|default:''}> - <{$xoops_pagetitle|default:''}></title>

        <{$module_css|default:''}>
        <{include file="$xoops_rootpath/modules/tadtools/themes5_tpl/link_css.tpl"}>
        <link href="<{$xoops_url}>/modules/tadtools/css/iconize.css" rel="stylesheet" media="screen" type="text/css" />
        <link rel="stylesheet" type="text/css" media="all"  href="<{$xoops_imageurl|default:''}>/css/style.css" />

        <!-- 給模組套用的樣板標籤 -->
        <{$xoops_module_header|default:''}>

        <style>
            <{if $theme_display_mode|default:'' !="blank"}>
                body{
                font-family: "Microsoft JhengHei UI";
                <{if $bg_color|default:false}>background-color: <{$bg_color|default:''}>;<{/if}>
                <{if $web_bg|default:false}>
                    <{if $web_bg|strpos:"bg_$WebID_" !== false}>
                        background-image: url('<{$xoops_url}>/uploads/tad_web/<{$WebID|default:''}>/bg/<{$web_bg|default:''}>');
                    <{else}>
                        background-image: url('<{$xoops_url}>/modules/tad_web/images/bg/<{$web_bg|default:''}>');
                    <{/if}>
                <{/if}>
                <{if $bg_repeat|default:false}>background-repeat: <{$bg_repeat|default:''}>;<{/if}>
                <{if $bg_attachment|default:false}>background-attachment: <{$bg_attachment|default:''}>;<{/if}>
                <{if $bg_postiton|default:false}>background-position: <{$bg_postiton|default:''}>;<{/if}>
                <{if $bg_size|default:false}>background-size: <{$bg_size|default:''}>;<{/if}>
                }
            <{else}>
                body{
                font-family: "Microsoft JhengHei UI";
                }
            <{/if}>

            .sf-menu a{
                color: <{$navbar_color|default:''}>;
            }
            .sf-menu a:hover{
                color: <{$navbar_color_hover|default:''}>;
            }

            .sf-menu{
                width: 100%;
                float: none;
            }
            .sf-menu, .sf-menu * {
                font-size: <{$menu_font_size|default:''}>;
            }

            #tad_sf_menu{
                background-color: <{$navbar_bg_top|default:''}>;
                z-index:197;
            }

            .web_center_block {
                color: <{$center_text_color|default:''}> ;
            }

            .web_center_block a{
                color: <{$center_link_color|default:''}> ;
            }

            .web_center_block a:hover{
                color: <{$center_hover_color|default:''}> ;
            }

            .web_center_block h1,.web_center_block h2,.web_center_block h3{
                color: <{$center_header_color|default:''}>;
                text-shadow: 1px 1px 0 <{$center_border_color|default:''}>, -1px -1px 0 <{$center_border_color|default:''}>, 1px -1px 0 <{$center_border_color|default:''}>, -1px 1px 0 <{$center_border_color|default:''}>,1px 0px 0 <{$center_border_color|default:''}>, -1px 0px 0 <{$center_border_color|default:''}>, 0px -1px 0 <{$center_border_color|default:''}>, 0px 1px 0 <{$center_border_color|default:''}>;
            }

            .web_side_block {
                color: <{$side_text_color|default:''}> ;
            }

            .web_side_block a{
                color: <{$side_link_color|default:''}> ;
            }

            .web_side_block a:hover{
                color: <{$side_hover_color|default:''}> ;
            }

            .web_side_block h1,.#web_side_block h2,.web_side_block h3{
                color: <{$side_header_color|default:''}>;
                text-shadow: 1px 1px 0 <{$side_border_color|default:''}>, -1px -1px 0 <{$side_border_color|default:''}>, 1px -1px 0 <{$side_border_color|default:''}>, -1px 1px 0 <{$side_border_color|default:''}>,1px 0px 0 <{$side_border_color|default:''}>, -1px 0px 0 <{$side_border_color|default:''}>, 0px -1px 0 <{$side_border_color|default:''}>, 0px 1px 0 <{$side_border_color|default:''}>;
            }

            .list-group, .list-group-item, .well{
                background: transparent url('<{$xoops_imageurl|default:''}>/images/tran50.png');
            }

            .sf-menu a{
                color: <{$navbar_color|default:''}>;
                border-top: none;
            }

            .sf-arrows .sf-with-ul:after {
                border-top-color: <{$navbar_color|default:''}>;
            }

            .sf-arrows > li > .sf-with-ul:focus:after,
            .sf-arrows > li:hover > .sf-with-ul:after,
            .sf-arrows > .sfHover > .sf-with-ul:after {
                border-top-color: <{$navbar_color_hover|default:''}>; /* IE8 fallback colour */
            }

            .sf-arrows ul .sf-with-ul:after {
                border-left-color: <{$navbar_color|default:''}>;
            }

            .sf-arrows ul li > .sf-with-ul:focus:after,
            .sf-arrows ul li:hover > .sf-with-ul:after,
            .sf-arrows ul .sfHover > .sf-with-ul:after {
                border-left-color: <{$navbar_color_hover|default:''}>;
            }

        </style>
        <{if $_IS_EZCLASS|default:false}>
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

    <body <{$prism_setup|default:''}>>
        <{if $web_display_mode=="no"}>
            <h3 class="sr-onlu">Site closed</h3>
            <div class="container" id="container" style="background-color: <{$container_bg_color|default:''}>;">
                <div name="top" style="height:1px;"></div>
                <div style="margin-top: 10px;">
                    <{include file="$xoops_rootpath/modules/tad_web/templates/tad_web_header.tpl"}>
                </div>

                <div class="row">
                    <{include file="$xoops_rootpath/modules/tadtools/themes_common/menu/superfish/menu.tpl"}>

                    <div class="col-sm-12 text-center" id="web_center_block">
                        <a href="index.php">
                            <img src="<{$xoops_url}>/modules/tad_web/images/site_close.png" alt="The web does not exist!">
                        </a>
                    </div>
                </div>
            </div>
        <{elseif $theme_display_mode|default:'' =="blank"}>
            <{if $blank_kind=="content"}>
                <{include file="$xoops_rootpath/modules/tad_web/templates/tad_web_blank.tpl"}>
            <{else}>
                <{include file="$xoops_rootpath/modules/tad_web/templates/tad_web_blocks_demo.tpl"}>
            <{/if}>
        <{else}>
            <div class="container" id="container" style="background-color: <{$container_bg_color|default:''}>;">
                <div name="top" style="height:1px;"></div>
                <div style="margin-top: 10px;">
                    <{include file="$xoops_rootpath/modules/tad_web/templates/tad_web_header.tpl"}>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <{include file="$xoops_rootpath/modules/tadtools/themes_common/menu/superfish/menu.tpl"}>
                    </div>
                </div>

                <{if $theme_side=="none"}>
                    <div class="web_center_block" id="web_center_block">
                        <{include file="$xoops_rootpath/modules/tad_web/templates/tad_web_blocks_center.tpl"}>
                    </div>
                <{else}>
                    <div class="row">
                        <{if $theme_side=="left"}>
                            <div class="col-sm-3 web_side_block" id="web_side_block">
                                <div <{if $side_bg_color!=$container_bg_color }>style="background: <{$side_bg_color|default:''}>; border-radius: 5px; padding: 20px 10px; margin-bottom: 20px;"<{/if}>>
                                <{include file="$xoops_rootpath/modules/tad_web/templates/tad_web_blocks_side.tpl"}>
                                </div>
                            </div>
                        <{/if}>

                        <div class="col-sm-9 web_center_block" id="web_center_block">
                            <{include file="$xoops_rootpath/modules/tad_web/templates/tad_web_blocks_center.tpl"}>
                        </div>

                        <{if $theme_side=="right"}>
                            <div class="col-sm-3 web_side_block" id="web_side_block">
                                <div <{if $side_bg_color!=$container_bg_color}>style="background: <{$side_bg_color|default:''}>; border-radius: 5px; padding: 20px 10px; margin-bottom: 20px;"<{/if}>>
                                <{include file="$xoops_rootpath/modules/tad_web/templates/tad_web_blocks_side.tpl"}>
                                </div>
                            </div>
                        <{/if}>
                    </div>
                <{/if}>
            </div>

            <div id="tad_web_footer" style="background: #000000; color: #fcfcfc; font-size: 0.8em; font-family: Arial, Tahoma, Helvetica, Comic Sans MS, Georgia; padding: 5px; margin-top: 30px;">

                <{if $_IS_EZCLASS|default:false}>
                <div class="row">
                    <div class="col-sm-6 text-left"><a href="https://class.tn.edu.tw/<{$WebID|default:''}>" target="_blank">本站網址：<span style="color:#60FF88;">https://class.tn.edu.tw/<{$WebID|default:''}></span></a></div>
                    <div class="col-sm-6 text-right"><a href="https://class.tn.edu.tw" target="_blank">本站使用「班網輕鬆架」服務架設</a></div>
                </div>
                <{else}>
                <div class="text-center">
                    <a href="http://campus-xoops.tn.edu.tw/modules/tad_modules/index.php?module_sn=16" target="_blank">tad web</a> version: <{$your_version|default:''}>
                </div>
                <{/if}>
            </div>
        <{/if}>

        <!-- 載入bootstrap -->
        <{include file="$xoops_rootpath/modules/tadtools/themes5_tpl/bootstrap_js.tpl"}>

        <!-- 載入自訂js -->
        <{include file="$xoops_rootpath/modules/tadtools/themes5_tpl/my_js.tpl"}>

        <script type="text/javascript" src="<{$xoops_url}>//modules/tadtools/jquery.sticky/jquery.sticky.js"></script>
        <script type='text/javascript'>
            $(document).ready(function(){
                $('#tad_sf_menu').sticky({topSpacing:0 , zIndex: 100});
            });
        </script>
        <{$my_code|default:''}>
        <!-- 顯示參數，開發用，開發完可刪除 -->
        <{if $show_var=='1'}>
            <{include file="$xoops_rootpath/modules/tadtools/themes_common/show_var.tpl"}>
        <{/if}>
    </body>
</html>