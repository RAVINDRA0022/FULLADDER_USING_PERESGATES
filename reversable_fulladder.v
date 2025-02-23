`timescale 1ns / 1ps


module fulladder(input A, B, C, output sum, carry);
    wire P1, Q1, R1;
    wire P2, Q2, R2;

    peres_gate PG1(.A(A), .B(B), .C(1'b0), .P(P1), .Q(Q1),.R(R1));
 
    peres_gate PG2(.A(Q1), .B(C), .C(1'b0), .P(P2), .Q(sum),.R(R2) );
    
    assign carry = R1 | R2;  

endmodule

module peres_gate(input A, B, C, output P, Q, R);        
    assign P = A;
    assign Q = A ^ B;
    assign R = (A & B) ^ C;
endmodule
