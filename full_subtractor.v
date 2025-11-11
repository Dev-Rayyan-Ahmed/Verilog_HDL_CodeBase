module full_subtractor(x, y, bin, d, bout);
    input x, y, bin;
    output d, bout;

    assign d = x^y^bin;
    assign bout = (~x&y) | (~x&bin) | (y&bin);
endmodule