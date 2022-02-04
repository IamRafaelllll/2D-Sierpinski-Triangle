int triLength = 300;
int size = 500;
int numOfTri = 0;
public void setup()
{
  size(500, 500);
  background(55, 55, 55);
  Tri(100, 415, triLength);
}
public void draw() {
  //null
}
public void mousePressed() {
  numOfTri++;
  if (numOfTri < 7) {
    size /= 2;
    background(55, 55, 55);
    Tri(100, 415, triLength);
  } else {
    numOfTri = 0;
    size = 250;
    Tri(100, 415, triLength);
  }
}
public void Tri(int x, int y, int triLength)
{
  if (triLength <size) {
    triangle(x, y, x+triLength/2, y-triLength, x+triLength, y);
  } else {
    Tri(x, y, triLength/2);
    Tri(x+triLength/2, y, triLength/2);
    Tri(x+triLength/4, y - triLength/2, triLength/2);
  }
}
