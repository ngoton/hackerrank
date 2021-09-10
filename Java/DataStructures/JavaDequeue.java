    import java.util.*;
    public class test {
        public static void main(String[] args) {
            Scanner in = new Scanner(System.in);
            Deque deque = new ArrayDeque<>();
            HashMap<Integer, Integer> map = new HashMap<Integer, Integer>();
            int n = in.nextInt();
            int m = in.nextInt();
            int max = 0;

            for (int i = 0; i < n; i++) {
                int num = in.nextInt();
                if (i >= m) {
                    int item = (Integer)deque.removeFirst();
                    
                    map.put((Integer)item, map.get((Integer)item) - 1);
                    
                    if (map.get((Integer)item) == 0)
                        map.remove((Integer)item);
                }
               
                deque.add((Integer)num);
                
                if (map.containsKey((Integer)num))
                    map.put((Integer)num, map.get((Integer)num) + 1);
                else
                    map.put((Integer)num, 1);
                                   
                max = Math.max(max, map.size());    
                
                if (max == m)
                    break;
            }
            System.out.println(max);
        }
    }



