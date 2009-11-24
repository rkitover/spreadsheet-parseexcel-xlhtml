use ExtUtils::MakeMaker;

WriteMakefile(
	NAME		=> 'Spreadsheet::ParseExcel',
	VERSION_FROM	=> 'lib/Spreadsheet/ParseExcel_XLHTML.pm',
	ABSTRACT_FROM	=> 'lib/Spreadsheet/ParseExcel_XLHTML.pm',
	PREREQ_PM	=> {
		Spreadsheet::ParseExcel	=> 0,
	},
	DISTNAME	=> 'Spreadsheet-ParseExcel_XLHTML',
	dist		=> {
		COMPRESS => 'gzip -9f',
		SUFFIX   => 'gz',
		PREOP	 => makeReadme(),
	}
);

sub makeReadme {
    return <<EOF;
pod2text -72 < ./blib/lib/Spreadsheet/ParseExcel_XLHTML.pm > ./README ;	\\
EOF
}
