public void setup()
{
 size(500,500); 
}

public void draw()
{
  background(136,199,253);
  //ground
  fill(174,208,147);
  rect(0,240,500,260);
  //road
  noStroke();
  fill(175);
  rect(0,256,500,10);
  fill(255);
  rect(50,260,10,1);
  rect(100,260,10,1);
  rect(150,260,10,1);
  rect(200,260,10,1);
  rect(250,260,10,1);
  rect(300,260,10,1);
  rect(350,260,10,1);
  rect(400,260,10,1);
  rect(450,260,10,1);
  //fractal
  noFill();
  stroke(0);
  myFractal(200,250,400);
  //car
  fill(255,0,0);
  noStroke();
  rect(3,245,15,10);
  rect(0,250,5,5);
  fill(90);
  circle(5,255,6);
  circle(15,255,6);
  //fractal 2
  fill(237,229,74);
  stroke(0);
  myFractal2(440,40,60);
}

public void myFractal(int x, int y, int siz)
{
 circle(x,y,siz); 
 if(siz > 10)
 {
  myFractal(x/2,y,siz/2); 
 }
}

public void myFractal2(int x, int y, int siz)
{
 circle(x,y,siz);
 if(siz > 10)
 {
  fill(255);
  myFractal2(x-siz/2,y,siz/2);
  myFractal2(x+siz/2,y,siz/2);
 }
}
