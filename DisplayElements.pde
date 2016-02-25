class TextBox extends Element
{
  String text;
  String align;
  String type;

  TextBox(Grid g_, int x_, int y_, int w_, int h_, String s, String type_, String align_)
  {
    super(g_, x_, y_, w_, h_);
    this.text = s;
    this.type = type_;
    this.align = align_;
  }

  void display()
  {
    if (align.equals("r")) {
      textAlign(RIGHT, CENTER);
    }
    if (align.equals("c")) {
      textAlign(CENTER, CENTER);
    }
    if (align.equals("l")) {
      textAlign(LEFT, CENTER);
    }



    text(text, xx, yy, ww, hh);
  }
}




//class HorzLine extends Element
//{
//  float weight;

//  HorzLine(int x_, int y_, int w_, int h_, float weight_, float t)
//  {
//    super(x_, y_, w_, h_);
//    yy=yy-(g.gutter_y/2);
//    this.weight = weight_;
//  }

//void display()
//{
//  noFill();
//  strokeWeight(weight);
//  stroke(255);
//  line(xx, yy, xx+ww, yy);
//}
////h line

//class VertLine extends Element
//{
//  float weight;

//  VertLine(int x_, int y_, int w_, int h_, float weight_, float t)
//  {
//    super(x_, y_, w_, h_);
//    xx=xx-(g.gutter_x/2);
//    this.weight = weight_;
//  }

//  void display()
//  {
//    noFill();
//    strokeWeight(weight);
//    stroke(255);
//    line(xx, yy, xx, yy+hh);
//  }
//}//h line

class Square extends Element {

  Square(Grid g_, int x_, int y_, int w_, int h_)
  {
    super(g_, x_, y_, w_, h_);
  }

  void display()
  {
    COLOUR = color(255,200,0);
    fill(200, 0, 0, 75);
    noStroke(); 
    rect(xx, yy, ww, hh);
  }
}//square