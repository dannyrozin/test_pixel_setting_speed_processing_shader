

PShader myFragShader;

void setup() {
  size(1000, 700, P2D);
  frameRate(400);
  myFragShader = loadShader("myFragShader.glsl");
}

void draw() {
  background(0);
  myFragShader.set("paramx", mouseX/float(width));
  myFragShader.set("paramy", mouseY/float(height));
  shader(myFragShader);
  rect(0, 0, width, height);
  println (frameRate);
}