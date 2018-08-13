rocketShip daOne=new rocketShip(240,600);
backStars [] backGround=new backStars[300];
public void setup(){
  size(480,640);
}
public void draw(){
  background(0); 
  for(int i=0;i<backGround.length;i++){
    backGround[i]=new backStars();
    backGround[i].show();
  }
  daOne.show();
  daOne.keyMove(); 
}
public class rocketShip{
  int myX, myY;
  public rocketShip(int x, int y){
    myX=x;
    myY=y;
  }
  public void show(){
    triangle(myX,myY-5,myX-10,myY+5,myX+10,myY+5);
  }
  public void keyMove(){
    if(keyPressed&&key=='a')
      myX-=10;
    if(keyPressed&&key=='d')
      myX+=10;
  }
}
public class alienShip{
}
public class scoreCounter{
}
public class backStars{
  int starX, starY;
  public backStars(){
    starX=(int)(Math.random()*480);
    starY=(int)(Math.random()*640);
  }
  public void show(){
    ellipse(starX,starY,5,5);
  }
}
