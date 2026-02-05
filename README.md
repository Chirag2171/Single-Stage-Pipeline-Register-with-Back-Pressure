# Single-Stage-Pipeline-Register-with-Back-Pressure
The single-stage pipeline register with valid-ready handshake provides a reliable method for data transfer with back-pressure support. Simulation results confirm correct behavior under normal and stalled conditions, making this design suitable for real-world digital systems.
Single Stage Pipeline Register (Valid–Ready Handshake)
Introduction
A single-stage pipeline register is a basic building block used in digital pipelines to temporarily store data between two stages. It improves data flow control and prevents data loss when the next stage is slow or busy.
This design uses the valid–ready handshake protocol, which is widely used in modern interfaces such as AXI-Stream.
