package com.segundo.parcial.pw.Parcial.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import lombok.Data;

@Entity
@Table(name = "estado_clase")
@Data
public class EstadoClase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 50)
    @Size(max = 50)
    private String estado;

    public EstadoClase(Long id, @Size(max = 50) String estado) {
        super();
        this.id = id;
        this.estado = estado;
    }

    public EstadoClase() {
    }
}
