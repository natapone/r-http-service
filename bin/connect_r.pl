use Statistics::R;

# Create a communication bridge with R and start R
my $R = Statistics::R->new();

# Pass and retrieve data (scalars or arrays)
my $input_value = 1;
$R->set('x', $input_value);
$R->run(q`y <- x^2`);
my $output_value = $R->get('y');
print "y = $output_value\n";
  