package br.usjt.arqsw.service;

import java.io.IOException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.usjt.arqsw.dao.SistemaDAO;
import br.usjt.arqsw.entity.Sistema;

@Service
public class SistemaService {
	SistemaDAO dao;
	
	@Autowired
	public SistemaService(SistemaDAO dao){
		this.dao = dao;
	}
	
	public void novoSistema(Sistema sistema) throws IOException{
		dao.inserir(sistema);
	}
	
	public Sistema carregarSistema(int id) throws IOException{
		return dao.carregar(id);
	}
	
	@Transactional
	public int excluirSistema(int id) throws IOException {
		return dao.excluir(id);
	}
	
	@Transactional
	public int editarSistema(Sistema sistema) throws IOException {
		return dao.editar(sistema);
	}
	
	public List<Sistema> listarSistemas() throws IOException{
		return dao.listar();
	}

}
