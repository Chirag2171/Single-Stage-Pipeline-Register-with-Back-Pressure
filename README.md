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
