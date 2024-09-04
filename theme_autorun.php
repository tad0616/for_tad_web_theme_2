<?php
xoops_load('XoopsFormRendererBootstrap5');
XoopsFormRenderer::getInstance()->set(new XoopsFormRendererBootstrap5());

global $xoopsTpl;
if ($_SESSION['xoops_version'] < 20511) {
    $xoopsTpl->register_function('xoBlock', 'xoBlock');
    function xoBlock()
    {return;}
}
