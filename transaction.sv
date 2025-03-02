class transaction;
   // Stimuli are declared with rand keyword
   rand bit a;
   rand bit b;
   bit sum;
   bit carry;

   // Function for displaying values of a, b, sum, and carry
   function void display(input string name);
      $display("--------------");
      $display("%s", name);
      $display("---------------");
      $display("a=%0d, b=%0d", a, b);
      $display("sum=%0d, carry=%0d", sum, carry);
      $display("---------------");
   endfunction
endclass



 
 
