This repository contains the Verilog code for a 4-bit up counter module. The counter increments its value on each clock cycle, features an active-high reset, and includes a load functionality to set the counter to a specific value.

📁 File Overview
up_counter.v: The Verilog module implementing the up counter.
🔍 Module Description
The up_counter module is designed to count upwards on each positive edge of the clock signal. It has the following ports:

1. clk (input): Clock signal to synchronize the counter operations.
2. rst (input): Active-high reset signal to reset the counter to zero.
3. ld (input): Load signal that, when high, loads the counter with the specified load value.
4. ldvalue (input): A 4-bit value to be loaded into the counter when the load signal is active.
5. dout (output): A 4-bit output representing the current count value of the counter.

Module Functionality

1. Resetting: When the reset (rst) signal is high, the counter value is reset to zero (4'b0000).
2. Loading: If the load (ld) signal is high, the counter is set to the value provided by the ldvalue input.
3. Counting: If neither the reset nor load signals are active, the counter increments its value by one on each positive clock edge.
