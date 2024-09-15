package controllers;

public class Calculations {
    public static double CalculateInterest (double principle,double rate,int time,int frequency) {
       return principle * Math.pow((1 + (rate / frequency)), (frequency * time));
    }
}
