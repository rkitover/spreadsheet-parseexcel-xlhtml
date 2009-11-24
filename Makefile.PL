use inc::Module::Install 0.91;

name     'Spreadsheet-ParseExcel_XLHTML';
all_from 'lib/Spreadsheet/ParseExcel_XLHTML.pm';

requires 'Spreadsheet::ParseExcel';

auto_provides;
auto_install;

resources repository =>
    'git://github.com/rkitover/spreadsheet-parseexcel-xlhtml.git';

if ($Module::Install::AUTHOR) {
    system('pod2text lib/Spreadsheet/ParseExcel_XLHTML.pm > README');
}

realclean_files 'README';

WriteAll;
