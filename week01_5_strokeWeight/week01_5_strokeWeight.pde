//互動模式 Interactive Mode (Active Mode)
void setup(){ //設定
  size(500,500);
  background(255); //改白色背景 背景(255);
}
void draw(){ //畫圖 每秒畫60次
  if(mousePressed){ //如果 mouse有按下去
    line(mouseX,mouseY,pmouseX,pmouseY);
  }//畫線(滑鼠座標mouseX,mouseY,到之前滑鼠座標pmouseX,pmouseY);
}
void keyPressed(){ //如果有按下keyboard的key
  if(key=='1')stroke(255,  0,  0); //如果按下數字1 筆觸是紅色
  if(key=='2')stroke(  0,255,  0); //如果按下數字2 筆觸是綠色
  if(key=='3')stroke(  0,  0,255); //如果按下數字3 筆觸是藍色
  if(key=='s'||key=='S')save("output.png");
  if(key=='+')strokeWeight(10);
  if(key=='-')strokeWeight(1);
}
