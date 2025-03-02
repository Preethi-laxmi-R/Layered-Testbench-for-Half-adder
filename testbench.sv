`include "interface.sv"
`include "test"
module tbench_top;
  
  intf i_intf();
  
  test t1(i_intf);
  HA h1(.a(i_intf.a), .b(i_intf.b), .s(i_intf.sum), .c(i_intf.carry));
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
  
