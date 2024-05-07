package com.segundo.parcial.pw.Parcial.model;

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

    @Column(length = 20)
    @Size(max = 20)
    private String nombre;

    @NotNull
    @Column(length = 20)
    @Size(max = 20)
    private String horario;

    @ManyToOne
    @JoinColumn(name = "usuario_id", nullable = false)
    private Usuario docente;

    @Column(length = 20)
    @Size(max = 20)
    private String salon;

    @ManyToOne
    @JoinColumn(name = "estado_id", nullable = false)
    private EstadoClase estado;

    public Clase(Long id, @Size(max = 20) String nombre, @NotNull String horario, Usuario docente,
            String salon, EstadoClase estado) {
        super();
        this.id = id;
        this.nombre = nombre;
        this.horario = horario;
        this.docente = docente;
        this.salon = salon;
        this.estado = estado;
    }

    public Clase(@Size(max = 20) String nombre, @NotNull String horario, Usuario docente, String salon,
            EstadoClase estado) {
        super();
        this.nombre = nombre;
        this.horario = horario;
        this.docente = docente;
        this.salon = salon;
        this.estado = estado;
    }

    public Clase() {
    }
}