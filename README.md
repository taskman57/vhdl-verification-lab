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

Completed a full verification flow using a simple counter design.

#### Achievements

- Directed verification testbench implemented
- Procedure-based automated self-checking testbench implemented
- Session-based error tracking signal added (`error_detected`)
- Repeated verification sessions supported
- Introduction of reusable checker concept

#### Learning Outcome

This project demonstrates the evolution from basic directed verification to scalable self-checking testbench design.

---

#### Status

✔ Completed

### Project 2 - Sequential Truncated Restoring Divider

The verification environment employs a reference model to independently calculate the expected quotient and compare it against DUT outputs.

#### Objectives

* Introduce reference-model based verification
* Compare DUT results against mathematically calculated expected results
* Verify correct operation across representative input combinations
* Prepare the foundation for reusable scoreboards
* Introduce corner-case verification

#### Planned Verification Topics

* Start/ready handshake verification
* Quotient correctness checking
* Reference model implementation
* Corner-case testing
* Mini scoreboard development

#### Learning Outcome

This project introduces the concept of a reference model, where expected DUT behavior is calculated independently and automatically-
compared against actual DUT outputs. This represents the first step toward scalable verification environments.

#### Status

🚧 In Progress
