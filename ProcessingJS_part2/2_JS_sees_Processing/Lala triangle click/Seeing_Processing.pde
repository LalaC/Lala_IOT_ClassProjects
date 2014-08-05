// telling processing to look for Javascript
interface JavaScript {
  void showXY(int x, int y);
  void getClicked(Boolean amClicked);
}

// binding the javascript to the name
void bindJavaScript(JavaScript js){
  javascript = js;
}

// naming the javascript
JavaScript javascript;

Boolean mouseC = false;

void setup(){
  size(500,500);
  noLoop();
  background(0,0,50);
}

void draw(){
  fill(0,0,50,40);
  rectMode(CORNER);
  noStroke();
  rect(0,0,width, height);
 
}

void mouseClicked(){
  mouseC = true;
   // these are really important in case we run an error
  if(javascript!= null){
  javascript.getClicked(mouseC); 
  }

}

void mouseMoved(){
  rectMode(CENTER);
  stroke(255);
  strokeWeight(2);
  rect(mouseX, mouseY, 20, 20);
  redraw();
  
  // these are really important in case we run an error
  if(javascript!= null){
  javascript.showXY(mouseX, mouseY); 
  }
}








