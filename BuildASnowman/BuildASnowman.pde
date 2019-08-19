/*
  This code skeleton prints the (x,y) coordinates of the mouse when a user clicks 
  anywhere within the sketch window. You will update it so that it also draws a
  snowman within the setup() function!
*/

void setup(){
  size(600, 600);
  
  // All your code to draw the snowman should be in here
}

void draw(){
}

/*
   The following function prints the x/y coordinates of your mouse location
   to the console whenever you press and release the mouse. You don't need to understand
   yet how it works, but hopefully it is helpful if you can't quite figure out 
   the x/y location you need to place one of your shapes!
*/
void mouseReleased(){
  println("X/Y coordinates: (" + mouseX + ", " + mouseY + ")");
}
