import java.util.*;

public class Solution {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        for (int i = 0; i < t; i++) {
            int n = scanner.nextInt();
            int result = 1;
            for (int j = 1; j <= n; j++) {
                if (j % 2 == 0) {
                    result += 1;
                } else {
                    result *= 2;
                }
            }
            System.out.println(result);
        }
        scanner.close();
    }
}