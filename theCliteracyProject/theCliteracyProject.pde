/* Install minim library in order to play audio samples
 * Minim is an audio library that uses the JavaSound API
 * provide an easy to use audio library for people developing in  Processing 
 */
import ddf.minim.*;
Minim minim;

/* AudioSample is a class within the minim library - make an AudioSample variable 
 * for each aspect of the vulva. This doesn't load the audio but essentially
 * allocates a hunk of memory for the audio to be housed in.
 */
AudioSample labiaMinor;
AudioSample labiaMajora;
AudioSample clit;
AudioSample hood;
AudioSample monsPubis;
AudioSample pubicHair;
AudioSample urethra;
AudioSample vagOpening;
AudioSample vulva;

/* PImage is a library that makes loading images into your
 * sketch easy - the variable img is where the image of your embroided 
 * vulva will be stored
 */
PImage img;

/* PImage is a library that makes loading images into your
 * sketch easy - the variable img is where the image of your embroided 
 * vulva will be stored
 */
PFont f;

/* Booleans are a type of variable that will can wither hold a value of true or false
 * we need boolean variables for each key so that audio samples can be played and
 * stopped.
 */
boolean qPressed = false;
boolean wPressed = false;
boolean ePressed = false;
boolean rPressed = false;
boolean tPressed = false;
boolean yPressed = false;
boolean uPressed = false;
boolean iPressed = false;
boolean VPressed = false;


/* In the processing environment, the setup() function is where data and information 
 * necessary to play the sketch is loaded. Our AudioSample variables are linked 
 * to actual audio here, and our image variable is linked to the image of the vulva.
 */
void setup()
{
  // this is the size of the sketch
  size(856, 856, P3D);
  
  // create an instance of the minim library
  minim = new Minim(this);
  
  // load image of embroidered Vulva into img
  img = loadImage("data/finishedEmbroidery.jpg");
  
  // Arial is the font we're using, and the second parameter, 16, is the font size
  f = createFont("Arial", 16, true);

  /*********************
   *  Load Audio Clips *
   *********************/

  /* Here's where the minim library comes in handy - the loadSample()
   * does exactly what you think it does.
   */
  labiaMajora = minim.loadSample( "labiaMajora.mp3", 512);
  
   /* Since we loaded our labiaMajora varibale with an AudioSample, the variable
    * labiaMajora should now point towards that AudioSample. If it points towards null,
    * something went wrong - print an error message to the Concole.
    */
  if ( labiaMajora == null ) println("Error: Can't locate labiaMajora!");
  
  // Can't locate the labia majora? It's ok - most people can't either.

  labiaMinor = minim.loadSample ( "labiaMinor.mp3", 512);
  if ( labiaMinor == null ) println("Error: Can't locate labiaMinor!");

  clit = minim.loadSample("clit.mp3", 512);
  if ( clit == null ) println("Error: Can't locate the clitoris!");

  hood = minim.loadSample( "hood.mp3", 512);
  if ( hood == null ) println("Error: Can't locate clitoral hood!");

  monsPubis = minim.loadSample( "monsPubis.mp3", 512);
  if ( monsPubis == null ) println("Error: Can't locate monsPubis!");

  urethra = minim.loadSample( "urethra.mp3", 512);
  if ( urethra == null ) println("Error: Can't locate urethra!");

  vagOpening = minim.loadSample( "vagOpening.mp3", 512);
  if ( vagOpening == null ) println("Error: Can't locate vaginal opening!");
  
  vulva = minim.loadSample( "vulva.mp3", 512);
  if ( vulva == null ) println("Error: Can't locate vulva!");
  
  pubicHair = minim.loadSample( "pubicHair.mp3", 512);
  if ( pubicHair == null ) println("Error: Can't locate Pubic Hair!");
}

 /* draw() is 
  */
void draw()
{
  // clears the contents of the screen - essentially just gives you a clean background
  background(0);
  stroke(255,255,0);
  
  // image () draws img to the display window
  image(img, 0, 0, img.width * .35, img.height * .35);

  textFont(f, 20);                  
  fill(10);
  /* test() draws the keys associated with each part of the anatomy to the screen.
   * it is followed by the x and y coordinates of the text
   */
  text("q", 300, 469);
  text("w", 335, 438);
  text("e", 443, 213);
  text("r", 443, 180);
  text("t", 482, 142);
  text("y", 439, 382);
  text("u", 438, 487);
  text("i", 370, 142);
  text("Vulva", 209, 198);
}

/* Simple function I wrote to figure out the coordinates that corresponded to 
 * different parts of anatomy on the screen.
 */
void mousePressed() {
  if(mousePressed == true) {
    // mouseX and mouseY are variables standard to processing
    print("X: ", mouseX, "Y: ", mouseY, "\n");
  }
}

/*
 * This is the funtion that actually plays the clips!
 */
void keyPressed() 
{

  // labia majora trigger
  if (qPressed == false) {
    if ( key == 'q' ) {
      /* trigger() is a minim function that plays the audio - and yes,
       * I think it's hilarious that it's called trigger.
       */
      labiaMajora.trigger();
      qPressed = true;
    }
  } else {
    // stop audio is key is pressed twice by setting qPressed to false
    labiaMajora.stop();
    qPressed = false;
  }


  // labia minor trigger
  if (wPressed == false) {
    if ( key == 'w' ) {
      labiaMinor.trigger();
      wPressed = true;
    }
  } else {
    labiaMinor.stop();
    wPressed = false;
  }

  // cliterous
  if (ePressed == false) {
    if ( key == 'e' ) {
      clit.trigger();
      ePressed = true;
    }
  } else {
    clit.stop();
    ePressed = false;
  }

  // cliteral hood
  if (rPressed == false) {
    if ( key == 'r' ) {
      hood.trigger();
      rPressed = true;
    }
  } else {
    hood.stop();
    rPressed = false;
  }

  // cliterous
  if (tPressed == false) {
    if ( key == 't' ) {
      monsPubis.trigger();
      tPressed = true;
    }
  } else {
    monsPubis.stop();
    tPressed = false;
  }

  // urethra
  if (yPressed == false) {
    if ( key == 'y' ) {
      urethra.trigger();
      yPressed = true;
    }
  } else {
    urethra.stop();
    yPressed = false;
  }

  // vagOpening
  if (uPressed == false) {
    if ( key == 'u' ) {
      vagOpening.trigger();
      uPressed = true;
    }
  } else {
    vagOpening.stop();
    uPressed = false;
  }
  
  // pubic hair
  if (iPressed == false) {
    if ( key == 'i' ) {
      pubicHair.trigger();
      iPressed = true;
    }
  } else {
    pubicHair.stop();
    iPressed = false;
  }
  
  // vulva
  if (VPressed == false) {
    if ( key == 'v' ) {
      vulva.trigger();
      VPressed = true;
    }
  } else {
    vulva.stop();
    VPressed = false;
  }
}