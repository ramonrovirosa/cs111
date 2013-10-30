Graham Guletz
Ramon Rovirosa

CS111
HW#2

For part #1, We used Eulers method to estimate the path of a falling ball in 2d. We had two two dimensional vectors. One for velocity and one for direction. Our loop calculates the values of X, Y, U, V for the x,y position and the U,V velocities in those respective positions. 

For drawing, we fill in a red 2d ball that redraws for every time step, which gives the appearence of animation, when in reality it just pauses. 

For 3d we added in a third Z value to each vector and calculated the Z value in a smiliar way. In the new 3d plane, gravity effects the Z instead of Y direction. 

For drawing a Sphere, we have a function that draws a sphere and shifts it over to the correct position and scales it to the correct radius.
