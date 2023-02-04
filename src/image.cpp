// Copyright 2021, Aline Normoyle, alinen

#include "image.h"

#include <cassert>
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb/stb_image_write.h"
#define STB_IMAGE_IMPLEMENTATION
#include "stb/stb_image.h"

/**
 * The main driver program for Assignment 2
 * 
 * This program implemetns a class for loading and saving image files 
 * It also implement multiple operations and filter for these images 
 * such as: flipping the image horizontally, rezising the image, 
 * using the gamma correction to correct images, using grayscale to make an image gray
 * blending two images together, creating asubimage of an image and replacing a block of pixels in a image
 * 
 * @author: Jenifer Fabian Dubon
 * @version: Feb 3, 2023
 * 
**/


namespace agl {


Image::Image() {
   myHeight =0;
   myWidth = 0;
   numChannels= 3;
}

Image::Image(int width, int height)  {
   myWidth = width;
   myHeight = height;
   numChannels = 3;
   Pixel *newData = new Pixel[width * height];
   myData = newData;
}

Image::Image(const Image& orig) {
  myWidth = orig.myWidth;
  myHeight = orig.myHeight;
  numChannels= orig.numChannels;
  myData = orig.myData;

}

Image& Image::operator=(const Image& orig) {
  if (&orig == this) {
    return *this;
  }
   myData =  orig.myData;
   myWidth = orig.width();
   myHeight = orig.height();
   numChannels = orig.numChannels;

  return *this;
}

Image::~Image() {
}

int Image::width() const { 
   return myWidth;
}

int Image::height() const {
   return myHeight;
}

char* Image::data() const {
   return (char*)myData;
}

void Image::set(int width, int height, unsigned char* data) {
   myData = (Pixel *) data;
   myWidth = width;
   myHeight = height;
   
}


/* loads the file  and returns true if its succesful and false if its not */
bool Image::load(const std::string& filename, bool flip) {
   int x;
   int y;

   myData = (Pixel *) (stbi_load(filename.c_str(), &x , &y, &numChannels, 3));
   if(myData !=NULL){
       myWidth = x;
       myHeight = y;
      return true;
   }
   else{
   return false;
   }
}


/* saves the file  */ 
bool Image::save(const std::string& filename, bool flip) const {
   if (myData !=NULL){
      stbi_write_png(filename.c_str(), myWidth, myHeight, numChannels, myData, sizeof(struct Pixel)*myWidth);  //saves the file as some name.
      return true;
   }
   else{
      return false;
   }
}


Pixel Image::get(int row, int col) const {
   Pixel tempData =  myData[row* myWidth + col];  
   return tempData;
   
}

void Image::set(int row, int col, const Pixel& color) {
   if(row >=0 && row < myHeight && col >= 0 && col < myWidth){ 
      myData[row * myWidth + col]= color; 
   }
}


Pixel Image::get(int i) const{
   return myData[i];
}

void Image::set(int i, const Pixel& c){
   myData[i] = c;
}

/* returns a copy of the image resized  */
Image Image::resize(int w, int h) const {
   Image result(w, h);
   for(int i = 0; i<h; i++){
      for(int j = 0; j < w; j++){

         float rowProp = (float)i / (h-1); //calculates row proportion
         float colProp = (float)j/ (w-1);   //calculates col proportion
            
         int r1 = floor(rowProp * (myHeight-1)); 
         int c1 = floor(colProp * (myWidth-1));
      
         result.set(i, j, get(r1, c1));
      }
   }

   return result;
}


/*  Performs a horizontal flip of the image  */
Image Image::flipHorizontal() const {
   Image result(myHeight, myWidth);
   
   for(int i= 0 ; i<myHeight; i++){  //iiterates over the rows of the image
      for(int j = 0; j< myWidth; j++){  //iterates over columns
         result.set(myHeight - 1 -i, j, get(i,j)); // assigns each pixel  from og image to its corresponding position
                                                   //in the flipped image and then resturns the flipped imagee
      }
   }
   return result;

}

Image Image::flipVertical() const {
   Image result(0, 0);
   return result;
}

Image Image::rotate90() const {
   Image result(0, 0);
  
   return result;
}

/* Returns a sub-image with the top, left corner at (x,y) and width and height */
Image Image::subimage(int startx, int starty, int w, int h) const {
   Image sub(w, h);

   for(int i = 0; i< h; i++){
      for(int j =0; j<w; j++){
         sub.set(i, j, get(startx +i, starty +j)); //sets the value at (i,j) in the new subimage to the value in the og image.
      }
   }
    return sub;
}


/* replaces a block of pixels. useful for blending images */
void Image::replace(const Image& image, int startx, int starty) {
   for(int i=0; i<image.height(); i++){
      for(int j = 0; j< image.width(); j++){
         set(startx + i, starty +j, image.get(i,j));
      }
   }
}

Image Image::swirl() const {
   Image result(0, 0);
   return result;
}

Image Image::add(const Image& other) const {
   Image result(0, 0);
  
   return result;
}

Image Image::subtract(const Image& other) const {
   Image result(0, 0);
   
   return result;
}

Image Image::multiply(const Image& other) const {
   Image result(0, 0);
   
   return result;
}

Image Image::difference(const Image& other) const {
   Image result(0, 0);
  
   return result;
}

Image Image::lightest(const Image& other) const {
   Image result(0, 0);
  
   return result;
}

Image Image::darkest(const Image& other) const {
   Image result(0, 0);
  
   return result;
}

/* Returns a copy of the image with a given gamma correction */
Image Image::gammaCorrect(float gamma) const { 
   Image result(myWidth, myHeight);

   float invGamma = 1.0/gamma;

   for(int i=0; i<myHeight; i++){
       for(int j = 0; j< myWidth; j++){

         Pixel pix = get(i, j);

         //calculate the gamma correction for each color
         float redCol = pow(((float)pix.r / 255), invGamma);  
         float blueCol = pow(((float)pix.b / 255), invGamma);
         float greenCol = pow(((float)pix.g / 255), invGamma);

         //scales the corrected color back to 0-255 range
         pix.r = redCol * 255;
         pix.b = blueCol * 255;
         pix.g = greenCol * 255;

         result.set(i,j, pix);

       }
   }
 
   return result;
}

/* returns a copy of this image with another one blemded with alpha */
Image Image::alphaBlend(const Image& other, float alpha) const {
   Image result(myWidth, myHeight);

      for(int i=0; i<myHeight; i++){
       for(int j = 0; j< myWidth; j++){

         Pixel currImage = get(i, j);
         Pixel newImage = other.get(i, j);
         Pixel blendedPixels; //creates new pixel that stores the blended pixels
         blendedPixels.r =currImage.r *(1- alpha) + newImage.r * alpha; //blends the rgb values of the pixels using alpha values
         blendedPixels.g =currImage.g *(1- alpha) + newImage.g * alpha;
         blendedPixels.b =currImage.b * (1- alpha) + newImage.b * alpha;

         result.set(i,j, blendedPixels); //sets blended pixels

         }
      }
   return result;
}

Image Image::invert() const {
   Image image(0, 0);
   
   return image;
}

/*  Returns a copy of the image as a grayscale image */
Image Image::grayscale() const {
   Image result(myWidth, myHeight);

   for(int i=0; i<myHeight; i++){
       for(int j = 0; j< myWidth; j++){
         Pixel pix = get(i, j);
         float avg = (pix.r + pix.g + pix.b) /3.0;  //gets the average of the rgb values
         pix.r = avg;
         pix.g = avg;
         pix.b = avg;
         result.set(i, j, pix); //sets the pixels in the result image
       }
   }
   
   return result;
}

Image Image::colorJitter(int size) const {
   Image image(0, 0);
  
   return image;
}

Image Image::bitmap(int size) const {
   Image image(0, 0);
   
   return image;
}

void Image::fill(const Pixel& c) {
  }

}  // namespace agl

