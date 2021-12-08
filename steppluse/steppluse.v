module steppluse(P,M,Start,Stop,Step,Clk);
input Clk,Start,Stop,Step;
output P,M;

reg[3:0] M=4'b0011;
reg[3:0] P=4'b0000;

integer i=0;

always@(posedge Clk) begin
P[0]<=P[3];
P[3:1]<=P[2:0];

if(i==0) begin

if(~Start) begin
	P<=4'b0001;
end 

if(~Stop) begin
	P<=4'b0000;
end

if(~Step) begin
	P<=4'b0001;
	i=1;
end
end else begin
if(i==4) begin
	i=0;
	P<=4'b0000;
end
else begin
	i=i+1;
end
end
end

endmodule
