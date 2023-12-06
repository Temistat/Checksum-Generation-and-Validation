`timescale 1ns/1ps
module Checksum_tb;
  reg reset;
  reg [31:0] ip;
 wire [39:0] op;
  wire checksum_valid;

assign  ip=32;

  // Instantiate the generator and validator
  Eight_bit_checksum_generator uut_gen (
    .reset(reset),
    .ip(ip),
    .op(op)
    
  );




  Eight_bit_checksum_validator uut_val (
    .reset(reset),
    .ip(op),
    .checksum_valid(checksum_valid)
  );
initial
begin
$display(checksum_valid);
end
endmodule

