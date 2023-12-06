`timescale 1ns/1ps
module Eight_bit_checksum_generator (
input reset,
input[31:0] ip,
output [39:0] op
);
  reg [7:0] checksum;

assign checksum = (ip[31:24] + ip[23:16] + ip[15:8] + ip[7:0]);
assign op = {~checksum, ip};

  
endmodule
