class Quad{
  public float x;
  public float y;
  public float size;
  public String letter;
  color colorClick = color(240,100,200);
  color colorButton;
  int lastClickTime = 0;
  
 
  Quad (){
    
  }
  
  Quad (float x, float y,float size, String letter){ //Construtor do quadrado
    this.x = x;
    this.y = y;
    this.size = size;
    this.letter = letter;
    colorButton = color (227, 227, 227);
  }
  
  void displayQuad(Quad tecla){  // Mostar o quadrado
    fill(colorButton);
    square(tecla.x,tecla.y,tecla.size);
    fill(0);
    textSize(10);
    text(tecla.letter,tecla.x + tecla.size / 2.25, tecla.y + tecla.size / 1.75);
    
  }
  
  boolean isMouseOver(Quad tecla){ //checar clique
    if(mouseX > tecla.x && mouseX < tecla.x + tecla.size && mouseY > tecla.y && mouseY < tecla.y + tecla.size){
      return true;
    }
    else{
      return false;
    }  
    
  }
  
  void clickButton(){ //mudar a tecla de cor
    //if (colorButton == colorClick){
    //  colorButton = color(255,255,35);  
    //}
    //else{
    //  colorButton = colorClick;
      
    //}
    
    lastClickTime = millis();
    colorButton = colorClick;
  }
  
  void updateColor() {
    
    if (millis() - lastClickTime > 300) {
      colorButton = color(227, 227, 227);
    }
  }
  
  
  
}
