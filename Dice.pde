Die[]tony=new Die[16];



void setup()
  {
    size(200,210);
    noLoop();
  }
  void draw()
  {
    background(255);
    int total=0;
    for(int i=0;i<4;i++){
      for(int j=0;j<4;j++) {
      int index=i*4 + j;
      tony[index]=new Die(i*40+10,j*40+10);
      tony[index].roll();
      tony[index].show();
      total+=tony[index].value;
      }
    }
    textSize(20);
    text(total,110,200);
    text("Total: ",55,200);
  }
  void mousePressed()
  {
      background(0);
      redraw();
  }
  class Die 
  { int myX, myY, value ;


      Die(int x, int y) 
      {
         myX=x;
         myY=y;
         value=6;
      }
      void roll()
      {
         value=(int)(Math.random()*6)+1; 
      }

void show()
      {
          fill(255,255,255); 
          line(myX,myY,myX+50,myY);
          line(myX+50,myY,myX+50,myY+50);
          line(myX+50,myY+50,myX,myY+50);
          line(myX,myY+50,myX,myY);
          fill(0,0,0);
          if(value==1){
            ellipse(myX+25,myY+25,7,7);
          }
          if(value==2){
                ellipse(myX+15,myY+15,7,7);
                ellipse(myX+30,myY+30,7,7);
          }
          if(value==3){
                ellipse(myX+15,myY+30,7,7);
                ellipse(myX+30,myY+15,7,7);
                ellipse(myX+25,myY+25,7,7);
          }
          if(value==4){
                ellipse(myX+15,myY+15,7,7);
                ellipse(myX+30,myY+30,7,7);
                ellipse(myX+30,myY+15,7,7);
                ellipse(myX+15,myY+43,7,7);
          }
          if(value==5){
                ellipse(myX+15,myY+15,7,7);
                ellipse(myX+30,myY+30,7,7);
                ellipse(myX+30,myY+15,7,7);
                ellipse(myX+15,myY+30,7,7);
                ellipse(myX+25,myY+25,7,7);
          }
             if(value==6){
                ellipse(myX+15,myY+15,7,7);
                ellipse(myX+30,myY+30,7,7);
                ellipse(myX+30,myY+15,7,7);
                ellipse(myX+15,myY+30,7,7);
                ellipse(myX+15,myY+25,7,7);
                ellipse(myX+30,myY+25,7,7);
          }
      }
  }
