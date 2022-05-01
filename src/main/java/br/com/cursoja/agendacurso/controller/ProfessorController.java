package br.com.cursoja.agendacurso.controller;

import br.com.cursoja.agendacurso.model.dao.ProfDao;
import br.com.cursoja.agendacurso.model.entidade.Professor;
import java.util.ArrayList;

public class ProfessorController {

		ProfDao dao = new ProfDao();
		
		public void cadastrar(Professor p) {
			dao.cadastrar(p);
		}
		
		public void alterar(Professor p) {
			dao.alterar(p);
		}
		
		public ArrayList<Professor> listar(String nome) {
			return dao.listar(nome);
		}
		
		public Professor buscar(long id) {
			return dao.buscar(id);
		}
		
		public void excluir(Professor p) {
			dao.excluir(p);
		}
	}


