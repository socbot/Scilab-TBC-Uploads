//Example 5.4
clc
disp("Let us consider D for Door, I for ignition, L for Light. Then conditions to activate the alarm are:")
disp("1. The headlights are ON while the ignition is OFF.")
disp("   i.e. L = 1, I = 0 and D may be anything.")
disp("2. The ddor is open while the ignition is ON")
disp("   i.e. D = 1, I = 1, L may be anything.")
disp("Also alarm will sound if logic circuit output is zero.")
disp("Therefore, output for above condition is zero and for rest of the condition it is 1 which is summarized in the following table.")
disp("  D    I    L    Y")
disp("  0    0    0    1")
disp("  X    0    1    0")
disp("  0    1    0    1")
disp("  0    1    1    1")
disp("  1    0    0    1")
disp("  1    1    X    0")
disp("Therefore, K-map for logic circuit.")
disp("      I''L''    I''L    IL    IL''")
disp("D''     1       0     1      1")
disp("D      1       0     0      0")
disp("  Output = Y = I''L'' + D''I")
disp("As AND-OR logic can be directly replaced by NAND-NAND, logic circuit using only NAND gates is as shown in fig.5.9 and fig.5.10")