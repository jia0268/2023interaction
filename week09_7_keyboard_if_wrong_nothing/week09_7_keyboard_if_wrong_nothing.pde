PImage img;
int [][] pos ={{114,472},{336,523},{236,523},{214,472},{191,421},{264,472},{314,472},{364,472},{441,421},{414,473},{464,473},{514,472},{437,523},{386,524},{490,421},{541,421},{91,420},{240,421},{164,472},{291,420},{390,420},{286,523},{140,421},{185,523},{340,421},{136,524}};
void setup(){
  size(800,600);
  img = loadImage("keyboard.jpg");
  rectMode(CENTER);
}
void draw(){
  background(#FFFFF2);//淡黃色背景
  image(img,0,600-296);
  fill(255,0,0,128);//128半透明紅色
  rect(mouseX,mouseY,43,43,5);//5圓滑
  fill(0,255,0,128);//半透明的綠色
  for(int i=0;i<26;i++){
    if(typing.charAt(ID)-'a'==i)rect(pos[i][0],pos[i][1],43,43,5);
    if(pressed[i])rect(pos[i][0],pos[i][1],43,43,5);
  }
  fill(0);//黑色的字
  textSize(50);
  text(typing,50,80); //要打的字
  fill(255,0,0);//紅色
  text(typed+typing.charAt(ID),50,120);//現在要打的字是
  fill(0);
  text(typed,50,120); //已經打好的字
}
String typing = "printfprintfprintf";
String typed = "";//一開始打了0個字
int ID = 0; //第幾個字母要被打
boolean [] pressed = new boolean[26];//java的陣列宣告 都是0或false
void keyPressed(){
  if(key>='a'&&key<='z'){
    if(key==typing.charAt(ID)){ //字母正確就往下
      pressed[key-'a']=true;
      typed += key;
      ID++;
    }else{
      background(255,0,0); //背景閃爍紅色
    }
  }
}
void keyReleased(){
  if(key>='a'&&key<='z')pressed[key-'a']=false;
}
void mousePressed(){
  println(mouseX,mouseY);//定位、印出mouse座標
}
