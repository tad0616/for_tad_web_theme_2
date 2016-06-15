<?php
include_once XOOPS_ROOT_PATH . '/modules/tadtools/language/' . $GLOBALS['xoopsConfig']['language'] . '/theme_common.php';

/**自訂設定之語系**/
define("TF_SHOW_VAR", "Display themes vars.");
define("TF_SHOW_VAR_DESC", "Display all variable of tad_themes module that you could use it to design theme.");
define("TF_FONT_FAMILY", "Theme fonts");
define("TF_FONT_FAMILY_DEFAULT", "\"Helvetica Neue\",Helvetica,Arial,sans-serif");
define("TF_FONT_FAMILY_DESC", "CSS font-family setup.ex:" . TF_FONT_FAMILY_DEFAULT);
define("TF_FOOTER_BGCOLOR", "Footer background color");
define("TF_FOOTER_BGCOLOR_DESC", "Set footer background color.");
define("TF_FOOTER_IMG", "Footer backgorund image");
define("TF_FOOTER_IMG_DESC", "Please upload a background image.");
define("TF_FOOTER_STYLE", "Custom styles");
define("TF_FOOTER_STYLE_DESC", "You can design footer style by CSS.");
define("TF_TOPMENU", "Top Menu");
define("TF_TOPMENU_DEFAULT", '[{"name":"Home","url":"index.php"},\n{"name":"News","url":"/modules/tadnews/"},\n{"name":"Photos","url":"/modules/tadgallery/"},\n{"name":"Files","url":"/modules/tad_uploader/"},\n{"name":"Contact us","url":"/modules/ugm_contact_us/"}]');
define("TF_TOPMENU_DESC", 'json content：[{"name":"item name","url":"item url"},{...},{...}]');
