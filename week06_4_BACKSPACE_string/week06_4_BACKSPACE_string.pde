void setup(){
  size (1500,500);
  textSize(64);
}
String line = "";
void draw(){
  background(0);
  text("Input: "+line,100,100);
}
void keyPressed(){
  if(key>='A'&& key<='Z')line += key;
  if(key>='a'&& key<='z')line += key;
  if(key == BACKSPACE && line.length()>0){
    line = line.substring(0,line.length()-1);
  }
}
