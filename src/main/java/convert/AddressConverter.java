package convert;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

import model.Address;
import rules.AddressRn;

@FacesConverter(forClass = Address.class)
public class AddressConverter implements Converter {

	@Override
	public Object getAsObject(FacesContext facesContext, UIComponent uiComponent, String value) {
		AddressRn addressRn = new AddressRn();
		Long id = Long.parseLong(value);
		return addressRn.buscarPorId(id);
	}

	@Override
	public String getAsString(FacesContext facesContext, UIComponent uiComponent, Object value) {
		Address address = (Address) value;
		return String.valueOf(address.getId());
	}

}
