class Grid
{ 
  float w, h;

  boolean show = false;

  ArrayList<Element> elements;

  //number of grid squares
  int n_grid_x;
  int n_grid_y;

  //size of grid squares
  float size_grid_x;
  float size_grid_y;

  //border is around everything
  float border_x;
  float border_y;

  //gutter is between grid squares
  float gutter_x;
  float gutter_y;

  Grid(Page p)
  {
    elements = new ArrayList<Element>();
    
    this.w = p.w;
    this.h = p.h;
    this.border_x = 0;
    this.border_y = 0;
    this.gutter_x = 0;
    this.gutter_y = 0;
    this.n_grid_x = 1;
    this.n_grid_y = 1;
  }
  
  

  void setSize(float newX, float newY) {
    this.w = newX;
    this.h = newY;
    update();
    
  }

  void setBorder(float newX, float newY) {
    this.border_x = newX;
    this.border_y = newY;
    update();
  }

  void setGrid(int newX, int newY) {
    this.n_grid_x = newX;
    this.n_grid_y = newY;
    update();
  }

  void setGutter(float newX, float newY) {
    this.gutter_x = newX;
    this.gutter_y = newY;
    update();
  }

  void update() {
    size_grid_x = (w-(2*border_x)-((n_grid_x-1)*gutter_x)) /n_grid_x;
    size_grid_y = (h-(2*border_y)-((n_grid_y-1)*gutter_y)) /n_grid_y;
  }


  void addElement(Element e)
  {
    elements.add(e);
  }

  void display(boolean show)
  {

    if (show)
    {
      stroke(200, 0, 0, 33);
      strokeWeight(.5);
      noFill();

      for (int i=0; i<n_grid_x; i++)
      {
        float x = border_x + (i*size_grid_x) + (i * gutter_x);
        for (int j=0; j<n_grid_y; j++)
        {
          float y = border_y + (j*size_grid_y) + (j * gutter_y);
          rect(x, y, size_grid_x, size_grid_y);
        }
      }
    }

    println(elements.size());
    for (int i = 0; i<elements.size(); i++)
    {
      elements.get(i).display();
      //println("displaying");
    }
  }
}