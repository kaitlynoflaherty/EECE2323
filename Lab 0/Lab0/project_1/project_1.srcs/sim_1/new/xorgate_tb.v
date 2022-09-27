`timescale 1ns / 1ps

//Ousmane Toure



module xorgate_tb();
    //inp
    reg a =1'b0;
    reg b =1'b0;
    //out 
    wire c;
    
    xorgate_wrapper UUT
        (.a(a),
         .b(b),
         .c(c)
         );
    
    initial
        begin
            
            #200 //200 ms 
            a=1'b1;
            
            
            #100 //300 ms
            a=1'b0;
            b=1'b1;
            
            
            #100 // 400ms
            a=1'b1;
            
            #150 //550 ms
            a=1'b0;
            b=1'b0;
           
        end
   
endmodule
