import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.io.File;
import java.util.Collections;
import static java.lang.System.*;

Scanner scan;
int size;
GradMap gradMap=new GradMap("Desktop/gradData/gradData.txt");

/*okay here's how I'm thinking we switch between scenes- I'll make an array [opening, engineering, education...] so it'll be filled with an
opening setting and then various other settings based on grad categories. So then based on which box you click on, the array will move.
*/


void setup(){
  //println(gradMap); 
  size(1200,900);
  background(255);
  /*various test cases:
  println(gradMap.averageSalary("physical sciences"));// this is how you'd get the average salary of a given major category.
   you can type in uppercase or lowercase it doesn't matter
  println("size: "+gradMap.getCategorySet().size());
  println(gradMap.averageRatio("education"));
  println(gradMap.averageSalary("education"));
  */
  println("size: "+gradMap.getCategorySet());
}
void draw(){
  
  noStroke();
  fill(235);
  rect(100,100,1000,30,300);
}
void scene1(){
  textSize(70);
  fill(74, 119, 45);
  text("GradData", 433,250);
  text("This data shows the male:female ratio in 18 college major categories. Click on a category to find ratios within individual\nmajors",433, 350);
  //for(String majorCategory:gradMap.getCategorySet()){
  }
