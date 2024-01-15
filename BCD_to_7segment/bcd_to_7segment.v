// 7 segment display using the case statement 
// g of the segment display is most significant digit here
// the display is assumed to be comman cathode 

module binary_to_7segment ( i_bcd, o_segment );

      input  [3:0] i_bcd ;
	  output [6:0] o_segment;
	  
	  reg [6:0] r_segment;
	  
	  always @( i_bcd)
	  begin 
	      case (i_bcd)
		   4'b0000 : r_segment <= 7'h3F;  //0
		   4'b0001 : r_segment <= 7'h06;  //1
                   4'b0010 : r_segment <= 7'h5B;  //2
		   4'b0011 : r_segment <= 7'h4F;  //3
                   4'b0100 : r_segment <= 7'h66;  //4
		   4'b0101 : r_segment <= 7'h6D;  //5
		   4'b0110 : r_segment <= 7'h7D;  //6
                   4'b0111 : r_segment <= 7'h07;  //7
                   4'b1000 : r_segment <= 7'h7F;  //8
		   4'b1001 : r_segment <= 7'h67;  //9
		   4'b1010 : r_segment <= 7'h77;  //A 
		   4'b1011 : r_segment <= 7'h7C;  //B
		   4'b1100 : r_segment <= 7'h39;  //C
		   4'b1101 : r_segment <= 7'h5E;  //D
		   4'b1110 : r_segment <= 7'h79;  //E
		   4'b1111 : r_segment <= 7'h71;  //F
	      endcase 
            end	// always block 	  
	      
	assign o_segment = r_segment; 
    
    endmodule // binary_to_7segment	