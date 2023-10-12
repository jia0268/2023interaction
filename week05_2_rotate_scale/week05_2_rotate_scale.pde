void setup(){
  size(400,400,P3D); //Processing 的 3D功能
}
void draw(){
  background(#FFFFF2);
  pushMatrix(); //備份矩陣
    translate(mouseX,mouseY); //移動到滑鼠位置
    rotateY(radians(mouseX)); //對Y軸轉動
    fill(0,255,0); //面填充綠色
    box(100); //3D的盒子、方塊
    
    noFill(); //面不要填
    scale(2); //放大2倍
    box(100); //雖然是100的盒子，但上面有放大兩倍，他就被放大了
    
  popMatrix(); //還原矩陣
}
