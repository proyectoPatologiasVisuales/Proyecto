package consultas_instrucciones;

public class Consultas {

	//Ejemplo consulta
	public static final String 	CONSULTA_EMPLEADOS_SALARIOS_DESCENDENTE 
			="select * from EMPLOYEES E, DEPARTMENTS D "
			+ "where E.DEPARTMENT_ID = D.DEPARTMENT_ID "
			+ "ORDER BY E.SALARY DESC";
	
}
