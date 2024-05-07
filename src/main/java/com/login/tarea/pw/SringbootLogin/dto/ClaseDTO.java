package com.login.tarea.pw.SringbootLogin.dto;

import lombok.Data;

@Data
public class ClaseDTO {
    private String nombre;
    private String description;
    private Integer salon;
    private String horario;
    private String docente;
    

    public ClaseDTO() {}

    public ClaseDTO(String nombre, String description, String horario, String docente, Integer salon) {
        this.nombre = nombre;
        this.description = description;
        this.salon = salon;
        this.horario = horario;
        this.docente = docente;
    }
}