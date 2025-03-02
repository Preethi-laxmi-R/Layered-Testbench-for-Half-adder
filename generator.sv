class generator;
transaction trans;// handle of transaction class
mailbox gen2driv;//mailbox declaration

function new(mailbox gen2driv);
 this.gen2driv=gen2driv;
 endfunction
 
 task main();
 repeat(1)
 begin
 trans = new();
 trans.randomize();
 trans.display("Generator");
 gen2driv.put(trans);
 end
 endtask
 endclass
