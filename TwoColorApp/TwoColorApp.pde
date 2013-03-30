PImage img;

//the RGB threshhold for changing an image's color.
int threshhold = 150;

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
        pixels[i]=color(255,255,255);
      }
      else{
        pixels[i]=color(0,0,0);
      }
  }
  
  updatePixels();
}

