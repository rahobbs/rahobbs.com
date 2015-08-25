void setup() {
  size(760,679);
  background(70, 70, 70, 70);
  stroke(75, 100);
  frameRate(5);
 
}
 
void draw() {
   int l = 40;
   for (int y=0; y <=height; y+=l) {
       for (int x =0; x<= width; x+=l) {
         fill(random(50,150), random(5,80), random(180,235));
         rect(x,y,l,l);           
      }
      //uncomment below to save each drawing
      //saveFrame("blueCardsGrayLines-####.png");
    }
}

