# Approximate-Multipliers
In this project, we are implementing the 4*4 approximate multiplier with the help of Verilog and analyzing the mean relative error, power and utilization on the Verilog TCL console. Artix 7 board is used for the analysis.
In order to create the approximate multiplier, here are the following steps:
# Step 1
Take two inputs A and B.Generate 4 4-bit partial products by XORing one bit of B with all the bits of A at a time.
# Step 2
Use 5 approximate compressors.The logic of using the approximate compressors is to simplify the bits other than the MSB and LSB which do not undergo any computational operation.So approximate compressors are used to reduce the amount of bits column by column.

The approximate compressor is implemented by the XORing of four inputs given to the compressor to give the approximate sum output and the OR of (AND of first two inputs) and (AND of last two inputs) to give the approximmate carry output. There is another input cin which is propagated without any computation to give you cout.

The expression for the compressors are as follows:

<img width="363" alt="Screenshot 2025-01-17 at 8 29 35 PM" src="https://github.com/user-attachments/assets/b7cd17aa-924d-4fe1-93a5-ba5b2cf58269" />



<img width="373" alt="Screenshot 2025-01-17 at 8 29 49 PM" src="https://github.com/user-attachments/assets/3867b0d7-d166-4695-bbf8-f076d0c79024" />



<img width="222" alt="Screenshot 2025-01-17 at 8 30 03 PM" src="https://github.com/user-attachments/assets/0a8972ad-7931-46ec-bcc5-62d594821196" />


How are approximate compressors implemented in approximate multipliers?

1.First we need to generate the 16 partial products and create a partial product tree as shown below in the figure
<img width="978" alt="Screenshot 2025-01-17 at 8 24 56 PM" src="https://github.com/user-attachments/assets/ea0cfa2d-9c12-4bfc-98e7-2e0922a833be" />
2. Figure also shows the order in which the compressors are implemented.
3.The compressor of each column takes the respective partial products from top to down and remaining inputs are taken as 0 for padding(except the carry in input which is the carry of the previous compressor.The carry in input for the first compressor is initially zero.)
4.Then the approximate sum, approximate carry and cout are calculated as output. 
5. Using these five compressors, we get the output of the multiplier.





  

                       


