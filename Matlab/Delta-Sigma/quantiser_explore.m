
no_bits = 4;
no_levels = 2^(no_bits-1);
ramp = 0:0.001:1.999;

plot(ramp)
hold on
plot(floor(no_levels*ramp)/no_levels)

