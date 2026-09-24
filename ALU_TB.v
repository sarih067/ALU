module ALU_TB;
  reg clktb, rst_ntb, validtb;
  reg [3:0] opcodetb;
  reg [7:0] atb, btb;
  wire [7:0] restb;
  wire donetb;

  ALU_main ALU (
      .clk(clktb),
      .rst_n(rst_ntb),
      .valid(validtb),
      .opcode(opcodetb),
      .A(atb),
      .B(btb),
      .result(restb),
      .done(donetb)
  );
  initial begin
    clktb = 1'b0;
  end
  always #5 clktb = ~clktb;
  initial begin
    rst_ntb  = 1'b1;
    validtb  = 1'b0;
    opcodetb = 4'b0000;
    atb      = 8'b0;
    btb      = 8'b0;
    $display("reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b", rst_ntb, validtb, opcodetb,
             atb, btb, restb, donetb);
    #2 rst_ntb = 1'b0;
    #2 rst_ntb = 1'b1;
    #2 validtb = 1'b1;
    #2 atb = 8'b00000101;
    #2 btb = 8'b00000101;
    opcodetb = 4'b0000;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0001;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0010;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0011;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0100;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0101;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0110;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0111;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b1000;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    #2 atb = 8'b01000001;
    #2 btb = 8'b00000101;
    opcodetb = 4'b0000;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0001;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0010;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0011;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0100;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0101;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0110;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0111;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b1000;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    #2 atb = 8'b01011101;
    #2 btb = 8'b01000001;
    opcodetb = 4'b0000;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0001;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0010;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0011;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0100;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0101;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0110;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b0111;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    opcodetb = 4'b1000;
    @(posedge clktb);
    #1
    $display(
        "reset=%b,valid=%b,Opcode=%b A=%d B=%d Result=%d Done=%b",
        rst_ntb,
        validtb,
        opcodetb,
        atb,
        btb,
        restb,
        donetb
    );
    #5 $finish;

  end
  initial begin
    $dumpfile("ADD_TB.vcd");
    $dumpvars(0, ALU_TB);
  end
endmodule
