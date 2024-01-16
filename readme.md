# PCIeDMA

Open source Artix-7 FPGA designed to be used with [PCILeech](https://github.com/ufrisk/pcileech/).

For schematic/layout/assembly/pcb diagrams, please see the [outputs](outputs/) folder.

## Overview

Initial design was based on a combination of the [LambdaConcept PCIe Screamer Squirrel](https://shop.lambdaconcept.com/home/50-screamer-pcie-squirrel.html) and the [Enigma-X1 LeetDMA](https://enigma-x1.com/store/product/23-leetdma-incl-custom-fw/).

PCIexpress layout is based on [lucanastasio/PCIexpress-KiCad](https://github.com/lucanastasio/PCIexpress-KiCad) PCIexpress_x4_low.

Initially will try to keep the board as a 6-layer PCB using the [JLC3313 6-Layer Impedance Control Stackup](https://cart.jlcpcb.com/impedance), layer stackup plan would be Signal/Ground/Power/Power/Ground/Signal, with the outside signal layers also having a ground pour. PCIe and USB3 SS traces would be impedance matched (and length matched as necessary) on top and bottom layers as coplanar waveguides for each pair.

There are two on-board USB-C ports, one for JTAG debugging/programming of the FPGA/flash, the other as a usb superspeed link for DMA access. The board is also designed such that it can be powered and programmed/tested from the JTAG USB connector, without needing to be plugged into a PCIe slot.

## Progress 

From a high level perspective, the board is largely complete. It does, however, need to be checked before first batch ordered. The following is a rough list of what needs to be reviewed, and any input is welcome from knowledgeable parties.

* [ ] Schematic Review
  * [ ] Part Selection
  * [ ] BOM Check
  * [ ] Connectivity

* [ ] PCB Review
  * [ ] Placement
  * [ ] Footprints
  * [ ] Routing
  * [ ] Impedance

Once board is finalised, the software side needs to be started integrating with PCILeech. Specifically, [PCILeech FPGA](https://github.com/ufrisk/pcileech-fpga)