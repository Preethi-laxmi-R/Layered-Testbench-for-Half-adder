class driver;
  virtual intf vif; // vif is the handle for virtual interface
  mailbox gen2driv;

  function new(virtual intf vif, mailbox gen2driv);
    this.vif = vif;
    this.gen2driv = gen2driv;
  endfunction

  task main();
    repeat(1)
    begin
      transaction trans;
      gen2driv.get(trans); // Get transaction from mailbox

      vif.a = trans.a;  // Use blocking assignment (=)
      vif.b = trans.b;

      trans.sum = vif.sum;
      trans.carry = vif.carry;
      trans.display("Driver");
    end
  endtask
endclass
