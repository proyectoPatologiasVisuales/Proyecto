package dto;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class genericDTO {

	public void ejecutarConsultaSimple(Connection conn,String consulta)	{
		
	}

	public void ejecutarSentencia(Connection conn,String instruccion){
		
	}
	
	private static void liberarRecursos (Statement st, ResultSet rs)
	{
		
		if (rs != null) 	{ try { rs.close(); } catch (Exception e2) { e2.printStackTrace(); }}
		if (st != null)	{ try {	st.close(); } catch (Exception e2) { e2.printStackTrace(); }}
		
	}
	
	private static void liberarRecursos (Statement st)
	{
		
		if (st != null)	{ try {	st.close(); } catch (Exception e2) { e2.printStackTrace(); }}
		
	}
	
	private static void liberarRecursos (Connection conn)
	{
		
		if (conn != null) 	{ try { conn.close(); } catch (Exception e3) { e3.printStackTrace(); }}
		
	}
}