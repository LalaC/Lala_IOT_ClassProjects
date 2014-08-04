int mySize = 0;


void setup(){
size(200,200);
}

void draw(){
  mySize1 = circleSize(10);
  mySize2 = circleSize(24);
  ellipse(width/2,height/2, mySize1, mySize2);
}

int circleSize(int myAdd){
  int add = myAdd;
  int s = mouseX/2 + add;
  return s;
}

