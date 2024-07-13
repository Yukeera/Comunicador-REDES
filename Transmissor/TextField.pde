class TextField{
  String text;
  float x;
  float y;
  color textColor;
  Retangulo backgroundText = new Retangulo(color ( 0 , 0 , 0 , 50));
  
  TextField(float x, float y, String text){
    this.text = text;
    textColor = color (85, 189, 47);
    this.x = x;
    this.y = y;
    
   
  }
  
  String getText(){
    return text;
  }
  
  void setText(String text){
    this.text = text;
  }
  
  void setColor(color textColor){
    this.textColor = textColor;
  }
  
  void displayText(){
    fill(textColor);
    textSize(25);
    text(text, x, y);
  }
  
  void backgroundDisplay(){
    backgroundText.createRect(70, 20, 540, 40);
    
  }
  
}
