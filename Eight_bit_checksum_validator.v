`timescale 1ns/1ps
module Eight_bit_checksum_validator ( 
input reset,
input[39:0] ip,
output checksum_valid
);
  reg [7:0] sum;

assign sum = ip[39:32] + ip[31:24] + ip[23:16] + ip[15:8] + ip[7:0];
assign checksum_valid = (sum == 8'b11111111);

  
endmodule
