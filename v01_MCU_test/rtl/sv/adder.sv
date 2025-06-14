module adder #(
    parameter WIDTH = 8
) (
    input  logic [WIDTH-1:0] a,
    input  logic [WIDTH-1:0] b,
    output logic [WIDTH-1:0] y
);

    always_comb 
        y = a + b;
    
    
endmodule