/* 
  Code to make a funky dynamic portrait, taking advantage of Processing's random() function
  and the built-in frameCount variable for color-changing and motion effects on PImages.
  Demo by Jenny Filipetti, August 2019, for the CU Denver Inworks course "Computational Foundations of Innovation."
  
  https://www.processing.org/reference/random_.html
  https://processing.org/reference/frameCount.html
  https://processing.org/reference/tint_.html
*/
PImage myBorder;  
PImage myPortrait;
PImage bob;    // Theoretically we've cleared space for a third image variable named bob, but right now we don't use it in this code

void setup(){
  size(500, 500);
  background(255, 0, 200);
  
  // Set the frame rate. This controls how frequently draw() loops (number is in frames per second)
  frameRate(5);
  
  // Load our stored image files into Processing memory, so we can work with them later.
  myBorder = loadImage("cborder.png");
  myPortrait = loadImage("bot_icon.png");
}

void draw(){
  // Print the current frameCount (how many times has draw() run since the program started)
  println(frameCount);
  
  // Pick a random colour to fill the background of the sketch window
  background(random(255), random(255), random(255));

  imageMode(CENTER);    // Use upcoming image coordinates as the center of the image, not the default top-left corner

  noTint();      // Remove tinting
  image(myPortrait, 250, 250, 300, 300);    // Draw the robot image in the center of the screen at 300x300px
  image(myBorder, 250, 250, 450, 450);    // Draw the circular colorful frame  
  
  // Add a blueish-green tint to our upcoming images. The exact tone of the tint will change randomly each time draw() runs.
  tint(0, random(100, 255), random(100, 255));
  
  /*
    In this next line of code, we apply a random value to both our image's x-location and its height. 
    This causes the image to squish and stretch as it bounces around the screen, although always along
    the same vertical line (y-value).
    
    Try commenting out our background() line above, leaving the below line as is. We'll start to accumulate 
    squished robots all across this vertical line!
  */
  image(myPortrait,random(20, 500), 250, 300, random(20, 300));
  
  
  /* Uncomment the following line of code for a robot that appears to come towards us onscreen over time.
     We're taking advantage of the frameCount as a continually increasing value to just make our bot bigger
     each time that draw() runs. How "quickly" the bot moves towards us is dictated by a combination of the
     frameRate() set in setup(), and the multiplier to frameCount that we use when setting the size below. 
     Notice it is still tinted turquoise from before because we have not updated the tint() value.  */
  
  //image(myPortrait, 250, 250, frameCount*10, frameCount*10);
  
  

}
