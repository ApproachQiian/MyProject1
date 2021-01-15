package com.neusoft.web;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.BufferedReader;

public class click {
    public static void main(String[] args) {
        try {
            String res = getRes();
            System.out.println(res);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    //调用python脚本函数
    public static String getRes() {
        String result = "";
        try {
            Process process;
            process = Runtime.getRuntime().exec("D:/mysoft/anaconda/conda/envs/tf2py37/python.exe E:/javademos/MyProject/Python/animefaces.py");
            BufferedReader ir = new BufferedReader(new InputStreamReader(process.getInputStream()));
            String line = null;
            while ((line = ir.readLine()) != null) {
                result = line;
            }
            ir.close();
            process.waitFor();
        } catch (IOException e) {
            System.out.println("调用python脚本失败!");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return result;
    }
}