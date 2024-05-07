package com.login.tarea.pw.SringbootLogin.service;

import com.login.tarea.pw.SringbootLogin.model.DocenteEncargado;
import com.login.tarea.pw.SringbootLogin.repository.DocenteEncargadoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DocenteEncargadoServiceImpl implements DocenteEncargadoService {

    @Autowired
    private DocenteEncargadoRepository docenteEncargadoRepository;

    @Override
    public List<DocenteEncargado> findAll() {
        return docenteEncargadoRepository.findAll();
    }
}