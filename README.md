# Single-Stage-Pipeline-Register-with-Back-Pressure
The single-stage pipeline register with valid-ready handshake provides a reliable method for data transfer with back-pressure support. Simulation results confirm correct behavior under normal and stalled conditions, making this design suitable for real-world digital systems.
Single Stage Pipeline Register (Valid–Ready Handshake)
# Introduction
A single-stage pipeline register is a basic building block used in digital pipelines to temporarily store data between two stages. It improves data flow control and prevents data loss when the next stage is slow or busy.
This design uses the valid–ready handshake protocol, which is widely used in modern interfaces such as AXI-Stream.
# Block Diagram
        ┌───────────────┐
        │               │
in_data ──►               │
in_valid ─►  PIPELINE REG │──► out_data
in_ready ◄─               │◄── out_ready
        │               │
        └───────────────┘
Inside the Pipeline Register
                ┌─────────────┐
in_data  ──────►│   reg_data  │──────► out_data
                │             │
in_valid ──────►│             │
                │   reg_valid │──────► out_valid
out_ready ─────►│             │
                └─────────────┘
## ✨ Features

- ✔ Single-stage pipeline buffer  
- ✔ Valid–Ready handshake protocol  
- ✔ Back-pressure support  
- ✔ No data loss or overwrite  
- ✔ Active-LOW reset  
- ✔ Fully synthesizable SystemVerilog RTL  
- ✔ Clean and simple design  
- ✔ Simulation verified
- 
Interface Description
input_valid / input_ready : Upstream handshake
out_valid / out_ready : Downstream handshake
Inputs
clk – System clock

reset_n – Active-low reset

input_data [DATA_WIDTH-1:0] – Input data

input_valid – Indicates valid input data

out_ready – Downstream ready signal

Outputs
input_ready – Pipeline ready to accept data

out_data [DATA_WIDTH-1:0] – Stored output data

out_valid – Indicates valid output data Data is accepted only when both input_valid and input_ready are high.
