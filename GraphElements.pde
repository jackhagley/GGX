class LineGraph extends Graph
{
  ArrayList<Float> values = new ArrayList<Float>();
  boolean filled;
  float max, min;


  LineGraph(Grid g_, int x_, int y_, int w_, int h_)
  {
    super(g_, x_, y_, w_, h_);
  }

  void display() {

    pushMatrix();
    translate(0, hh);
    scale(1, -1);
    
    ////REMEMBER THAT Y IS UPSIDE DOWN!////////

    float xUnit = ww / values.size();
    float yUnit = hh / (abs(max)+abs(min));


    stroke(255);
    line(xx, -yy, ww+xx, -yy);
    stroke(0, 200, 0);
    //line(xx, (max*yUnit)-yy, ww+xx, (max*yUnit)-yy);
    //line(xx, (min*yUnit)-yy, ww+xx, (min*yUnit)-yy);


    if (filled) {
      noStroke();
      fill(COLOUR);
    } else {
      stroke(COLOUR); 
      noFill();
    }

    beginShape();
    for (int i = 0; i<values.size(); i++)
    {
      float value = values.get(i)*yUnit;
      vertex(xx+(xUnit*i), value-yy);

      //strokeWeight(5);
      //point(xx+(xUnit*i), (value)-yy);
    }
    endShape();

    popMatrix();
  }//display


  void filled(boolean f) {
    this.filled = f;
  }

  void setMax(float max_)
  {
    this.max = max_;
    
  }
  
  float getMax(){
   return max; 
  }
  
  float getMin(){
   return min; 
  }

  void setMin(float min_)
  {
    this.min=min_;
  }

  void setValues(ArrayList<Float> values_) {
    //ALSO RESETS THE MAXIMUM & MINIMUM!   
    float tempMax = MIN_FLOAT;
    float tempMin = MAX_FLOAT;
    values.clear();
    for (int i = 0; i<values_.size(); i++)
    {
      values.add(values_.get(i));
      if (values_.get(i)>tempMax)
      {
        tempMax = values_.get(i);
      }

      if (values_.get(i)<tempMin)
      {
        tempMin = values_.get(i);
      }
    }
    this.max = tempMax;
    this.min = tempMin;
  }
}//LineGraph



class Graph extends Element
{

  Graph(Grid g_, int x_, int y_, int w_, int h_)
  {
    super(g_, x_, y_, w_, h_);
  }

  void display()
  {
  }
}



class RatioBar extends Graph {

  int a;
  int b;

  float border;

  RatioBar(Grid g_, int x_, int y_, int w_, int h_, int a_, int b_, float t, float border_)
  {

    super(g_, x_, y_, w_, h_);

    this.a = a_;
    this.b = b_;
    this.border = border_;

    yy+=(border/2);
    hh-=(border);
  }

  void display() {
    float unit = ww/(a+b);

    noStroke();

    //println("RatioBar displaying");
  }
}