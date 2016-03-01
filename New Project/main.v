module main;

reg x1, x2;
wire f;

or_gate poarta(.x1(x1), .x2(x2), .f(f));
//and_gate poarta(.x1(x1), .x2(x2), .f(f));

initial begin
$display ("time\t x1 x2    out");	
$monitor ("%g\t %b   %b     %b", $time, x1, x2, f);

x1=0;
x2=0;
#10
x1=0;
x2=1;
#10
x1=1;
x2=0;
#10
x1=1;
x2=1;
#10

$finish;

end
endmodule