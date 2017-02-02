package dto;

import java.util.List;

public class SintomasDTO extends GenericDTO{

	
	/**
	 * POJO, BEAN, JAVA BEAN, DTO
	 * 
	 */
	private int id_sintoma;
	private String nombre_sintoma;
	private List<PatologiasDTO> lista_patologias;
	
	public SintomasDTO(int id_sintoma, String nombre_sintoma)
	{
		super();
		this.id_sintoma = id_sintoma;
		this.nombre_sintoma = nombre_sintoma;
	}

	public SintomasDTO(){
	}

	public SintomasDTO componerSintoma(SintomasDTO sintoma,List<PatologiasDTO> patologias){
		
		return null;
	}
	
	public SintomasDTO(String nombre_sintoma) {
		this.nombre_sintoma = nombre_sintoma;
	}

	public int getId_sintoma() {
		return id_sintoma;
	}
	public void setId_sintoma(int id_sintoma) {
		this.id_sintoma = id_sintoma;
	}
	public String getNombre_sintoma() {
		return nombre_sintoma;
	}
	public void setNombre_sintoma(String nombre_sintoma) {
		this.nombre_sintoma = nombre_sintoma;
	}

	public List<PatologiasDTO> getLista_patologias() {
		return lista_patologias;
	}

	public void setLista_patologias(List<PatologiasDTO> lista_patologias) {
		this.lista_patologias = lista_patologias;
	}
	
	
}
