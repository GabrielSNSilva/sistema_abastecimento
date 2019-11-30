package br.usjt.arqsw.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.usjt.arqsw.dao.MunicipioDAO;
import br.usjt.arqsw.entity.Municipio;

@Service
public class MunicipioService {
	private MunicipioDAO dao;
	
	@Autowired
	public MunicipioService(MunicipioDAO dao) {
		this.dao = dao;
	}
	
	public List<Municipio> listarMunicipios() throws IOException{
		return dao.listar();
	}
}
