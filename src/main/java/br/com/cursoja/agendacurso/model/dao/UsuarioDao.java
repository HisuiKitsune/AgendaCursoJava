package br.com.cursoja.agendacurso.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;

import br.com.cursoja.agendacurso.model.dao.Conexao;
import br.com.cursoja.agendacurso.model.entidade.Usuario;

public class UsuarioDao {
	
	public Usuario buscarUsuario(String login, String senha) {
		Usuario user = null;
		
		try {
			String sql = "select * from usuario where login = ? and senha = ?";
			
			PreparedStatement ps = getConexao().prepareStatement(sql);
			ps.setString(1, login);
			ps.setString(2, senha);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				user = new Usuario();
				user.setId(rs.getLong(1));
				user.setNome(rs.getString(2));
				user.setLogin(rs.getString(3));
			}
		} catch(SQLException e) {
			System.out.println("Erro na consulta");
		} finally {
			fecharConexao();
		}
		return user;
			
		}
	}

