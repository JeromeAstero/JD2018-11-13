package by.it.mnovikov.jd02_03;

import java.util.HashMap;

class Goods {


    private static HashMap<String, Double> goods = new HashMap<>();

    static void setGoods() {
        goods.put("Кефир", 2.5);
        goods.put("Батон", 4.5);
        goods.put("Макароны", 3.5);
        goods.put("Тушенка", 8.5);
    }

    static void getPosition(HashMap goods, int position) {
        Object[] key = goods.keySet().toArray();
        System.out.print(key[position] + " = " + goods.get(key[position]) + " ");
    }
}
