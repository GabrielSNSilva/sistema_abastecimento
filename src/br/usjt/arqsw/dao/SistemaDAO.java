package br.usjt.arqsw.dao;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.usjt.arqsw.entity.Sistema;

@Repository
public class SistemaDAO {
	@PersistenceContext
	EntityManager manager;
	
	public int inserir(Sistema sistema) throws IOException {
		manager.persist(sistema);
		return sistema.getId();
	}
	
	public List<Sistema> listar() throws IOException{
		//conectei minha fila com a persistencia			
				String jpql = "select s from Sistema s";
				
				Query query = manager.createQuery(jpql);

				List<Sistema> result = query.getResultList();
				return result;
	}
	
	public Sistema carregar(int id) throws IOException {
		return manager.find(Sistema.class, id);
	}
	
	public int excluir(int id) throws IOException {
		Sistema sistema = manager.find(Sistema.class, id);
		manager.remove(sistema);
		return sistema.getId();
	}
	
	public int editar(Sistema sistema) throws IOException {
		manager.merge(sistema);		
		return sistema.getId();
	}

}
