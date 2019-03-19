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

void setup(){
  GradMap gradMap=new GradMap("Desktop/gradData/gradData.txt");
  println(gradMap); 
  size(1200,900);
  background(255);
}
void draw(){
  noStroke();
  fill(235);
  rect(100,100,1000,30,300);
}
