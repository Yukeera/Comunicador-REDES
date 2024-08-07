
class Retangulo{
  private float x;
  private float y;
  private float largura;
  private float altura;
  private color colorButton;
  private int lastClickTime;
  private color colorClick;

  private String text;


  
  Retangulo(){
    colorClick = color (240,100,200);
    colorButton = color (227, 227, 227);
   
  }
  
  Retangulo(color backColor){
    colorButton = backColor;
  }
  

  public void createRect(float x,float y,float largura,float altura, String text){
    this.x= x;
    this.y= y;
    this.largura= largura;
    this.altura= altura;
    this.text = text;
    fill(colorButton);
    rect(x, y, largura, altura);
    fill (0, 0, 0);
    textAlign(CENTER, CENTER);
    text (text, x + largura / 2, y + altura / 2 );
    
  }

  


    
    
    
  
  
  
  public void createRect(float x,float y,float largura,float altura){
    this.x= x;
    this.y= y;
    this.largura= largura;
    this.altura= altura;
    fill(colorButton);
    
    rect(x, y, largura, altura);
  }
  
  public float getX(){
    return x;
  }
  public float getY(){
    return y;
  }
  public float getLargura(){
    return largura;
  }
  public float getAltura(){
    return altura;
  }


    
    
  
  void clickButton(){

    
    lastClickTime = millis();
    colorButton = colorClick;
  }
  
  void updateColor() {
    
    if (millis() - lastClickTime > 300) {
      colorButton = color(227, 227, 227);
    }
  }
}
