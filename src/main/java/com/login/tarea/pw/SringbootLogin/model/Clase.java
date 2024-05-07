package com.login.tarea.pw.SringbootLogin.model;

import javax.persistence.*;
import javax.validation.constraints.*;

import lombok.Data;

@Entity
@Table(name = "clase")
@Data
public class Clase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 30)
    @Size(max = 30)
    private String nombre;

    @Column(length = 100)
    @Size(max = 100)
    private String description;

    @Min(1)
    @Max(100)
    private Integer salon;

    @NotNull
    @Column(length = 20)
    @Size(max = 20)
    private String horario;

    @ManyToOne
    @JoinColumn(name = "docente", nullable = false)
    private DocenteEncargado docente;

    public Clase(Long id, @Size(max = 30) String nombre, @Size(max = 100) String description,
            @Size(max = 20) Integer salon, @NotNull @Size(max = 20) String horario, DocenteEncargado docente) {
        super();
        this.id = id;
        this.nombre = nombre;
        this.description = description;
        this.salon = salon;
        this.horario = horario;
        this.docente = docente;
    }

    public Clase(@Size(max = 30) String nombre, @Size(max = 100) String description, @Size(max = 20) Integer salon,
            @NotNull @Size(max = 20) String horario, DocenteEncargado docente) {
        super();
        this.nombre = nombre;
        this.description = description;
        this.salon = salon;
        this.horario = horario;
        this.docente = docente;
    }

    public Clase() {
    }
}