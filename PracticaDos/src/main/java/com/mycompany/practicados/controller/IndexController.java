package com.mycompany.practicados.controller;

import com.mycompany.practicados.service.ProveedorService;
import java.util.stream.Collectors;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @Resource
    private ProveedorService proveedorService;

    @GetMapping("/index")
    public String get(Model model) {

        var proveedorList = proveedorService.buscarProveedorList();

        model.addAttribute("proveedorList", proveedorList.stream().filter(pr -> !pr.isEliminado()).collect(Collectors.toList()));
        model.addAttribute("eliminadosList", proveedorList.stream().filter(pr -> pr.isEliminado()).collect(Collectors.toList()));

        return "index";
    }

    @GetMapping("/")
    public String getEliminado(Model model) {

        var proveedorList = proveedorService.buscarProveedorList();

        model.addAttribute("proveedorList", proveedorList.stream().filter(pr -> !pr.isEliminado()).collect(Collectors.toList()));
        model.addAttribute("eliminadosList", proveedorList.stream().filter(pr -> pr.isEliminado()).collect(Collectors.toList()));

        return "index";
    }
}
