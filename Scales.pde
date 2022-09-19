void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
  background(100,100,100);
}

void draw() {
  boolean shift = true;
  for(int y = 500; y > -25; y -= 25)
  {
    for(int x = 0; x < 575; x += 75)
    {
       if(shift == true)
          scale(x - 40, y);
       else
          scale(x-5, y);
    }
        if(shift == true)
       a = false;
    else
       a = true;
  }
}
void scale(int x, int y) {
  int i = 0;
  int j = 0;
  float c = 0;
  while((i < 33) && (j < 33)){
    c += 200/((float)(Math.random() * 50) + 10);
    strokeWeight(7);
    stroke(c, y, x);
    fill(100,100,100);
    rect(x+20, y, 50, 45);
    ellipse(x, y, 75, 40);
    i++;
    j--;
  }
}
