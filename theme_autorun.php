<?php
use XoopsModules\Tadtools\Utility;
xoops_load('XoopsFormRendererBootstrap5');
XoopsFormRenderer::getInstance()->set(new XoopsFormRendererBootstrap5());

global $xoopsTpl, $WebID;
if ($_SESSION['xoops_version'] < 20511) {
    $xoopsTpl->register_function('xoBlock', 'xoBlock');
    function xoBlock()
    {return;}
}

if ($WebID) {
    $tad_web_config_file = XOOPS_VAR_PATH . "/tad_web/$WebID/tad_web_config.json";
    $tad_web_config = json_decode(file_get_contents($tad_web_config_file), true);
    Utility::test($tad_web_config_file, 'tad_web_config_file', 'dd');
    Utility::test($tad_web_config, 'tad_web_config', 'dd');
    foreach ($tad_web_config as $key => $value) {
        $xoopsTpl->assign($key, $value);
    }
}
