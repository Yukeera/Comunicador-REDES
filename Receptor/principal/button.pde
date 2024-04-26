class ButtonR{
  
  float x;
  float y;
  float width;
  float height;
  String text;
  color buttonColor;
  
  ButtonR(){
  }
  
  void buttonCreate(float x, float y, float width, float height, String text){
   this.x = x;
   this.y = y;
   this.width = width;
   this.height = height;
   this.text = text;
   displayButton();
 }
  
  void displayButton(){
    
    rect(x,y,width,height);
    fill(buttonColor);
    
    text(text,x + width * 0.04,y + height*0.7);
    fill(0);
  }
}
