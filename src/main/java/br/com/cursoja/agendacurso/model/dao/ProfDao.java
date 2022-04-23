	package br.com.cursoja.agendacurso.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.com.cursoja.agendacurso.model.entidade.Professor;


public class ProfDao extends Conexao {

		
		public void cadastrar(Professor p) {
			
			String sql = "insert into professor " +
						 " (nome, celular, valorhora) values "
						 + "(?, ?, ?)";
			
			try {
				PreparedStatement ps = getConexao().prepareStatement(sql);
				ps.setString(1, p.getNome());
				ps.setString(2, p.getCelular());
				ps.setDouble(3, p.getValorHora());
				ps.execute();
				
			} catch (SQLException e) {
				System.out.println("Erro ao inserir dados");
				e.printStackTrace();
				
			} finally {
				fecharConexao();
			}
		}
		
		
		public void alterar(Professor p) {
			String sql = "update professor set" +
						 " nome = ?," +
						 " celular = ?," +
						 " valorhora = ?" +
						 " where idprofessor = ?";
			
	 		try {
				PreparedStatement ps = getConexao().prepareStatement(sql);
				ps.setString(1,  p.getNome() );
				ps.setString(2, p.getCelular());
				ps.setDouble(3, p.getValorHora());
				ps.setLong(4, p.getIdprofessor());
				ps.execute();
				
			} catch(SQLException e) {
				System.out.println("Erro ao atualizar");
				e.printStackTrace();
			} finally {
				fecharConexao();
			}
		}
		
		public ArrayList<Professor> listar(String nomeBusca){
			ArrayList<Professor> lista = new ArrayList<Professor>();
			
			String sql = "select * from professor " +
						 "where nome like ?";
							
			try {
				PreparedStatement ps = getConexao().prepareStatement(sql);
				ps.setString(1, "%" + nomeBusca + "%");
				
				ResultSet rs = ps.executeQuery();
				Professor p;
				while (rs.next()) {
					p = new Professor();
					p.setId(rs.getLong("idprofessor"));
					p.setNome(rs.getString("nome"));
					p.setCelular(rs.getString("celular"));
					p.setValorHora(rs.getDouble("valorhora"));
					
					lista.add(p);
				}
				
			} catch(SQLException e) { 
				System.out.println("Erro ao Listar");
				e.printStackTrace();
			} finally {
				fecharConexao();
			}
			return lista;
		}
		
		public Professor buscar(long idprofessor) {
			Professor professor = null;
			
			String sql = "select * from professor " +
					 		"where idprofessor = ?";
			
			try {
				PreparedStatement ps = getConexao().prepareStatement(sql);
				ps.setLong(1, idprofessor);

				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					professor = new Professor();
					professor.setId(rs.getLong("idprofessor"));
					professor.setNome(rs.getString("nome"));
					professor.setCelular(rs.getString("celular"));
					professor.setValorHora(rs.getDouble("valorhora"));
				}
				
			} catch(SQLException e) { 
				System.out.println("Erro ao Listar");
				e.printStackTrace();
			} finally {
				fecharConexao();
			}

			return professor;
		}
		
		//D
		public void excluir(Professor p) {
			String sql = "delete from professor where idprofessor = ?";
			
			try {
				PreparedStatement ps = getConexao().prepareStatement(sql);
				ps.setLong(1, p.getIdprofessor());
				
				ps.execute();
			} catch(SQLException e) {
				System.out.println("Erro ao excluir dados");
				e.printStackTrace();
			} finally {
				fecharConexao();
			}
		}
	}
