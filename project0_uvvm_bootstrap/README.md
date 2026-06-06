# Project 0 - UVVM Bootstrap

## Goal

The purpose of Project 0 is to establish a lightweight UVVM environment that can be used reliably with GHDL and GTKWave.

The focus is not on achieving full UVVM compatibility, but on creating a practical verification environment that supports learning verification methodology concepts and applying them to real FPGA modules.

---

## Toolchain

Verified environment:

* GHDL 5.1.1
* GTKWave
* UVVM Utility Library
* VHDL-2008 (partial support)

---

## Motivation

Commercial simulators provide extensive VHDL-2008 support and full compatibility with UVVM. Since this repository uses GHDL, some UVVM packages are not currently usable without additional effort.

Rather than investing time into extending UVVM support, the objective is to use the subset that works reliably and focus on verification methodology fundamentals.

---

## UVVM Package Configuration

The following package references in `uvvm_util_context.vhd` were disabled:

```vhdl
-- use uvvm_util.vendor_rand_extension_pkg.all;
-- use uvvm_util.rand_pkg.all;
-- use uvvm_util.func_cov_pkg.all;
```

These packages are related to randomization and functional coverage capabilities.

---

## Successfully Compiled Packages

The following packages were compiled and used successfully:

```vhdl
use uvvm_util.types_pkg.all;
use uvvm_util.global_signals_and_shared_variables_pkg.all;
use uvvm_util.hierarchy_linked_list_pkg.all;
use uvvm_util.string_methods_pkg.all;
use uvvm_util.adaptations_pkg.all;
use uvvm_util.methods_pkg.all;
use uvvm_util.bfm_common_pkg.all;
use uvvm_util.alert_hierarchy_pkg.all;
use uvvm_util.license_pkg.all;
use uvvm_util.protected_types_pkg.all;
```

---

## Current Verification Approach

When a UVVM utility cannot be used with the current toolchain, standard VHDL constructs are preferred.

Example:

```vhdl
assert received_data = expected_data
    report "Verification failed"
    severity error;
```

The emphasis remains on verification methodology concepts rather than on resolving UVVM-specific compatibility issues.

---

## Bootstrap Testbench

A minimal testbench is included to confirm that the selected UVVM subset compiles and simulates correctly.

File:

```text
tb_uvvm_hello.vhd
```

Expected simulation output:

```text
Hello UVVM!
```

This testbench serves as the baseline validation of the verification environment before moving to DUT-specific projects.

---

## Deliverables

Project 0 is considered complete when:

* UVVM utility packages compile successfully.
* The modified context file is documented.
* The bootstrap testbench elaborates and simulates successfully.
* GTKWave can display generated waveforms.
* The environment is ready for Project 1 (Counter Verification).

```
```
