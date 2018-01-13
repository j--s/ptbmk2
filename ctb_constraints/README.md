# Vivado constraints for the Central Trigger Board (CTB)

The constraints for the CTB are contained here. The mapping of the 3 sub-system detectors (Beam, CRT, PDS) is final. The spare I/O might change in name but the FPGA 
pins are set by the CTB design and therefore permanent. Note some of the signals have been modded so that the signal might not match what is on the schematics.

## List of constraints

* ```constraints_clock_data.xdc```
  * Clock constraints for a 50MHz internal system clock, a 250MHz received clock from the timing system, and a 50MHz clock derived from the 250MHz received clock. 
     The received and derived clocks are asynchronous to the system clock. The data lines to and from the timing system are also located here. 

* ```constraints_beam_in.xdc```
  * 11 Inputs from the beam instrumentation, the mapping of the iniputs to the specific detectors, e.g., TOF, Cherenkov, SciFi, is still unknown.

* ```constraints_CRT_in.xdc```
  * 24 inputs from the cosmic ray tagger (CRT). The exact mapping is still unknown. 
  * There also will be a total of 32 inputs but the location of the additional 8 inputs is TBD.

* ```constraints_optical_in.xdc```
  * 24 inputs for the photon detection system (PDS). 

* ```constraints_LVCMOS_spare.xdc```
  * Spare LVCMOS can be configured as either input or output. Some use 2.5V LVCMOS due to timing mod.

* ```constraints_LVDS_spare.xdc```
  * Spare LVDS can be configured as either input or output

* ```constraints_NIM_spare.xdc```
  * Spare NIM fixed direction only

* ```constraints_TTL_spare.xdc```
  * Spare TTL can be configured as either input or output

* ```constraints_scalar.xdc```
  * Output constraints (output triggers, speaker). 

## Changelog

* 1-13-2018 : Jon Sensenig (<jsen@sas.upenn.edu>)
  * Initial revision.

