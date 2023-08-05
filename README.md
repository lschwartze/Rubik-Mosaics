# Rubik-Mosaics

This program takes a picture as input and translates it into a mosaic on Rubik's Cubes. It is specifically designed for the GAN 10x10 Mosaic set. 
The size can be adjusted by changing the MAX_WIDTH constant but only works for square sets.
A given picture is first scaled to fit the size of MAX_WIDTH^2 many pixels (currently 900). If one of the dimensions is too small (i.e. a rectangular picture) the smaller of sides is always scaled to be even. This ensures that the mosaic can always be centered
Afterwards, each pixel is replaced with the closest color of the six faces. A GUI is built that includes two buttons. One to jump to the next cube and one to jump back. The cubes are traversed horizontally.

