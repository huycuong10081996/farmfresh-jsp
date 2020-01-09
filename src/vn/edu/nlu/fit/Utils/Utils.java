package vn.edu.nlu.fit.Utils;

import Model.Product;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class Utils {
    static final String HOST = "http://localhost:8080/final_project/";

    public static String fullPath(String path) {
        return HOST + path;
    }

    public static void sortByPrice(ArrayList<Product> list) {
        Collections.sort(list, new Comparator<Product>() {
            @Override
            public int compare(Product o1, Product o2) {
                if (o1.getProductSalePrice() < o2.getProductSalePrice()) {
                    return -1;
                } else {
                    if (o1.getProductSalePrice() == o2.getProductSalePrice()) {
                        return 0;
                    } else {
                        return 1;
                    }
                }
            }
        });
    }

    public static void sortByName(ArrayList<Product> list) {
        for (int i = 0; i < list.size(); i++) {

            for (int j = i + 1; j < list.size(); j++) {
                if (list.get(j).compareTo(list.get(j)) < 0) {
                    swap(list.get(j), list.get(i));
                }
            }
        }
    }

    public static void swap(Product a, Product b) {
        Product temp = a;
        a = b;
        b = temp;
    }

    private static class ActionContext {
    }
}
