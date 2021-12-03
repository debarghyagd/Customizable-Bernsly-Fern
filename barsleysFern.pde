float[][] coeff =
  { {0, 0, 0, 0.16, 0, 0, 0.01},
  {0.85, 0.04, -0.04, 0.85, 0, 1.60, 0.85},
  {0.20, -0.26, 0.23, 0.22, 0, 1.60, 0.07},
  {-0.15, 0.28, 0.26, 0.24, 0, 0.44, 0.07} };
PVector p,q;

void setup() {
  //fullScreen();
  size(900, 900);
  background(0);
  //translate(width/2, height/2);
  p = new PVector(0, 0);
}
void plot() {
  stroke(255);
  strokeWeight(1);
  q = new PVector(map(p.x, -2.1820, 2.6558, 0, width), map(p.y, 0, 9.9983, height, 0));
  point(q.x, q.y);
  //fill(255);
  //noStroke();
  //ellipse(q.x,q.y,5,5);
}
void draw () {
  plot();
  float h, k;
  float r = random(1);
  if (r < coeff[0][6]) {
    h = coeff[0][0]*p.x + coeff[0][1]*p.y + coeff[0][4];
    k = coeff[0][2]*p.x + coeff[0][3]*p.y + coeff[0][5];
  } else if (r < coeff[1][6] + coeff[0][6]) {
    h = coeff[1][0]*p.x + coeff[1][1]*p.y + coeff[1][4];
    k = coeff[1][2]*p.x + coeff[1][3]*p.y + coeff[1][5];
  } else if (r < coeff[2][6] + coeff[1][6] + coeff[0][6]) {
    h = coeff[2][0]*p.x + coeff[2][1]*p.y + coeff[2][4];
    k = coeff[2][2]*p.x + coeff[2][3]*p.y + coeff[2][5];
  } else {
    h = coeff[3][0]*p.x + coeff[3][1]*p.y + coeff[3][4];
    k = coeff[3][2]*p.x + coeff[3][3]*p.y + coeff[3][5];
  }
  p = new PVector(h, k);
}
