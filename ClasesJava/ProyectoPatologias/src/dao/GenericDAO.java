package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import dto.GenericDTO;

public abstract class  GenericDAO {

	protected Connection conexion;
	protected Statement stmt;
	protected ResultSet rset;
	
	public GenericDTO ejecutarConsultaSimple(String consulta) throws SQLException	{
		
			GenericDTO dtoAux = null;
			String consultaTraducida = null;
			
			try
				{
					conexion = Pool.getConnection();
					stmt = conexion.createStatement();
					stmt.execute(consultaTraducida);
					rset = stmt.getResultSet();
					if (rset != null)
					{
						if (rset.next())
						{
							dtoAux = this.componerObjeto(rset);					
						
						}
					}
			}
			finally
			{
				liberarRecursos(conexion, stmt, rset);
			}
									
			return dtoAux;
	}

	public List<GenericDTO> ejecutarSentencia(Connection conn,String instruccion){
		return null;
	}
	
	public List<GenericDTO> ejecutarConsultaMultiple(String consulta) throws SQLException{
		List<GenericDTO> ldev = null;
		GenericDTO dtoAux = null;
		
		try
		{
		conexion = Pool.getConnection();
		stmt = conexion.createStatement();
		stmt.execute(consulta);
		rset = stmt.getResultSet();
		
			if (rset.next())
			{
				dtoAux = this.componerObjeto(rset);
				ldev.add(dtoAux);
			}
			
		}catch(Exception e){
			
		}
		finally
		{
			liberarRecursos(conexion, stmt, rset);
		}
		return ldev;
	}

	public abstract GenericDTO componerObjeto (ResultSet rs) throws SQLException;
	 
	/*
	public String sustituirArgumentos (String sentencia, List<Object> argumentos) throws Exception
	{
		String sentenciatraducida = "";
		
		boolean sustituido = false;
		int numargs = argumentos.size();
		int numargsEncontrados = 0;
		int pos = -1;
		int longuitud = sentencia.length() - 1;
		char carcateractual = '0';
		String argaux = null;
		
		try
		{
		
		while (!sustituido)
		{
			pos = pos + 1;
			carcateractual = sentencia.charAt(pos);
			if (carcateractual == ConstantesDAO.caracterParametro)
			{
				argaux = argumentos.get(numargsEncontrados).toString();
				sentenciatraducida = sentenciatraducida + argaux;
				numargsEncontrados = numargsEncontrados + 1;
			}
			else
			{
				sentenciatraducida = sentenciatraducida + carcateractual;
			}
			sustituido = ((numargsEncontrados == numargs) || (longuitud == pos));
		}
		
		if ((numargsEncontrados == numargs) && (longuitud != pos))
		{
			sentenciatraducida = sentenciatraducida + sentencia.substring(pos+1, longuitud+1);
		}
		
		}catch (Exception e) {
			log.error(Error.NumeroArgumentosQuery);
			throw e;
		}
		
		return sentenciatraducida;
	}*/

	private static void liberarRecursos (Connection conn,Statement st, ResultSet rs){
		
			if (rs != null) 	{ try { rs.close(); } catch (Exception e2) { e2.printStackTrace(); }}
			if (st != null)	{ try {	st.close(); } catch (Exception e2) { e2.printStackTrace(); }}
			if (conn != null) 	{ try { conn.close(); } catch (Exception e3) { e3.printStackTrace(); }}
		  
	}
	
}