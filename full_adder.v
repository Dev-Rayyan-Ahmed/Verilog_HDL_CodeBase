module full_adder(x, y, cin, s, cout);
    input x,y,cin;
    output wire s, cout;
    assign s = x ^ y ^ cin;
    assign cout = ((x^y)&cin)|(x&y);

endmodule
