// Using Gate Level Implementation

module decoder_2x4(In, Out, En);
    input wire[1:0] In;
    input wire En;
    output wire [3:0] Out;

    and(Out[0],~In[1],~In[0],En);
    and(Out[1],~In[1],In[0],En);
    and(Out[2],In[1],~In[0],En);
    and(Out[3],In[1],In[0],En);
endmodule

module decoder_3x8(In,Out);
    input wire[2:0] In;
    output wire[7:0] Out;

    wire In2_n;
    not(In2_n, In[2]);

    decoder_2x4 d0(In[1:0], Out[3:0], In2_n);
    decoder_2x4 d1(In[1:0], Out[7:4], In[2]);
endmodule