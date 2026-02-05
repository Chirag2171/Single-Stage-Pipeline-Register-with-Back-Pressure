module single_stage_pipeline_reg #(
    parameter DATA_WIDTH = 8
)(
    input  logic clk,
    input  logic reset_n,          // active LOW reset

    input  logic [DATA_WIDTH-1:0] in_data,
    input  logic in_valid,
    output logic in_ready,

    output logic [DATA_WIDTH-1:0] out_data,
    output logic out_valid,
    input  logic out_ready
);

    logic [DATA_WIDTH-1:0] reg_data;
    logic reg_valid;

    // -------------------------
    // Ready / Valid logic
    // -------------------------
    assign in_ready  = ~reg_valid || out_ready;
    assign out_valid = reg_valid;
    assign out_data  = reg_data;

    // -------------------------
    // Sequential logic
    // -------------------------
    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            reg_valid <= 1'b0;
            reg_data  <= '0;
        end
        else begin
            // Load data
            if (in_valid && in_ready) begin
                reg_data  <= in_data;
                reg_valid <= 1'b1;
            end
            // Consume data
            else if (out_ready) begin
                reg_valid <= 1'b0;
            end
        end
    end

endmodule
