#!/usr/bin/env perl
$latex            = 'uplatex -synctex=1 -halt-on-error';
$latex_silent     = 'uplatex -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex           = 'upbibtex';
$biber            = 'biber --bblencoding=utf8 -u -U --output_safechars';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode         = 3;
$dvi_previewer = 'start dviout'; # -pv option
$pvc_view_file_via_temporary = 0;
if ($^O eq 'darwin') {
    $pdf_update_method = 4;
    # $pdf_update_command = "open -ga Preview %S";
    $pdf_update_command = "open -ga /Applications/Skim.app %S";
} else {
    $pdf_previewer      = "SumatraPDF -reuse-instance";
    $pdf_update_method  = 4;
    $pdf_update_command = "SumatraPDF %S";
}
