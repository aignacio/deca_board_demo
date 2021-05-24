module top (
  input               arst_n,
  input               clk_50MHz,
  input               jtag_tms,
  input               jtag_tdi,
  output              jtag_tdo,
  input               jtag_tck,
  output logic [6:0]  leds,
  output logic [3:0]  heartbeat,
  input               uart_rxd,
  output              uart_txd
);
  logic [31:0]  gpio_write;
  logic         arst;
  logic [31:0]  counter_ff;
  logic         heartbeat_ff;

  assign arst = ~arst_n;
  assign leds = gpio_write[7:0];
  assign heartbeat = {4{heartbeat_ff}};

  always_ff @ (posedge clk_50MHz or posedge arst) begin
    if (arst) begin
      counter_ff    <=  '0;
      heartbeat_ff  <=  '0;
    end
    else begin
      if (counter_ff == 'd25_000_000) begin
        counter_ff    <=  'd0;
        heartbeat_ff  <=  ~heartbeat_ff;
      end
      else begin
        counter_ff <= counter_ff+'d1;
      end
    end
  end

  Murax u_murax(
    .io_asyncReset        (arst),
    .io_mainClk           (clk_50MHz),
    .io_jtag_tms          (jtag_tms),
    .io_jtag_tdi          (jtag_tdi),
    .io_jtag_tdo          (jtag_tdo),
    .io_jtag_tck          (jtag_tck),
    .io_gpioA_read        ('0),
    .io_gpioA_write       (gpio_write),
    .io_gpioA_writeEnable (),
    .io_uart_txd          (uart_txd),
    .io_uart_rxd          (uart_rxd)
  );
endmodule
