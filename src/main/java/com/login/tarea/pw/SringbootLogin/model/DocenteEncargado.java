package com.login.tarea.pw.SringbootLogin.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import lombok.Data;

@Entity
@Table(name = "docente_encargado")
@Data
public class DocenteEncargado {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 50)
    @Size(max = 50)
    private String docente;

    public DocenteEncargado(Long id, @Size(max = 50) String docente) {
        super();
        this.id = id;
        this.docente = docente;
    }

    public DocenteEncargado() {
    }
}
