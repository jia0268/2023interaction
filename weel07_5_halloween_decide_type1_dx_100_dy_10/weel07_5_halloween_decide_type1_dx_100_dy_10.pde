ArrayList<PVector>pt;
PImage hi; 
void setup(){
  size(400,400);
  background(255);
  pt= new ArrayList<PVector>();
  hi = loadImage("hi.PNG"); 
}
float ghostX=400,ghostY=20;
void mouseDragged(){ //按下mouse鍵 再拖他
  pt.add(new PVector(mouseX,mouseY));
}
void draw(){
  background(255);
  image(hi,125,120,150,150);
  //ellipse(200,200,15,15);
  
  //if(mousePressed)line(mouseX,mouseY,pmouseX,pmouseY);
  
  strokeWeight(4);
  float dpx=0,dpy=0; //要看 p.x p2.x 的差距, p.y p2.y的差距
  for(int i=0; i<pt.size()-1; i++){
    PVector p = pt.get(i),p2 = pt.get(i+1);
    dpx += abs(p2.x-p.x); //累積x的移動量
    dpy += abs(p2.y-p.y); //累積y的移動量
  }
  if(dpx>100 && dpy<40) stroke(255,0,0);  //type1 紅色的橫線
  else stroke(0); // 不是就黑色
  for(int i=0; i<pt.size()-1; i++){
    PVector p = pt.get(i),p2 = pt.get(i+1);
    line(p.x,p.y,p2.x,p2.y);//ellipse(p.x,p.y,3,3);
  }
  ellipse(ghostX,ghostY,15,15);
  float dx = 200-ghostX, dy = 200-ghostY,len = sqrt(dx*dx+dy*dy);
  ghostX += dx / len / 3;
  ghostY += dy / len / 3;
}
void mouseReleased(){
  for(int i=pt.size()-1;i>=0;i--){ //倒過來的for迴圈
    pt.remove(i);
  }
}
