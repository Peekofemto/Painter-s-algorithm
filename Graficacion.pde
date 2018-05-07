  import peasy.PeasyCam;
  
  PeasyCam cam;
  
  int value = 0;
  
  void setup(){
    size(800,600,P3D);
    cam = new PeasyCam(this,100);
    frameRate(60);
  }
  
  void draw(){
    
    background(#ABCDEF); //Actualizando el background tantas veces como framerate lo diga
    if(value == 2 || value == 0 || value == 1){
    //Primera caja
    //translate(100,0,20);
    stroke(0);           //Color stroke primera caja
    strokeWeight(4);     //Grosor stroke primera caja
    fill(#BBAADD);       //Color de relleno primera caja
    box(40);             //caja
    }
    if(value == 0 || value == 1){
    //segunda caja
    translate(0,-40,0);
    stroke(0);           //Color stroke segunda caja
    strokeWeight(4);     //Grosor stroke segunda caja
    fill(#59F3B3);       //Color de relleno segunda caja
    box(40);             //segunda caja
    }
    if(value == 0){
    //tercera caja
    translate(0,-40,0);
    stroke(0);           //Color stroke tercera caja
    strokeWeight(4);     //Grosor stroke tercera caja
    fill(#897D81);       //Color de relleno tercera caja
    box(40);    //tercera caja
    }
    
    if(value >= 3){
      value = 0;
    }
    
    
  }
  
    void keyPressed() {
      if (keyCode == ENTER) {
        value = value + 1;
      } 
    }