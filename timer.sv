`define TIME_50MHZ 32'd24999999
`define TIME_SIM 32'd5

module timer(clk, rst, timedClk);
  input clk, rst;
  output reg timedClk;

  reg [31:0] counter;

  always_ff @(posedge clk) begin
    if (rst) begin
      counter <= 32'd0;
      timedClk <= 1'd0;
    end else begin
      counter++;

      if (counter == `TIME_SIM) begin
        timedClk <= 1'd1;
        counter <= 32'd0;
      end else begin
        timedClk <= 1'd0;
      end
    end
  end
endmodule
