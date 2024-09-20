package com.mycompany.menagerie.controller;

import com.mycompany.menagerie.models.Animal;
import com.mycompany.menagerie.models.Chat;
import com.mycompany.menagerie.models.Chien;
import com.mycompany.menagerie.models.Oiseau;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Arrays;

@Controller
public class MenagerieController {
    private ArrayList<Animal> animaux = new ArrayList<>();

    @RequestMapping("/")
    public ModelAndView menu() {
        return new ModelAndView("menu").addObject("typeAnimaux",Arrays.asList("Chien", "Chat", "Perroquet"));
    }

    @PostMapping("/ajout")
    public ModelAndView ajout(HttpServletRequest request) {
        String nom = request.getParameter("nom");
        String type = request.getParameter("type");
        switch (type) {
            case "Chien":
                animaux.add(new Chien(nom));
                break;
            case "Chat":
                animaux.add(new Chat(nom));
                break;
            case "Oiseau":
                animaux.add(new Oiseau(nom));
                break;
            default:
                return new ModelAndView("redirect:/");
        }
        return new ModelAndView("ajout").addObject("message", "l'animal " + nom + " de type " + type + " a été crée");
    }

    @RequestMapping("/list")
    public ModelAndView list() {
        return new ModelAndView("list").addObject("animaux", animaux);
    }
}
