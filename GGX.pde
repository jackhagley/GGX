/*

 Graph maker with pages!
 
 */

/*
 
 Use these for pdf mastery:
 PGraphicsPDF pdf = (PGraphicsPDF) g;  // Get the renderer
 pdf.nextPage();  // Tell it to go to the next page
 
 */


String documentName = "output";


import processing.pdf.*;

Table data;

float mmpx = .2838;//converts mm to px and back


//FILE HANDLING
String filename = "data_2";

Page p;
Square sq;

void setup()
{  
  //size(displayWidth, displayHeight, PDF, "documentName"+".txt");
  size(displayWidth, displayHeight);

  background(#b0b0b0);

  //DATA
  data = new Table(filename+".txt");


  p = new Page(2100, 2970);


 

  ///////ELEMENTS////////////
  
  p.addElement(new Square(p.grid,2,2,5,6));
  
  p.gridOn();
  p.setBorder(100, 100);
  p.setGutter(30, 30);
  p.setGrid(16, 16);
  p.display();

}