module halfadder(Ho,Co,Ai,Bi);
input Ai,Bi;
output Ho,Co;

assign Ho=(~Ai&Bi)|(Ai&~Bi);
assign Co=Ai&Bi;

endmodule

module fulladder(So,Co,Ai,Bi,Ci);
input Ai,Bi,Ci;
output So,Co;

assign So=(Ai&~Bi&~Ci)|(~Ai&Bi&~Ci)|(~Ai&~Bi&Ci)|(Ai&Bi&Ci);
assign Co=(Ai&Bi)|(Ai&Ci)|(Bi&Ci);

endmodule

module vadder(D,A,B,M);
input[3:0] A,B;
output D,M;
wire[7:0] D;
wire[3:0] M;
wire[15:0] P;

assign M[0]=1;
assign M[1]=0;
assign M[2]=0;
assign M[3]=0;

assign P[0]=A[0]&B[0];
assign P[1]=A[1]&B[0];
assign P[2]=A[0]&B[1];
assign P[3]=A[2]&B[0];
assign P[4]=A[1]&B[1];
assign P[5]=A[0]&B[2];
assign P[6]=A[3]&B[0];
assign P[7]=A[2]&B[1];
assign P[8]=A[1]&B[2];
assign P[9]=A[0]&B[3];
assign P[10]=A[3]&B[1];
assign P[11]=A[2]&B[2];
assign P[12]=A[1]&B[3];
assign P[13]=A[3]&B[2];
assign P[14]=A[2]&B[3];
assign P[15]=A[3]&B[3];

assign D[0]=P[0];

wire C1;
halfadder H0(D[1],C1,P[1],P[2]);

wire C21,C22,O21;
halfadder H1(O21,C21,P[3],P[4]);
fulladder F0(D[2],C22,P[5],O21,C1);

wire C31,C32,C33,O31,O32;
halfadder H2(O31,C31,P[6],P[7]);
fulladder F1(O32,C32,P[8],O31,C21);
fulladder F2(D[3],C33,P[9],O32,C22);

wire C41,C42,C43,O41,O42;
fulladder F3(O41,C41,P[11],P[10],C31);
fulladder F4(O42,C42,P[11],O41,C32);
halfadder H3(D[4],C43,C33,O42);

wire C51,C52,O51;
fulladder F5(O51,C51,P[14],P[13],C41);
fulladder F6(D[5],C52,O51,C42,C43);

fulladder F7(D[6],D[7],P[15],C51,C52);

endmodule


