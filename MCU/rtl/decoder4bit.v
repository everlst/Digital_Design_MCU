module decoder4bit (
    input [3:0] op,
    input [15:0] mayout,
    output out
);
  assign out=
(op==4'b0000)?mayout[0]:
(op==4'b0001)?mayout[1]:
(op==4'b0010)?mayout[2]:
(op==4'b0011)?mayout[3]:
(op==4'b0100)?mayout[4]:
(op==4'b0101)?mayout[5]:
(op==4'b0110)?mayout[6]:
(op==4'b0111)?mayout[7]:
(op==4'b1000)?mayout[8]:
(op==4'b1001)?mayout[9]:
(op==4'b1010)?mayout[10]:
(op==4'b1011)?mayout[11]:
(op==4'b1100)?mayout[12]:
(op==4'b1101)?mayout[13]:
(op==4'b1110)?mayout[14]:
(op==4'b1111)?mayout[15]:
1'bx;//一个4bit的译码器
endmodule
