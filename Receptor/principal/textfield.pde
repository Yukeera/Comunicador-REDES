class TextField{
  
  String text;
  float x;
  float y;
  
  TextField(float x, float y){
    text = "Mensagem: ";
    this.x = x;
    this.y = y;
    
  }
  
  void setText(String text){
    this.text = text;
  }
  
  void displayText(){
    fill(255);
    textSize(30);
    text(text, x, y);
  }
  
}
