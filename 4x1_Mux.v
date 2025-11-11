module mux_4x1(sel, Inp, Outp);
    input [1:0] sel;
    input wire [3:0] Inp;
    output reg Outp; 

    always @(sel or Inp) begin
        case (sel)
            2'b00 : Outp = Inp[0];
            2'b01 : Outp = Inp[1];
            2'b10 : Outp = Inp[2];
            2'b11 : Outp = Inp[3]; 
            default: Outp = 1'b0;
        endcase        
    end
endmodule