import java.math.BigDecimal;
import java.util.*;
class Solution{
    public static void main(String []args){
        //Input
        Scanner sc= new Scanner(System.in);
        int n=sc.nextInt();
        String []s=new String[n+2];
        for(int i=0;i<n;i++){
            s[i]=sc.next();
        }
        sc.close();

        Arrays.sort(s, new Comparator<Object>() {
            public int compare(Object o1, Object o2) {
                if (o1 == null || o2 == null) {
                    return 0;
                }
                BigDecimal bigDec1 = new BigDecimal((String)o1);
                BigDecimal bigDec2 = new BigDecimal((String)o2);
                return bigDec2.compareTo(bigDec1);
            }
       });

        //Output
        for(int i=0;i<n;i++)
        {
            System.out.println(s[i]);
        }
    }
}
