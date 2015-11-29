import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class Main {
    static double average(List<Integer> ls) {
            double average = 0.0;
            for (Integer n: ls)
                average += n;
            return average / ls.size();
    }

    static double variance(List<Integer> ls) {
            double variance = 0.0;
            double average = average(ls);
            for (Integer n: ls)
                variance += Math.pow(n - average, 2);
            return variance /= ls.size();
    }

    static double standardDeviation(List<Integer> ls) {
            return Math.sqrt(variance(ls));
    }

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        while (scan.hasNext()) {
            int noItem = scan.nextInt();
            if (noItem == 0)
                break;

            List<Integer> ls = new ArrayList<Integer>();
            for (int i = 0; i < noItem; i++)
                ls.add(scan.nextInt());

            System.out.printf("%.6f\n", standardDeviation(ls));
        }
    }
}
