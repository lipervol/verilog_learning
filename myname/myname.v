module myname(M,dotout,selout,clk);
input clk;
output reg[3:0] M=4'b0110;
output reg[15:0] dotout=16'h0000;
output reg[3:0] selout=4'b0000;

reg[15:0] data[0:15];

integer i=0;

always@(posedge clk) begin
if(i<15) begin
	i=i+1;
	selout=selout+1;
	dotout<=data[i];
end else begin
	i=0;
	selout=4'b0000;
	dotout<=data[i];
end
end


reg[11:0] counter=12'h000;
reg[3:0] status=4'b0000; 
	
always@(posedge clk) begin
if(counter==500) begin
	counter=12'h000;
	status=status+1;
end 
else begin
	counter=counter+1;
end

if(status==13) begin
	status=0;
end

case(status)
	//刘
	0:begin data[0]<=16'h1004;data[1]<=16'h0804;data[2]<=16'h0804;data[3]<=16'hffa4;data[4]<=16'h0224;data[5]<=16'h4224;data[6]<=16'h2224;data[7]<=16'h1424;data[8]<=16'h1424;data[9]<=16'h0824;data[10]<=16'h0824;data[11]<=16'h1424;data[12]<=16'h2404;data[13]<=16'h4204;data[14]<=16'h8214;data[15]<=16'h0008;end
	//朋
	1:begin data[0]<=16'h0000;data[1]<=16'h3e7c;data[2]<=16'h2244;data[3]<=16'h2244;data[4]<=16'h2244;data[5]<=16'h3e7c;data[6]<=16'h2244;data[7]<=16'h2244;data[8]<=16'h2244;data[9]<=16'h3e7c;data[10]<=16'h2244;data[11]<=16'h2244;data[12]<=16'h2244;data[13]<=16'h4284;data[14]<=16'h4a94;data[15]<=16'h8508;end
	//宾
	2:begin data[0]<=16'h0200;data[1]<=16'h0100;data[2]<=16'h7ffe;data[3]<=16'h4002;data[4]<=16'h8074;data[5]<=16'h1f80;data[6]<=16'h1000;data[7]<=16'h1000;data[8]<=16'h1ff8;data[9]<=16'h1080;data[10]<=16'h1080;data[11]<=16'hfffe;data[12]<=16'h0000;data[13]<=16'h0840;data[14]<=16'h1020;data[15]<=16'h2010;end
	//2
	3:begin data[0]<=16'h0000;data[1]<=16'h0000;data[2]<=16'h0f80;data[3]<=16'h08c0;data[4]<=16'h0060;data[5]<=16'h0020;data[6]<=16'h0060;data[7]<=16'h0040;data[8]<=16'h00c0;data[9]<=16'h0080;data[10]<=16'h0300;data[11]<=16'h0e10;data[12]<=16'h1ff0;data[13]<=16'h0000;data[14]<=16'h0000;data[15]<=16'h0000;end
	//0
	4:begin data[0]<=16'h0000;data[1]<=16'h03c0;data[2]<=16'h07e0;data[3]<=16'h0c30;data[4]<=16'h0810;data[5]<=16'h1818;data[6]<=16'h1818;data[7]<=16'h1818;data[8]<=16'h1818;data[9]<=16'h1818;data[10]<=16'h0810;data[11]<=16'h0c30;data[12]<=16'h07e0;data[13]<=16'h03c0;data[14]<=16'h0000;data[15]<=16'h0000;end
	//1
	5:begin data[0]<=16'h0000;data[1]<=16'h0180;data[2]<=16'h0380;data[3]<=16'h0180;data[4]<=16'h0180;data[5]<=16'h0180;data[6]<=16'h0180;data[7]<=16'h0180;data[8]<=16'h0180;data[9]<=16'h0180;data[10]<=16'h0180;data[11]<=16'h0180;data[12]<=16'h0180;data[13]<=16'h03c0;data[14]<=16'h0000;data[15]<=16'h0000;end
	//8
	6:begin data[0]<=16'h0000;data[1]<=16'h03c0;data[2]<=16'h07e0;data[3]<=16'h0c30;data[4]<=16'h0c30;data[5]<=16'h0c30;data[6]<=16'h0660;data[7]<=16'h03c0;data[8]<=16'h03c0;data[9]<=16'h0660;data[10]<=16'h0c30;data[11]<=16'h0c30;data[12]<=16'h0c30;data[13]<=16'h07e0;data[14]<=16'h03c0;data[15]<=16'h0000;end
	//0
	7:begin data[0]<=16'h0000;data[1]<=16'h03c0;data[2]<=16'h07e0;data[3]<=16'h0c30;data[4]<=16'h0810;data[5]<=16'h1818;data[6]<=16'h1818;data[7]<=16'h1818;data[8]<=16'h1818;data[9]<=16'h1818;data[10]<=16'h0810;data[11]<=16'h0c30;data[12]<=16'h07e0;data[13]<=16'h03c0;data[14]<=16'h0000;data[15]<=16'h0000;end
	//4
	8:begin data[0]<=16'h0000;data[1]<=16'h0040;data[2]<=16'h00c0;data[3]<=16'h01c0;data[4]<=16'h03c0;data[5]<=16'h06c0;data[6]<=16'h0cc0;data[7]<=16'h18c0;data[8]<=16'h3ffc;data[9]<=16'h00c0;data[10]<=16'h00c0;data[11]<=16'h00c0;data[12]<=16'h00c0;data[13]<=16'h00c0;data[14]<=16'h00c0;data[15]<=16'h0000;end
	//0
	9:begin data[0]<=16'h0000;data[1]<=16'h03c0;data[2]<=16'h07e0;data[3]<=16'h0c30;data[4]<=16'h0810;data[5]<=16'h1818;data[6]<=16'h1818;data[7]<=16'h1818;data[8]<=16'h1818;data[9]<=16'h1818;data[10]<=16'h0810;data[11]<=16'h0c30;data[12]<=16'h07e0;data[13]<=16'h03c0;data[14]<=16'h0000;data[15]<=16'h0000;end
	//2
	10:begin data[0]<=16'h0000;data[1]<=16'h0000;data[2]<=16'h0f80;data[3]<=16'h08c0;data[4]<=16'h0060;data[5]<=16'h0020;data[6]<=16'h0060;data[7]<=16'h0040;data[8]<=16'h00c0;data[9]<=16'h0080;data[10]<=16'h0300;data[11]<=16'h0e10;data[12]<=16'h1ff0;data[13]<=16'h0000;data[14]<=16'h0000;data[15]<=16'h0000;end
	//9
	11:begin data[0]<=16'h0000;data[1]<=16'h0000;data[2]<=16'h07e0;data[3]<=16'h0ff0;data[4]<=16'h0c30;data[5]<=16'h0c30;data[6]<=16'h0c30;data[7]<=16'h0ff0;data[8]<=16'h07f0;data[9]<=16'h0030;data[10]<=16'h0830;data[11]<=16'h0c30;data[12]<=16'h0c70;data[13]<=16'h07e0;data[14]<=16'h0000;data[15]<=16'h0000;end
	//2
	12:begin data[0]<=16'h0000;data[1]<=16'h0000;data[2]<=16'h0f80;data[3]<=16'h08c0;data[4]<=16'h0060;data[5]<=16'h0020;data[6]<=16'h0060;data[7]<=16'h0040;data[8]<=16'h00c0;data[9]<=16'h0080;data[10]<=16'h0300;data[11]<=16'h0e10;data[12]<=16'h1ff0;data[13]<=16'h0000;data[14]<=16'h0000;data[15]<=16'h0000;end
	
	default:begin data[0]<=16'h1004;data[1]<=16'h0804;data[2]<=16'h0804;data[3]<=16'hffa4;data[4]<=16'h0224;data[5]<=16'h4224;data[6]<=16'h2224;data[7]<=16'h1424;data[8]<=16'h1424;data[9]<=16'h0824;data[10]<=16'h0824;data[11]<=16'h1424;data[12]<=16'h2404;data[13]<=16'h4204;data[14]<=16'h8214;data[15]<=16'h0008;end
endcase

end

endmodule

