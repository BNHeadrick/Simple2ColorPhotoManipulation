PImage img;

//the RGB threshhold for changing an image's color.
int threshhold = 150;

int darkRed = 255, darkGreen = 255, darkBlue = 255;
int lightRed = 0, lightGreen = 0, lightBlue = 0;

//the images that are manipulated are in the data folder.  Place the image in that folder and alter the importedImage variable accordingly.
String importedImage = "astronaut.jpg";

void setup() 
{
  img = loadImage(importedImage);
  img.loadPixels(); 
 
  size(img.width, img.height, P2D); 
  renderPic();
  
}

void renderPic() {

  img.loadPixels(); 
  loadPixels();
  for(int i = 0; i < img.pixels.length; i++)
  {
      int r = (int) red(img.pixels[i]);
      int g = (int) green(img.pixels[i]);
      int b = (int) blue(img.pixels[i]);
      
      int sumRGB = (int) (r + g + b)/3;
      
      if(sumRGB > threshhold){
        pixels[i]=color(darkRed,darkGreen,darkBlue);
      }
      else{
        pixels[i]=color(lightRed,lightGreen,lightBlue);
      }
  }
  
  updatePixels();
}

