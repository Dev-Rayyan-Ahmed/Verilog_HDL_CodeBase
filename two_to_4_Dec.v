module two_to_four_Dec(
    input wire En,
    input wire [1:0] In,
    output reg [3:0] Out
);
    always @(In or En) begin
        if (~En) 
        begin
            Out = 4'b0000;
        end
        else
        begin
            case (In)
                2'b00: Out = 4'b0001;
                2'b01: Out = 4'b0010; 
                2'b10: Out = 4'b0100;
                2'b11: Out = 4'b1000;
                default: Out = 4'bxxxx;
            endcase
        end
    end
endmodule