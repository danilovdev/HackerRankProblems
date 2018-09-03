import java.util.*;
import java.io.*;
import java.math.*;
import java.text.*;

public class Solution {
    
    public static void main(String[] args) {
        
        Scanner scanner = new Scanner(System.in);
        int a[][] = new int[6][6];
        for (int i = 0; i < 6; i++) {
            for (int j = 0; j < 6; j++) {
                a[i][j] = scanner.nextInt();
            }
        }
        scanner.close();
        int maxSum = 0;
        for (int i = 0; i < 4; i++) {
            for (int j = 0; j < 4; j++) {
                int currentSum = a[i][j] + a[i][j + 1] + a[i][j + 2] +
                                 a[i + 1][j + 1] +
                                 a[i + 2][j] + a[i + 2][j + 1] + a[i + 2][j + 2];
                if (currentSum > maxSum) {
                    maxSum = currentSum;
                }
            }
        }
        System.out.println(maxSum);
       
    }
}
