package com.terror_al_ejecutar.ecommerce.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Table(name = "productos")
@AllArgsConstructor
@NoArgsConstructor
public class Productos {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "precio")
    private Integer precio;
    @Column(name = "descripcion")
    private String descripcion;
    @Column(name = "stock")
    private Integer stock;
    @Column(name = "codigo")
    private String codigo;

}
