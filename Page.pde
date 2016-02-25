class Page {
  //grid
  //elements



  float w, h;
  Grid grid;
  boolean gridOn;
  boolean outputOff;

  Page(float w_, float h_) {

    w_*=mmpx;
    h_*=mmpx;

    this.w = w_;
    this.h = h_;

    grid = new Grid(this);
    outputOff = true;
  }

  void display() {

    if (outputOff) {
      pushMatrix();
      //assuming in centre

      translate(width/2, height/2);
      translate(-w/2, -h/2);
    }



    //assuming white for now
    fill(255);
    stroke(151);
    rect(0, 0, w, h);




    grid.display(gridOn);
    if (outputOff) {
      popMatrix();
    }
  }

  void gridOn() {
    gridOn = true;
  }
  void gridOff() {
    gridOn = false;
  }
  
  void addElement(Element e){
   grid.addElement(e); 
  }

  void setPageSize(float newW, float newH) {
    this.w = newW*mmpx;
    this.h = newH*mmpx;
  }

  void setGrid(int newX, int newY) {
    grid.setGrid(newX, newY);
  }

  void setGutter(float newX, float newY) {
    grid.setGutter(newX*mmpx, newY*mmpx);
  }

  void setBorder(int newX, int newY) {
    grid.setBorder(newX*mmpx, newY*mmpx);
  }

  void output(int pageNumber) {
    
    println("the outputter doesn’t work");
    
    int ww = (int)w;
    int hh = (int)h;
    outputOff = false;
    PGraphics pdf = createGraphics(ww, hh, PDF, documentName+"_"+pageNumber+".pdf");
    pdf.beginDraw();
    

    pdf.dispose();
    pdf.endDraw();
    outputOff = true;
  }
}//Page class