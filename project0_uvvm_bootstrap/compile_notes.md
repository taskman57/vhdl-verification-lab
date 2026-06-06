# Project 0 - Compilation Notes

## Environment

The following setup was used for Project 0.

### GHDL

GHDL is installed and available through the Windows environment variables (`PATH`).

Example:

```text
ghdl --version
```

can be executed from any command prompt.

### GTKWave

GTKWave installation:

```text
E:\gtkwave64\bin
```

Example:

```text
gtkwave --version
```

can be executed from a command prompt.

### UVVM

UVVM Utility Library location:

```text
E:\UVVM-master\uvvm_util\src
```

The commands below were executed from:

```text
E:\UVVM-master\uvvm_util\src
```

---

## UVVM Context Modifications

The following package references in `uvvm_util_context.vhd` were disabled:

```vhdl
-- use uvvm_util.vendor_rand_extension_pkg.all;
-- use uvvm_util.rand_pkg.all;
-- use uvvm_util.func_cov_pkg.all;
```

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

## Bootstrap Testbench

Source file:

```text
E:\vhdl-verification-lab\project0_uvvm_bootstrap\tb_uvvm_hello.vhd
```

---

## Compilation

From:

```text
E:\UVVM-master\uvvm_util\src
```

run:

```cmd
ghdl -a --std=08 -frelaxed E:\vhdl-verification-lab\project0_uvvm_bootstrap\tb_uvvm_hello.vhd
```

---

## Elaboration

```cmd
ghdl -e --std=08 -frelaxed tb_uvvm_hello
```

---

## Simulation

```cmd
ghdl -r --std=08 -frelaxed tb_uvvm_hello --wave=hello.ghw --stop-time=200ns
```

Expected console output:

```text
Hello UVVM!
```

Generated waveform:

```text
hello.ghw
```

The waveform file is generated in the current working directory:

```text
E:\UVVM-master\uvvm_util\src
```

---

## Waveform Viewing

Open GTKWave:

```cmd
gtkwave E:\UVVM-master\uvvm_util\src\hello.ghw
```

---

## Notes

The objective of Project 0 is to establish a lightweight and reproducible UVVM environment using GHDL and GTKWave.

The goal is not to achieve full UVVM compatibility, but to provide a practical foundation for learning verification methodology and applying it to real FPGA modules in subsequent projects.

```
```
