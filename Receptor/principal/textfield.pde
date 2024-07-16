class TextField{
  
  String text;
  float x;
  float y;
  color textColor;
  
  TextField(float x, float y, String text){ //criação de campos de textos
    this.text = text;
    textColor = (255);
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
    textSize(30);
    text(text, x, y);
  }
  
  void cleanText (){ 
    text = "MENSAGEM: ";
    text(text, x,y);
    
  }
  
}
