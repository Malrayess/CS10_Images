//Variables go here
//String[] fontList = PFont.list(); //lists all the fonts on your machine

PImage[] pic = new PImage[3]; //Array; .length is "3"

void setup() {
  size(600, 600); //uses width and height, similar to our rect size
  //fullScreen();
  //println("Screen's width is " + displayWidth + "\n Screen's height is " + displayHeight);//Prints to console
  //printArray(fontList); //Prints all fonts to console
  //use Tahoma-Bold-48 as a font

  pic[0] = loadImage("assassins-creed-origins.jpg"); //first image:origins image
  //pic[1] = loadImage("assassins-creed-group.jpg"); //Second image:first group image
  //pic[2] = loadImage("assassins-creed-group2.jpg"); //third image:thumbnail group image

  rect(0, 0, width, height/3);
  rect(0, height*1/3, width, height/3);
  rect(0, height*2/3, width, height/3);

  image(pic[0], 0, height*0/3, width, height/3);
  //image(pic[0], 0, height*1/3, width, height/3);
  //image(pic[0], 0, height*2/3, width, height/3);

  //Image Dimensions and rect() dimensions
  float imageX = 1080, imageY = 600;
  float rectWidth = width, rectHeight = height;
  float scaleX, scaleY, scale;
  float scaleXtest, scaleYtest;
  float imageXscaled;
  float imageYscaled;

  //Scale: rect / image
  scaleX = rectWidth / imageX; //decimal needs casting
  println ("ScaleX ;" + scaleX);
  scaleY = rectHeight / imageY; //decimal calue needs casting
  println ("ScaleY ;" + scaleY);

  //Pick the smallest scale, always!

  if ( scaleX < scaleY ) {
    scale = scaleX;
  } else {
    scale = scaleY;
  }
  println ("Scale: " + scale);

  //Scale the image dimensions
  imageXscaled = imageX * scale; 
  imageYscaled = imageY * scale;
  println ("Scaled Images" +"Scaled X: " + imageXscaled + "\tScaled Y: " + imageYscaled);
  //test to see if the scaled image fits

if (imageXscaled > rectWidth | imageYscaled > rectHeight) {
    while ( imageXscaled > rectWidth | imageYscaled > rectHeight ) {
      if (imageXscaled <= rectWidth) { 
        imageX = imageXscaled; //Rewrites the origonal imageX dimension
      } else {
        float i = 1.000;
        while (imageXscaled > rectWidth) {
          //scaleXtest = scaleXtest * i;
          i = i - 0.005;
          imageXscaled = imageXscaled * i;
        }
        imageX = imageXscaled;
      }
      if (imageYscaled <= rectHeight) {
        imageY = imageYscaled;
      } else {
        float i = 1.000;
        while (imageYscaled > rectHeight) {
          i = i - 0.005;
          imageYscaled = imageYscaled * i;
        }
        imageY = imageYscaled;
      }
    }
    imageX = imageXscaled; 
    imageY = imageYscaled;
  } else {
    imageX = imageXscaled; 
    imageY = imageYscaled;
  }


  image(pic[0], 0, 0, imageX, imageY);
  //image(pic[1], 0, height*1/3, width, height/3);
  //image(pic[2], 0, height*2/3, width, height/3);

  /*
  for (int i=0; i<3; i++){
   image(pic[i], 0, height*i/3, width, height/3);
   }
   */
  //void draw() {}

  //void mousePressed() {}

  //void keyPressed() {}
}