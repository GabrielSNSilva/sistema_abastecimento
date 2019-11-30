package br.usjt.arqsw.dao;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.usjt.arqsw.entity.Municipio;

@Repository
public class MunicipioDAO {
	@PersistenceContext
	EntityManager manager;
	
	public List<Municipio> listar() throws IOException{
		//conectei minha fila com a persistencia			
		String jpql = "select m from Municipio m";
		
		Query query = manager.createQuery(jpql);

		List<Municipio> result = query.getResultList();
		return result;
	}

}
