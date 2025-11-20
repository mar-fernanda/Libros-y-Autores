package com.fernanda.Libros_autores.controladores;

import java.util.HashMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class ControladorLibros {

    private static HashMap<String, String> listaLibros = new HashMap<>();

    public ControladorLibros() {
        listaLibros.put("Odisea", "Homero");
        listaLibros.put("Don Quijote de la Mancha", "Miguel de Cervantes");
        listaLibros.put("El Código Da Vinci", "Dan Brown");
        listaLibros.put("Alicia en el país de las maravillas", "Lewis Carroll");
        listaLibros.put("El Hobbit", "J.R.R. Tolkien");
        listaLibros.put("El alquimista", "Paulo Coelho");
    }

    @GetMapping("/libros")
    public String obtenerTodosLosLibros(Model model) {
        model.addAttribute("libros", listaLibros.keySet());
        return "libros.jsp";
    }

    @GetMapping("/libros/{nombre}")
    public String obtenerInformacionDeLibro(@PathVariable("nombre") String nombre, Model model) {
        if (listaLibros.containsKey(nombre)) {
            model.addAttribute("nombreLibro", nombre);
            model.addAttribute("nombreAutor", listaLibros.get(nombre));
        } else {
            model.addAttribute("error", "El libro no se encuentra en nuestra lista.");
        }
        return "detalleLibro.jsp";
    }

    @GetMapping("/libros/formulario")
    public String formularioLibro() {
        return "formularioLibros.jsp";
    }

    @PostMapping("/procesa/libro")
    public String procesaLibro(@RequestParam("nombreLibro") String nombreLibro,
                            @RequestParam("nombreAutor") String nombreAutor) {
        listaLibros.put(nombreLibro, nombreAutor);
        return "redirect:/libros";
    }
}
