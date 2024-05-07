package com.login.tarea.pw.SringbootLogin.repository;

import com.login.tarea.pw.SringbootLogin.model.DocenteEncargado;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface DocenteEncargadoRepository extends JpaRepository<DocenteEncargado, Long> {
    @Query("SELECT d FROM DocenteEncargado d WHERE d.docente = :docente")
    DocenteEncargado findByName(String docente);
}