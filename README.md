# Approximate-Multipliers
In this project, we are implementing the 4*4 approximate multiplier with the help of Verilog and analyzing the mean relative error, power and utilization on the Verilog TCL console. 
In order to create the approximate multiplier, here are the following steps:
# Step 1
Take two inputs A and B.Generate 4 4-bit partial products by XORing one bit of B with all the bits of A at a time.
# Step 2
Use 5 approximate compressors.The logic of using the approximate compressors is to simplify the bits other than the MSB and LSB which do not undergo any computational operation.So approximate compressors are used to reduce the amount of bits column by column.

The approximate compressor is implemented by the XORing of four inputs given to the compressor to give the approximate sum output and the OR of (AND of first two inputs) and (AND of last two inputs) to give the approximmate carry output. There is another input cin which is propagated without any computation to give you cout.





<img width="978" alt="Screenshot 2025-01-17 at 8 24 56 PM" src="https://github.com/user-attachments/assets/ea0cfa2d-9c12-4bfc-98e7-2e0922a833be" />



  

                       


