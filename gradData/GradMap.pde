import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class GradMap {

  TreeMap<String, ArrayList <String>> theRealMap=new TreeMap<String, ArrayList <String>>();

  public GradMap(String fileName) {
    try {
      scan=new Scanner(new File(fileName));
      int size=scan.nextInt();
      scan.nextLine();
      while (scan.hasNext()) {
        loadGrads(scan.nextLine());
      }
    }
    catch(Exception e) {
      println("unfortunately, "+e);
    }
  }
  public void loadGrads(String g) {
    //String major, 
    Grads grad=new Grads(g);
    ArrayList<String> theRest=new ArrayList<String>();
    theRest.add(grad.getMajorCategory());
    theRest.add(""+grad.getRatio());
    theRest.add(""+grad.getSalary());
    theRealMap.put(grad.getMajor(), theRest);
  }
  public String toString(){
    return ""+theRealMap;
  }
}
