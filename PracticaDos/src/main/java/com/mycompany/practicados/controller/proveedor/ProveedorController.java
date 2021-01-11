
package com.mycompany.practicados.controller.proveedor;

import com.mycompany.practicados.model.Proveedor;
import com.mycompany.practicados.service.ProveedorService;
import static com.mycompany.practicados.service.ProveedorService.eliminadosList;
import java.util.List;
import javax.annotation.Resource;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ProveedorController {

    @Resource
private ProveedorService proveedorService;
    
    @GetMapping("/proveedor")
    public String get(Model model) {

        model.addAttribute("proveedor", new Proveedor());

        return "proveedor/crear-proveedor";
    }

    @PostMapping("/proveedor/crear")
    public String create(Model model, @Valid @ModelAttribute("proveedor") Proveedor proveedor, BindingResult bindingResult) {
        if (!bindingResult.hasErrors()) {

            boolean agregado = proveedorService.agregarProveedor(proveedor);

            if (agregado) {
                model.addAttribute("proveedor", new Proveedor());
                model.addAttribute("mensaje", "El cliente ha sido creado");
            } else {
                model.addAttribute("mensaje", "El cliente ya existe");
            }
        }
        return "proveedor/crear-proveedor";
    }

    @GetMapping("/proveedor/codigo/{codigo}")
    public String getByCodigo(Model model, @Valid @PathVariable("codigo") String codigo) {

        var proveedor = proveedorService.buscarProveedor(codigo);

        model.addAttribute("proveedor", proveedor);

        return "proveedor/editar-proveedor";
    }

    @PostMapping("/proveedor/editar")
    public String modificar(Model model, @Valid @ModelAttribute("proveedor") Proveedor proveedor, BindingResult bindingResult) {

        if (!bindingResult.hasErrors()) {

            boolean editado = proveedorService.modificarProveedor(proveedor);

            if (editado) {
                model.addAttribute("proveedor", new Proveedor());
                model.addAttribute("mensaje", "El cliente ha sido modificado");
            } else {
                model.addAttribute("mensaje", "El cliente ya existe");
            }
        }
        return "proveedor/editar-proveedor";
    }

    @GetMapping("/proveedor/eliminar/{eliminar}")
    public String getEliminar(Model model, @PathVariable("eliminar") String eliminar) {

        var proveedor = proveedorService.buscarProveedor(eliminar);

        model.addAttribute("proveedor", proveedor);

        return "proveedor/eliminar-proveedor";
    }

    @PostMapping("/proveedor/eliminar")
    public String eliminar(Model model, @ModelAttribute("proveedor") Proveedor proveedor) {

        proveedorService.eliminarProveedor(proveedor);
        
        model.addAttribute("proveedor", proveedor);
        model.addAttribute("mensaje", "El cliente ha sido inhabilitado");           
        
        return "proveedor/eliminar-proveedor";
    }
    
    @GetMapping("/proveedor/eliminado/{eliminado}")
    public String getEliminado(Model model, @PathVariable("eliminado") String eliminado) {

        var proveedor = proveedorService.buscarEliminado();

        model.addAttribute("proveedor", proveedor);

        return "proveedor/eliminado";
    }
  
    @PostMapping("/proveedor/eliminado")
    public String eliminado(Model model, @Valid @ModelAttribute("proveedor") Proveedor proveedor, BindingResult bindingResult) {
        if (!bindingResult.hasErrors()) {

            boolean eliminado = proveedorService.agregarProveedor2(proveedor);

            if (eliminado) {
                model.addAttribute("proveedor", new Proveedor());
                model.addAttribute("mensaje", "El cliente ha sido movido");
            }
        }
        return "proveedor/eliminado";
    }
   }