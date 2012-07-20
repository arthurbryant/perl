package BankAccount;

$total = 0;

sub deposit
{
	my ($amount) = @_;
	$total += $amount;
	print "After deposit, total = $total.\n";
}

sub withdraw
{
	my ($amount) = @_;
	$total -= $amount;
	$total = 0 if $total < 0;	
	print "After withraw, total = $total.\n";
}

1;
