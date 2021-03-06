package convert;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

import model.Modality;
import rules.ModalityRn;

@FacesConverter(forClass = Modality.class)
public class ModalityConverter implements Converter {

	@Override
	public Object getAsObject(FacesContext facesContext, UIComponent uiComponent, String value) {
		ModalityRn modalityRn = new ModalityRn();
		Long id = Long.parseLong(value);
		return modalityRn.queryId(id);
	}

	@Override
	public String getAsString(FacesContext facesContext, UIComponent uiComponent, Object value) {
		Modality modality = (Modality) value;
		return String.valueOf(modality.getId());
	}

}
