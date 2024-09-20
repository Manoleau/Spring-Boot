package com.mycompany.menagerie.models;

public class Oiseau extends Animal {
    public Oiseau(String nom) {
        super(nom);
    }
    @Override
    public String getCri() {
        return "Miaou";
    }
    @Override
    public String getType() {
        return "Oiseau";
    }
}
