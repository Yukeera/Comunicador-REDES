<<<<<<< HEAD
class Retangulo{
  private float x;
  private float y;
  private float largura;
  private float altura;
  private color colorButton;
  private int lastClickTime;
  private color colorClick;
  
  Retangulo(){
    colorClick = color (240,100,200);
    colorButton = color (227, 227, 227);
   
  }
  
  Retangulo(color backColor){
    colorButton = backColor;
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
=======
class Retangulo{
  private float x;
  private float y;
  private float largura;
  private float altura;
  private color colorButton;
  private int lastClickTime;
  private color colorClick;
  
  Retangulo(){
    colorClick = color (240,100,200);
    colorButton = color (227, 227, 227);
   
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
>>>>>>> fab4e4952aa28b1580a13f806aeb2b90c2f73f40
