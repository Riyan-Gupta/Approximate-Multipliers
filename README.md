# Approximate-Multipliers
In this project, we are implementing the 4*4 approximate multiplier with the help of Verilog and analyzing the mean relative error, power and utilization on the Verilog TCL console. 
In order to create the approximate multiplier, here are the following steps:
# Step 1
Take two inputs A and B.Generate 4 4-bit partial products by XORing one bit of B with all the bits of A at a time.
# Step 2
Use 5 approximate compressors.The logic of using the approximate compressors is to simplify the bits other than the MSB and LSB which do not undergo any computational operation.So approximate compressors are used to reduce the amount of bits column by column.
Difference between exact compressor and approximate compressor:
Exact compressor has the following expressions:
sum=a⊕b⊕c⊕d⊕cin![image](https://github.com/user-attachments/assets/fe6d83f9-805a-487a-b8a4-ba555a06205b)



  

                       
This table explains the sequence in which binary multiplication is usually done.  
The approximate compressor is implemented by the XORing of four inputs given to the compressor to give the approximate sum output and the OR of (AND of first two inputs) and (AND of last two inputs) to give the approximmate carry output. There is another input cin which is propagated without any computation to give you cout.


