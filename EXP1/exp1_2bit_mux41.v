module exp1_2bit_mux41(X0,X1,X2,X3,Y,F);
	input [1:0] X0;
	input [1:0] X1;
	input [1:0] X2;
	input [1:0] X3;//数据的输入端
	input [1:0] Y;//选择输入
	output reg [1:0] F;//作为输出
	
	always @ (X0 or X1 or X2 or X3 or Y)
		case (Y)
			0: begin F[0] = X0[0]; F[1] = X0[1]; end
			1: begin F[0] = X1[0]; F[1] = X1[1]; end
			2: begin F[0] = X2[0]; F[1] = X2[1]; end
			3: begin F[0] = X3[0]; F[1] = X3[1]; end
			default: begin F[0] = 1'b0; F[1] = 1'b0; end
		endcase
		
endmodule
