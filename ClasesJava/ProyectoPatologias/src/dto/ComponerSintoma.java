package dto;

import java.util.List;

public class ComponerSintoma {

	SintomasDTO componerSintoma(SintomasDTO sintoma, List<PatologiasDTO> listaPatologias){
		
		sintoma.setLista_patologias(listaPatologias);

		return sintoma;
	}
	
	
	
}
