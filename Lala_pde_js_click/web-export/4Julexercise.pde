interface JavaScript {
  void showXY(int x, int y);
  void getClicked(Boolean amClicked);
}


void bindJavaScript(JavaScript js){
  javascript = js;
}

JavaScript javascript;


float backgroundColor;
float strokeColor;
float strokeWeightValue;
float circleStroke;
float tx1;
float ty1;
float tx2;
float ty2;
float tx3;
float ty3;
int mouseFillx;
int mouseFilly;


Boolean mouseC = false;

void setup () {
  size(600, 600);
  strokeColor = #986403;
  //strokeWeightValue= 10;
  backgroundColor = 0;
  circleStroke= 5;
  tx1 = 150;
  ty1 = 180;
  tx2 = 450;
  ty2 = 180;
  tx3 = 300;
  ty3 = 480;
  strokeCap(ROUND);
  strokeJoin(ROUND);
}

void draw() {
  background(backgroundColor);
  
  stroke(strokeColor);
  //strokeWeight(strokeWeightValue);
  mouseFillx = map(mouseX, 0, 600, 0, 200);
  mouseFilly = map(mouseY, 0, 600, 0, 200);
  fill(mouseFillx, 0 ,mouseFilly );
  triangle(tx1, ty1, tx2, ty2, tx3, ty3);


  if (mousePressed){
  tx1 = 150;
  ty1 = 450;
  tx2 = 450;
  ty2 = 450;
  tx3 = 300;
  ty3 = 150;
  
  strokeColor = #578166;
  
  }
  
  else {
  tx1 = 150;
  ty1 = 180;
  tx2 = 450;
  ty2 = 180;
  tx3 = 300;
  ty3 = 480;
  
  strokeColor = #986403;
  
  }
  
   strokeWeight(circleStroke);
  stroke(255);
  noFill();  
  ellipse(300, 300, 550, 550);
   
}

void mouseDragged(){
  
  cirlceStroke = 100;
  println("2: "+cirlceStroke);
  backgroundColor = map(mouseX, 0, 600, 0, 255);
   
}

void mouseClicked(){
  mouseC = true;
   // these are really important in case we run an error
  if(javascript!= null){
  javascript.getClicked(mouseC); 
  }

}
