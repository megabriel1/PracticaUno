package com.mycompany.practicados.service;

import com.mycompany.practicados.model.Proveedor;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.stereotype.Service;

@Service
public class ProveedorService {

    public static List<Proveedor> proveedorList = new ArrayList<>();
    public static List<Proveedor> eliminadosList = new ArrayList<>();

    public boolean agregarProveedor(Proveedor proveedor) {

        boolean existe = proveedorList.stream().anyMatch(p -> p.equals(proveedor));

        if (!existe) {
            proveedorList.add(proveedor);
            eliminadosList.add(proveedor);
        }
        return !existe;
    }

    public boolean agregarProveedor2(Proveedor proveedor) {

        boolean existe = eliminadosList.stream().anyMatch(p -> p.equals(proveedor));

        if (!existe) {
            eliminadosList.add(proveedor);
        }
        return !existe;
    }

    public boolean modificarProveedor(Proveedor proveedor) {

        for (int i = 0; i < proveedorList.size(); i++) {
            if (proveedorList.get(i).getCodigo().equalsIgnoreCase(proveedor.getCodigo())) {

                proveedorList.set(i, proveedor);
                return true;
            }
        }return false;
    }

    public List<Proveedor> buscarEliminado() {

        return eliminadosList.stream().filter(proveedor -> proveedor.isEliminado()).collect(Collectors.toList());
    }

    public boolean eliminarProveedor(Proveedor proveedor) {
       String codigo = proveedor.getCodigo();
        
        
        proveedorList.stream()
                .filter(pr -> pr.getCodigo().equalsIgnoreCase(codigo))
                .findFirst()
                .ifPresent(pr -> pr.setEliminado(true));
        
        return true;
    }

    public Proveedor buscarProveedor(String codigo) {

        return proveedorList.stream().filter(p -> p.getCodigo().equalsIgnoreCase(codigo)).findFirst().orElse(null);

    }

    public Proveedor buscarEliminado (String codigo) {

        return eliminadosList.stream().filter(p -> p.getCodigo().equalsIgnoreCase(codigo)).findFirst().orElse(null);

    }

    public List<Proveedor> buscarProveedorList() {
        return proveedorList;
    }

    public List<Proveedor> buscarEliminadosList() {
        return eliminadosList;
    }
}
