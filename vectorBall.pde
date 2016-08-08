float x = 100;    // location
float y = 100;    // location
float xSpeed = 1;  // speed
float ySpeed = 3.3;// speed

void setup() {
  size(640, 360);
  background(255);
}

void draw() {
  background(255);
  
  x = x + xSpeed;
  y = y + ySpeed;
  
  // check for bouncing
  if((x > width) || (x < 0)) {
    xSpeed = xSpeed * -1;
  }
  if((y > height) || (y < 0)) {
    ySpeed = ySpeed * -1;
  }
  // end check
  stroke(0);
  fill(175);
  ellipse(x,y,16,16); // display ball
}