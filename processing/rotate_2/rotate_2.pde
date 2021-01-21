float cx, cy, deg;
PImage im;

void setup() {
  size(800, 800);
  // center
  cx = width/6;
  cy = height/6;
  
  im = loadImage("1.png");

  imageMode(CENTER);
}

void draw() {
  background(0);


  for(int i=1;i<6;i++){
    for(int j=1;j<6;j++){
      pushMatrix();
      translate(i*cx, j*cy);
      rotate(frameCount*(i-1)*(j-1) / 1000.0);
      image(im, 0, 0, cx, cy);
      popMatrix();
    }  
  }

/*  pushMatrix();
  deg = deg + 3;
  translate(cx, cy);
  rotate(-radians(deg));
  popMatrix();*/
}
