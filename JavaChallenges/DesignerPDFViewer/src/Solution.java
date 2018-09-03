import java.util.*;

public class Solution {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] values = new int[26];
        for (int i = 0; i < 26; i++) {
            values[i] = scanner.nextInt();
        }
        HashMap<Character, Integer> heightMap = new HashMap();
        int counter = 0;
        for (Character ch = 'a'; ch <= 'z'; ch++) {
            heightMap.put(ch, values[counter]);
            counter++;
        }
        String word = scanner.next();
        int length = word.length();
        int max = 0;
        for (Character ch : word.toCharArray()) {
            if (heightMap.get(ch) > max) {
                max = heightMap.get(ch);
            }
        }
        int result = max * length;
        System.out.println(result);
        scanner.close();
    }

}
