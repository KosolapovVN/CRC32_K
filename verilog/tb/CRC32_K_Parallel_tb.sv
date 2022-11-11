`timescale 1ns/1ns
module CRC32_K_Parallel_tb();

	// Parameters
	parameter INITIAL_STATES = 32'h00000000;
	parameter MAIN_CLK_DELAY = 2; 
  
	// Main control
	logic r_clk 	= 1'b0;
	logic r_rst_n 	= 1'b0; 

	// DownLoad Data 
	logic r_Init 	= 1'b0;
  	logic r_RX_En	= 1'b0;
	logic [7:0] r_RX_Byte;
 
	// Output CRC
  	logic [31:0] w_CRC;
	logic [31:0] w_CRC_Reversed;
	logic [31:0] w_CRC_Xor;
	logic [31:0] w_CRC_Xor_Reserved;
	
	always #(MAIN_CLK_DELAY) r_clk = ~ r_clk;	

	// Describe UUT
  	CRC32_K_Parallel
	#(.INITIAL_STATES(INITIAL_STATES)) CRC32_K_Parallel_UUT   
	
	(	
	// Main Control Signals
	.clk(r_clk),
   	.rst_n(r_rst_n),
    
	// DownLoad Data Signals  
	.i_Init(r_Init),
  	.i_RX_En(r_RX_En),
	.i_RX_Byte(r_RX_Byte),
     
	// Output CRC Signals
	.o_CRC(w_CRC),
	.o_CRC_Xor(w_CRC_Xor),
   	.o_CRC_Reversed(w_CRC_Reversed),
	.o_CRC_Ready(w_CRC_Ready),
	.o_CRC_Xor_Reserved(w_CRC_Xor_Reserved)
	);

	// Task to send one byte
	task SendByte(input [7:0] data);
		@(posedge r_clk);
		r_RX_Byte	<= {data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7]};
		r_RX_En 	<= 1'b1;
		@(posedge r_clk);
		r_RX_En		<= 1'b0;
		@(posedge w_CRC_Ready);
	endtask


	initial
	begin
		repeat(10) @(posedge r_clk);
      	r_rst_n = 1'b0;
      	repeat(10) @(posedge r_clk);
      	r_rst_n = 1'b1;
      	repeat(10) @(posedge r_clk);
		r_Init = 1'b1;
		@(posedge r_clk);
      	r_Init = 1'b0;
		


		SendByte(8'hAA);
		$display("Sent out 0x%X",8'hAA); 
      	SendByte(8'h81);
		$display("Sent out 0x%X",8'h81);
   		$display("CRC 0x%X",w_CRC);
		repeat(10) @(posedge r_clk);	
	end	

endmodule




	
	
