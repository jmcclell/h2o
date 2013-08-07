package water;

import hex.KMeansTest;

import java.util.ArrayList;

import water.deploy.NodeCL;
import water.util.Utils;

public class JUnitRunnerDebug {
  public static void main(String[] args) throws Exception {
    water.Boot.main(Master.class, args);
  }

  public static class Master {
    public static void main(String[] args) {
      String flat = "";
      flat += "127.0.0.1:54321\n";
      flat += "127.0.0.1:54322\n";
      flat += "127.0.0.1:54325\n";
      flat = Utils.writeFile(flat).getAbsolutePath();

      H2O.main(("  -ip 127.0.0.1 -port 54321 -flatfile " + flat).split(" "));
      new NodeCL(("-ip 127.0.0.1 -port 54323 -flatfile " + flat).split(" ")).start();
      new NodeCL(("-ip 127.0.0.1 -port 54325 -flatfile " + flat).split(" ")).start();

      ArrayList<Class> tests = new ArrayList<Class>();
      tests.add(KMeansTest.class);
      org.junit.runner.JUnitCore.runClasses(tests.toArray(new Class[0]));
      System.out.println("Success!");
    }
  }
}