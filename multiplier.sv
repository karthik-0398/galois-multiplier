module multiplier(input logic [2:0]A ,logic [2:0]B , logic clk , logic n_rst , 
				  output logic [2:0]Y );
	enum {idle , ready} state ;			  
always_ff@(posedge clk, negedge n_rst)
				begin : SEQ 
					if (~n_rst)
					    state <= idle ;
					else 
						state <= ready ;
				end 
always_comb				
	begin : COM 
		Y[0] = (A[2] & B[2]) ^ (A[2] & B[1]) ^ (A[1] & B[2]) ^ (A[0] & B[0]) ;
		Y[1] = (A[2] & B[2]) ^ (A[1] & B[0]) ^ (A[0] & B[1]) ;
		Y[2] = (A[2] & B[2]) ^ (A[2] & B[1]) ^ (A[1] & B[2]) ^ (A[2] & B[0]) ^ (A[1] & B[1]) ^ (A[0] & B[2])  ;
	end 	
endmodule