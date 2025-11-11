module 8bit_shifter(NumA, ShiftType, OutY);
    input[2:0] ShiftType;
    input[7:0] NumA;
    output reg[7:0] OutY;
    parameter k = 3;

    always @(ShiftType or NumA) begin
        case (ShiftType)
            3'b000 : OutY = NumA >> k;
            3'b001 : OutY = NumA << k;
            3'b010 : OutY = NumA >>> k;
            3'b011 : OutY = NumA <<< k;
            3'b100 : OutY = {NumA[k-1:0],NumA[7:k]};
            3'b101 : OutY = {NumA[k+1:0],NumA[7:8-k]};
            default: OutY = 8'b0;
        endcase
    end
endmodule
