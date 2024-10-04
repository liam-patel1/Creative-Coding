float xPosition;  // -- Horizontal starting position on 'x' axis in coordinate space
float xVelocity; // -- Horizontal speed in x-direction
float yPosition;  // -- Horizontal starting position on 'x' axis in coordinate space
float yVelocity; // -- Horizontal speed in x-direction
int ballRadius;
color ballColor;
int bounces;

void setup()
{
  bounces = 0;
  size(400, 300);
  fill(255, 177, 8);
  textSize(48);
  ballRadius = 50;

  xPosition = width/2;  // -- Initialise xPosition to centre of sketch
  xVelocity = -2; // -- Initialise speed in x-direction to -2 (moving left)
  yPosition = height/2;  // -- Initialise xPosition to centre of sketch
  yVelocity = -2; // -- Initialise speed in x-direction to -2 (moving left)
}

void draw()
{
  background(64);



  float tempxv = xVelocity;
  float tempyv = yVelocity;
  if ( xPosition-ballRadius < mouseX && mouseX < xPosition+ballRadius &&  yPosition-ballRadius< mouseY && mouseY < yPosition + ballRadius) {
    tempxv *= 2;
    tempyv *= 2;
  }
  xPosition = xPosition + tempxv;  // -- Change position in x on each redraw by velocity in x
  yPosition = yPosition + tempyv;  // -- Change position in y on each redraw by velocity in y

  fill(ballColor);
  circle(xPosition, yPosition, ballRadius);

  

  if (xPosition <= 0 | xPosition >= width) {
    xVelocity = -xVelocity;
    bounces = bounces + 1;
    if (bounces == 3) {
    ballColor = color(random(255), random(255), random(255));
    bounces = 0;
    }
  }

  if (yPosition <= 0 |yPosition >= height) {
    yVelocity = -yVelocity;
    bounces = bounces + 1;
    if (bounces == 3) {
    ballColor = color(random(255), random(255), random(255));
    bounces = 0;
    }
  }
}
