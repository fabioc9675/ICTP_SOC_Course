
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [1:0] axis_block_sigs;
wire [4:0] inst_idle_sigs;
wire [1:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~Loop_Shift_Accum_Loop_proc2_U0.x_TDATA_blk_n;
assign axis_block_sigs[1] = ~Block_for_end_proc_U0.y_TDATA_blk_n;

assign inst_idle_sigs[0] = Loop_Shift_Accum_Loop_proc2_U0.ap_idle;
assign inst_block_sigs[0] = (Loop_Shift_Accum_Loop_proc2_U0.ap_done & ~Loop_Shift_Accum_Loop_proc2_U0.ap_continue);
assign inst_idle_sigs[1] = Block_for_end_proc_U0.ap_idle;
assign inst_block_sigs[1] = (Block_for_end_proc_U0.ap_done & ~Block_for_end_proc_U0.ap_continue);

assign inst_idle_sigs[2] = 1'b0;
assign inst_idle_sigs[3] = Loop_Shift_Accum_Loop_proc2_U0.ap_idle;
assign inst_idle_sigs[4] = Block_for_end_proc_U0.ap_idle;

fir_hls_deadlock_idx0_monitor fir_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
