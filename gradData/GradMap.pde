import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Set;
import java.util.TreeSet;
import java.util.Scanner;
import static java.lang.System.*;


public class GradMap {
  Set<String>categorySet;
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
  public float averageSalary(String majorCategory) {
    int totalSal=0;
    int salCount=0;
    float avSal=0;
    String majorCategoryLowercase=majorCategory.toLowerCase();
    for (String s : theRealMap.keySet()) {
      String category=theRealMap.get(s).get(0);
      if (category.equals(majorCategoryLowercase)) {
        String sal=theRealMap.get(s).get(2);
        int addThisSal=parseInt(sal);
        totalSal+=addThisSal;
        salCount++;
      }
    }
    if (salCount!=0) {
      avSal=(totalSal/salCount);
    }
    return avSal;
  }
  public float averageRatio(String majorCategory) {
    float avRatio=0;
    float totalRatio=0;
    float ratioCount=0;
    String majorCategoryLowercase=majorCategory.toLowerCase();
    for (String s : theRealMap.keySet()) {
      String category=theRealMap.get(s).get(0);
      if (category.equals(majorCategoryLowercase)) {
        String indivRatio=theRealMap.get(s).get(1);
        float addThisRatio=parseFloat(indivRatio);
        totalRatio+=addThisRatio;
        ratioCount++;
      }
    }
    if (ratioCount!=0) {
      avRatio=(totalRatio/ratioCount);
    }
    return avRatio;
  }
  public Set getCategorySet() {
    categorySet=new TreeSet<String>();
    for (String s : theRealMap.keySet()) {
      categorySet.add(theRealMap.get(s).get(0));
    }
    return categorySet;
  }
  public void sortBySalary() {
    int numberOfCategories=getCategorySet().size();
    ArrayList<String> orderedList =new ArrayList<String>();
    /*
    next, make a list of majors, and compare the majors' salaries to one another until 
     
     */
  }
  public String toString() {
    return ""+theRealMap;
  }
}
