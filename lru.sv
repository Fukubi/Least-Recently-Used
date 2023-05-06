module lru(clk, rst, b1, b2, b3, b4, b5, l1, l2, l3, l4, l5);
  input clk;
  input rst;
  input b1, b2, b3, b4, b5;
  output reg l1, l2, l3, l4, l5;

  reg [4:0][9:0] used_counter = 50'd0;

  reg [9:0] timer;
  reg [9:0] index_value = 10'd0;
  reg [2:0] index = 3'd5;
  reg [3:0] pressedIndex;
  reg timedClk;

  timer t(.clk(clk), .rst(rst), .timedClk(timedClk));

  always_ff@(posedge clk) begin
    if (rst) begin
      timer <= 10'd0;
      used_counter[0] <= 10'd0;
      used_counter[1] <= 10'd0;
      used_counter[2] <= 10'd0;
      used_counter[3] <= 10'd0;
      used_counter[4] <= 10'd0;
      
      l1 <= 1'd0;
      l2 <= 1'd0;
      l3 <= 1'd0;
      l4 <= 1'd0;
      l5 <= 1'd0;
    end else begin
      if (timedClk) begin
        timer = timer + 1'd1;

        if (b1) begin
          used_counter[0] = timer;
          pressedIndex = 4'd0;
        end else if (b2) begin
          used_counter[1] = timer;
          pressedIndex = 4'd1;
        end else if (b3) begin
          used_counter[2] = timer;
          pressedIndex = 4'd2;
        end else if (b4) begin
          used_counter[3] = timer;
          pressedIndex = 4'd3;
        end else if (b5) begin
          used_counter[4] = timer;
          pressedIndex = 4'd4;
        end

        if (used_counter[0] && used_counter[1] && used_counter[2] && used_counter[3] && used_counter[4]) begin
          index_value = used_counter[0];
          index = 1'd0;
          
          for (reg [2:0] i = 3'd0; i < 3'd5; i++) begin
            if ((index_value > used_counter[i]) && (i != pressedIndex)) begin
              index_value = used_counter[i];
              index = i;
            end
          end

          used_counter[index] = 10'd0;
        end

        if (used_counter[0]) begin
          l1 <= 1'd1;
        end else begin
          l1 <= 1'd0;
        end

        if (used_counter[1]) begin
          l2 <= 1'd1;
        end else begin
          l2 <= 1'd0;
        end

        if (used_counter[2]) begin
          l3 <= 1'd1;
        end else begin
          l3 <= 1'd0;
        end

        if (used_counter[3]) begin
          l4 <= 1'd1;
        end else begin
          l4 <= 1'd0;
        end

        if (used_counter[4]) begin
          l5 <= 1'd1;
        end else begin
          l5 <= 1'd0;
        end
      end
    end
  end
endmodule
