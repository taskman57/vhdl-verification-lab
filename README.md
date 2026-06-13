# VHDL Verification Lab

Practical VHDL verification lab using GHDL, GTKWave, and partial UVVM utilities to learn verification methodology through real FPGA modules such as counters, SPI, divider, and AXI-Lite designs.

---

## Objective

The goal of this repository is to learn FPGA verification methodology through hands-on projects rather than relying on commercial simulators or advanced verification frameworks.

Topics explored include:

- Self-checking testbenches
- Assertions
- Directed testing
- Bus Functional Models (BFMs)
- Reference models
- Regression testing
- Protocol verification
- Reusable verification components

---

## Toolchain

Current environment:

- GHDL 5.1.1
- GTKWave
- UVVM Utility Library (partial usage)
- VHDL-2008 (limited by GHDL support)

---

### Project 1 - Counter Verification

Project 1 introduces basic verification of a simple synchronous counter.

#### Current Status (Commit 1)

- Counter DUT implemented
- One directed testbench implemented (`tb_counter_basic.vhd`)
- Verification based on assertions and step-by-step checking
- Waveform inspection using GTKWave