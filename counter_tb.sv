module counter_tb;

logic clk;
logic rst;
logic [3:0] count;

counter uut (
    .clk(clk),
    .rst(rst),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;

    #10;
    rst = 0;

    #100;

    $finish;
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, counter_tb);
end

endmodule
