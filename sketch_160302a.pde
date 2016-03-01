final int AMOUNT = 7000;

int[] x = new int[AMOUNT];
int[] y = new int[AMOUNT];
int[] z = new int[AMOUNT];
float d=0, e=0,f=0;
float dSpeed,eSpeed,fSpeed;
float g = 0 ;
float b = 0 ;
float r = 0 ;
float l = 0 ;
float up = 0 ;
float down = 0 ;
float see = 0 ;
float seeR = 0 ;

private static final int PLOTS_COUNT = 15000;
private static final int RADIUS = 80;
private Plot[] plots = new Plot[PLOTS_COUNT];


void setup() {
  size(1280, 800, P3D);
  noFill();
  stroke(255);
  
  for (int i = 0; i < PLOTS_COUNT; i++){
    plots[i] = new Plot();
  }
  d = random(width);
  e = random(height);
  f = random(5000);
  dSpeed = random(-70,70);
  eSpeed = random(-70,70);
  fSpeed = random(-70,70);

  for (int i = 0; i < AMOUNT; i++) {
    x[i] = int(random(-6400, 6400));
    y[i] = int(random(-6400, 6400));
    z[i] = int(random(-6400, 6400));
  }
}

void draw() {
  background(0,1);
  camera(r+l,up+down,1000+g+b,r+l+1000*sin(see),up+down,g+b-1000*cos(see),0,1,0);
  stroke(255);
  translate(width/2, height/2);  
  rotateY(frameCount / 1000.0);
  rotateX(frameCount / -5000.0);
  if ((keyPressed == true) && (key == 'w')) {
    g = g - 10 ;
  }
  if ((keyPressed == true) && (key == 's')) {
    b = b + 10 ;
  }
  if ((keyPressed == true) && (key == 'a')) {
    l = l - 10 ;
  }
  if ((keyPressed == true) && (key == 'd')) {
    r = r + 10 ;
  }
  if ((keyPressed == true) && (key == 'j')) {
    up = up - 10 ;
  }
  if ((keyPressed == true) && (key == 'k')) {
    down = down + 10 ;
  }
  if ((keyPressed == true) && (key == 'q')) {
    see = see - 0.01 ;
  }
  if ((keyPressed == true) && (key == 'e')) {
    see = see + 0.01 ;
  }
  


  stroke(242,98,90,99);
  
  for (Plot p : plots){
    point(p.x,p.y,p.z);
  }
 
  
 for(int i=0; i<100; i++){
   stroke(255,99);
   strokeWeight(random(3,6));
 }
  
  point(d,e,f);
  d+=dSpeed;
  e+=eSpeed;
  f+=fSpeed;
  
 if(d > 5000){
      d = 0;
      dSpeed = random(-50,50);
      eSpeed = random(-50,50);
      fSpeed = random(-50,50);
  }
  if(d < -5000){
      d = width;
      dSpeed = random(-50,50);
      eSpeed = random(-50,50);
      fSpeed = random(-50,50);
  }
  if(e > 5000){
      e = 0;
      dSpeed = random(-80,80);
      eSpeed = random(-80,80);
      fSpeed = random(-80,80);
  }
  if(e < -5000){
      e = height ;
      dSpeed = random(-80,80);
      eSpeed = random(-80,80);
      fSpeed = random(-80,80);
  }
  if(f > 10000){
      f = -10000;
      dSpeed = random(-80,80);
      eSpeed = random(-80,80);
      fSpeed = random(-80,80);
  }
  if(f < -10000){
      f = 10000;
      dSpeed = random(-80,80);
      eSpeed = random(-80,80);
      fSpeed = random(-80,80);
  }
  
  stroke(255);
  
  
strokeWeight(2);
  for (int i = 0; i < AMOUNT; i++) {
    point(x[i], y[i], z[i]);
  }
}
private class Plot {
final float x , y , z ;
Plot () {
float radianS = radians( random
( 180 ));
float radianT = radians( random
( 360 ));
x = RADIUS * sin ( radianS) * cos
( radianT);
y = RADIUS * sin ( radianS) * sin
( radianT);
z = RADIUS * cos ( radianS);

}
}