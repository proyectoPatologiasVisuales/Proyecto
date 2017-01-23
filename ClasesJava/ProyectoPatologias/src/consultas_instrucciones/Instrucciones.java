package consultas_instrucciones;

public class Instrucciones {

	//Ejemplo Instrucciones
	public static final String 	ACTUALIZAR_EMPLEADOS_SALARIO_ADMON_E_IT
			= "UPDATE EMPLOYEES SET salary = (salary * 1.2) "
			+ "where department_id IN "
			+ "(SELECT department_id FROM "
			+ "DEPARTMENTS WHERE department_name = "
			+ "'Administration' or "
			+ "department_name = 'IT')";
}
