# Approximate-Multipliers
In this project, we are implementing the 4*4 approximate multiplier with the help of Verilog and analyzing the mean relative error, power and utilization on the Verilog TCL console. 
In order to create the approximate multiplier, here are the following steps:
# Step 1
Take two inputs A and B.Generate 4 4-bit partial products by XORing one bit of B with all the bits of A at a time.
# Step 2
Use 5 approximate compressors.The logic of using the approximate compressors is to simplify the bits other than the MSB and LSB which do not undergo any computational operation.So approximate compressors are used to reduce the amount of bits column by column including the padding bits.


partialproduct0:                    p03   p02   p01  p00 
partialproduct1:              p13   p12   p11   p10       
partialproduct2:        p23   p22   p21   p20        
partialproduct3:   p33  p32   p31   p30        
                       Comp5 Comp4 Comp3 Comp2 Comp1   

                       
This table explains the sequence in which binary multiplication is usually done.  
The approximate compressor is implemented by the XORing of four inputs given to the compressor to give the approximate sum output and the OR of (AND of first two inputs) and (AND of last two inputs) to give the approximmate carry output. There is another input cin which is propagated without any computation to give you cout.


