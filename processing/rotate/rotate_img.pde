/* ---------------------- 
  ROTATE by program!
   ---------------------- */
float cx, cy, deg;
PImage im;

void setup() {
  size(500, 500);
  // center
  cx = width/2;
  cy = height/2;
  im = loadImage("test_2_tr.png");
  imageMode(CENTER);
  println(frameCount /5000.0);
}

void draw() {
  background(0);
  pushMatrix();
  translate(cx, cy);
  rotate(frameCount / 5000.0);

  image(im, 0, 0, cx, cy);
  popMatrix();

  pushMatrix();

  deg = deg + 3;

  translate(cx, cy);
  rotate(-radians(deg));

  popMatrix();
}
