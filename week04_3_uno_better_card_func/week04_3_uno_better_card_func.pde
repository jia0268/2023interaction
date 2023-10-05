void setup(){
  size(400,400);
}
int [][] card = new int[8][11];
color [] c = {#FF5555,#FFAA00,#55AA55,#5555FF}; 
void draw(){
  background(255);
  for(int i=0;i<8;i++){
    for(int j=0;j<11;j++){
      drawCard(j*32,i*50,c[i%4]);
    }
  }
}
void drawCard(int x,int y,color c){
  stroke(128); // 灰色筆觸
  fill(255); //填充白色
  rect(x,y,32,50,7);
  noStroke(); //不要筆觸(不要描邊)
  fill(c);
  rect(x+3,y+3,32-5,50-5,4);
}
