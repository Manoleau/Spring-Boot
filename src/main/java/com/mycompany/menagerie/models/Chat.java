package com.mycompany.menagerie.models;

public class Chat extends Animal {
    public Chat(String nom) {
        super(nom);
    }
    @Override
    public String getCri() {
        return "Miaou";
    }
    @Override
    public String getType() {
        return "Chat";
    }
}
