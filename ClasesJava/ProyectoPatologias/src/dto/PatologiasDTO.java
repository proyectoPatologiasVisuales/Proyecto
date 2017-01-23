package dto;

public class PatologiasDTO extends genericDTO{

	private int id_patologia;
	private String nombre_patologia;
	private String descripcion_patologia;
	private String tratamiento_patologia;
				
	public PatologiasDTO(int id_patologia, String nombre_patologia,
			String descripcion_patologia,String tratamiento_patologia) {
		super();
		this.id_patologia = id_patologia;
		this.nombre_patologia = nombre_patologia;
		this.descripcion_patologia = descripcion_patologia;
		this.tratamiento_patologia = tratamiento_patologia;
	}
	
	public PatologiasDTO(){		
	}
	
	public int getId_patologia() {
		return id_patologia;
	}
	public void setId_patologia(int id_patologia) {
		this.id_patologia = id_patologia;
	}
	public String getNombre_patologia() {
		return nombre_patologia;
	}
	public void setNombre_patologia(String nombre_patologia) {
		this.nombre_patologia = nombre_patologia;
	}
	public String getDescripcion_patologia() {
		return descripcion_patologia;
	}
	public void setDescripcion_patologia(String descripcion_patologia) {
		this.descripcion_patologia = descripcion_patologia;
	}

	public String getTratamiento_patologia() {
		return tratamiento_patologia;
	}

	public void setTratamiento_patologia(String tratamiento_patologia) {
		this.tratamiento_patologia = tratamiento_patologia;
	}	
	
}
