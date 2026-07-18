# Generic Adder and Leading Zero Detector 
Part 1 - Ripple Carry Adder  

<img width="537" height="406" alt="Screenshot 2026-07-18 at 3 59 45 PM" src="https://github.com/user-attachments/assets/39dbfc0d-8bad-42e2-813b-507d5c965e9d" />  
<img width="629" height="225" alt="Screenshot 2026-07-18 at 4 00 02 PM" src="https://github.com/user-attachments/assets/e4d52392-9450-4443-941f-a448805fa56b" />  


In part one of this lab, an 8-bit Ripple Carry Adder was designed. This was done by making a lower-level file with the behavioral code for a single Full adder. A Full Adder’s behavioral code is made of inputs a,b, and carry in and produces an output of sum and carry. The behavioral code was implemented using (carryin) ci = (a.b + a.ci + b.ci) and sum = (a^b^ci). After this, a top-level file instantiated 8 full adders that fed into each other through the carry in/out. To check for overflow, a bit was set high when the MSB carry is different from the MSB-1 carry. To test this design, a testbench ran all 2^16 possible input combinations using a for loop and verified the outputs using a self-checking algorithm to verify that all expected outputs were correct. In the end, all outputs were expected.



Part 2- General Adder  
<img width="571" height="440" alt="Screenshot 2026-07-18 at 4 03 59 PM" src="https://github.com/user-attachments/assets/18eca9aa-c28e-4a4a-8757-bf987f7a364f" />  

<img width="598" height="192" alt="Screenshot 2026-07-18 at 4 00 36 PM" src="https://github.com/user-attachments/assets/2bd928a4-cbb6-489f-929d-cb22bb7dd1b7" />  


In part two of the lab, a generalized adder was designed and implemented using parameters and the generate function. In the Verilog code, new variables (genvar i;) and (#parameter K) were used. The variable [K] in the parameter is set to a value to create a K-bit adder of any size. The generate function was implemented with a for loop to instantiate the K-bit adder. The code for a general adder was very similar to a ripple-carry adder. The difference is that the K variable was used to set the bit width and indexing for our inputs, outputs, and variables. To test this design, parameters were used to run through all the 4^K possible input combinations for our design and each input combination was verified using a self-checking statement within the testbench to verify that all expected outputs were correct. In the end, all outputs were expected.

Part 3 - 4-bit Leading Zero Detector  
<img width="428" height="339" alt="Screenshot 2026-07-18 at 4 01 10 PM" src="https://github.com/user-attachments/assets/0c052796-cbf5-4ccf-a8bd-429c8b733936" />  
<img width="350" height="333" alt="Screenshot 2026-07-18 at 4 01 23 PM" src="https://github.com/user-attachments/assets/95d991b3-3471-4bf5-8ead-1c11fa6a0c75" />  




In part three of the lab a 4-bit leading-zero detector was designed and implemented. Using the anticipated inputs and outputs of this circuit from the lab manual a 4-bit truth table was turned into an Sum-of-Product (SOP) and turned into behavioral code. For this design, our 4 inputs were SW[3:0], and our outputs were tied to LEDR[2:0 ]. Since a 4-bit number was used as an input, the maximum output of Zeroes would be 4 which would be shown as an output of 100. This is why our input is 4 bits compared to a 3 bit output. Upon Synthesis, The FPGA design ran as expected. To test this circuit, a count variable was used to go over all possible 2^4 inputs as the correct LED outputs were observed and verified. In the end all outputs were expected.


Part 4 - 8-bit Leading Zero Detector  
<img width="416" height="312" alt="Screenshot 2026-07-18 at 4 01 37 PM" src="https://github.com/user-attachments/assets/0d8bf9c9-df88-47c4-a5cc-3711d0ab24d8" />  
<img width="394" height="399" alt="Screenshot 2026-07-18 at 4 01 48 PM" src="https://github.com/user-attachments/assets/3a5a910d-04dd-49ab-a7fd-2505290fefb0" />  







In part four of this lab an 8-bit leading-zero detector was designed and implemented. To create this circuit, two 4-bit leading-zero-detectors were hierarchically instantiated two together. For our inputs, an upper LZD was created that was connected to SW[7:4] and a lower LZD was created for SW[3:0]. For the LED output, a ternary condition was used that allowed accurate output readings. In the ternary condition, If there was a 1 in the first 4 bits, it would just use the output from the upper LZD and extend it to 4 bits, otherwise it would add 4 to the output of the lower LZD. Since this circuit had a lot of possible input combinations, to test this circut, a random function was used to generate 10 numbers within 0-255, and the LEDR outputs were observed for correct outputs. In the end all outputs were expected.  




Challenges/Conclusion  

During this lab, we’d say the most difficult part was creating the testbenches and creating a hierarchy design for the adder and LZD. In this lab, we were able to turn fixed-width structural design into parameterized hardware modeling in Verilog. By implementing hierarchical modules in the Ripple Carry Adder and Leading Zero Detector, we showed the importance of hierarchical design. In this lab, we also used a variety of verification techniques, ranging from exhaustive testing for 8-bit designs to random vector generation for more complex modules.


