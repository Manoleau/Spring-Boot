package com.mycompany.menagerie.models;

public class Chien extends Animal {
    public Chien(String nom) {
        super(nom);
    }
    @Override
    public String getCri() {
        return "Waff";
    }
    @Override
    public String getType() {
        return "Chien";
    }
}
