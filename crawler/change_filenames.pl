#!/usr/bin/perl  

use warnings;
use strict;
 
use LWP::UserAgent;  
my $browser = LWP::UserAgent->new;  
my $protein = "MSSSTPFDPYALSEHDEERPQNVQSKSRTAELQAEIDDTVGIMRDNINKVAERGERLTSI";  
my $SUSUI_URL = "http://.enzim.hu/hmmtop/server/hmmtop.cgi";  
my $response = $browser->post($SUSUI_URL,['if'=>$protein,]);  
 
if($response->is_success)
{  
    print $response->content;  
}
else
{  
    print "Badluckthistime\n";  
}  
