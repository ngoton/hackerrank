import java.io.*;
import java.util.*;
import java.math.*;

public class Solution {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        BigInteger big1 = new BigInteger(sc.next());
        BigInteger big2 = new BigInteger(sc.next());
        BigInteger big3 = big1.add(big2);
        BigInteger big4 = big1.multiply(big2);
        System.out.println(big3);
        System.out.println(big4);
    }
}
