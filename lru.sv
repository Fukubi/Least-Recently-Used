module lru(clk, rst, b1, b2, b3, b4, l1, l2, l3, l4);
  input clk;
  input rst;
  input b1, b2, b3, b4;
  output reg l1, l2, l3, l4;

  reg timedClk;

  reg [2:0][4:0] queue;

  enum {BEGIN, INITIAL, PUSH} ActualState, NextState;

  timer t(.clk(clk), .rst(rst), .timedClk(timedClk));

  always_comb begin
    if (rst) ActualState = BEGIN;
    else ActualState = NextState;

    case (ActualState)
      BEGIN: begin
        l1 = 1'b0;
        l2 = 1'b0;
        l3 = 1'b0;
        l4 = 1'b0;

        queue = 25'd0;
      end
      INITIAL: begin
        l1 = 1'b0;
        l2 = 1'b0;
        l3 = 1'b0;
        l4 = 1'b0;

        for (reg [2:0] i = 0; i < 3'd5; i++) begin
          if (queue[i] == 3'd1) begin
            l1 = 1'b1;
          end else if (queue[i] == 3'd2) begin
            l2 = 1'b1;
          end else if (queue[i] == 3'd3) begin
            l3 = 1'b1;
          end else if (queue[i] == 3'd4) begin
            l4 = 1'b1;
          end
        end
      end
      PUSH: begin
          queue = queue << 5;

          if (b1) begin
            queue[0] = 5'd1;
          end else if (b2) begin
            queue[0] = 5'd2;
          end else if (b3) begin
            queue[0] = 5'd3;
          end else if (b4) begin
            queue[0] = 5'd4;
          end
      end
    endcase
  end

  always_ff @(posedge timedClk) begin
    NextState <= ActualState;

    case (NextState)
      BEGIN: NextState <= INITIAL;
      INITIAL: if (b1 || b2 || b3 || b4) NextState <= PUSH;
      PUSH: NextState <= INITIAL;
    endcase
  end
endmodule
