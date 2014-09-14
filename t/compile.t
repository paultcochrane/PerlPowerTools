use Test::More 0.94;
use Config;

my $perl = $Config{perlpath};

foreach my $program ( glob( "bin/*" ) ) {
	subtest $program => sub {
		my $output = `$perl -c $program 2>&1`;
		like( $output, qr/syntax OK/, "$program compiles" );
		
		}
	}

done_testing();
