class Element
{
  Grid g;
  
  boolean isSelected;
  
  int x, y, w, h;//size in grid
  float xx, yy, ww, hh;//size for display
  float xOff, yOff;
  color COLOUR;

  Element(Grid g_, int x_, int y_, int w_, int h_)
  {
    this.g = g_;
    this.x = x_;
    this.y = y_;
    this.w = w_;
    this.h = h_;

    update();
  }

  void update()
  {
    //if it throws here, you need to declare the grid first…
    xx = xOff+g.border_x+(x*g.size_grid_x)+(x*g.gutter_x);
    yy = yOff+g.border_y+(y*g.size_grid_y)+(y*g.gutter_y);
    ww = w*g.size_grid_x+(w*g.gutter_x)-g.gutter_x;
    hh = h*g.size_grid_y+(h*g.gutter_y)-g.gutter_y;
  }
  
  void setColour(color c)
  {
   COLOUR = c; 
  }
  
  void setXoff(float newX){
    this.xOff = newX;
    update();
  }
  
  void setYoff(float newY){
    this.yOff = newY;
    update();
  }

  void display()
  {
  }
}