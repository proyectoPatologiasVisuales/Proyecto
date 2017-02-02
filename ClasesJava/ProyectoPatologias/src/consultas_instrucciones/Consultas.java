package consultas_instrucciones;

public class Consultas {

	//Ejemplo consulta
	public static final String 	CONSULTA_EMPLEADOS_SALARIOS_DESCENDENTE 
			="select * from EMPLOYEES E, DEPARTMENTS D "
			+ "where E.DEPARTMENT_ID = D.DEPARTMENT_ID "
			+ "ORDER BY E.SALARY DESC";
	
	public static final String CONSULTA_TODOS_SINTOMAS 
			= "SELECT * FROM SINTOMAS";
	
	public static final String CONSULTA_SINTOMAS_POR_PATOLOGIA
			= "SELECT NOMBRE_SINTOMA "
			+ "FROM SINTOMAS s, PATOLOGIAS p "
			+ "WHERE s.SINTOMAS_ID = p.SINTOMAS_ID";
}
