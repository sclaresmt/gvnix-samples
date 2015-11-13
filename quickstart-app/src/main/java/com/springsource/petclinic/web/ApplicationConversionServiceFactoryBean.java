package com.springsource.petclinic.web;

import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import org.springframework.format.support.FormattingConversionServiceFactoryBean;
import org.springframework.roo.addon.web.mvc.controller.converter.RooConversionService;

import com.springsource.petclinic.domain.Owner;
import com.springsource.petclinic.domain.Pet;
import com.springsource.petclinic.domain.Vet;

/**
 * A central place to register application converters and formatters.
 */
@RooConversionService
public class ApplicationConversionServiceFactoryBean extends FormattingConversionServiceFactoryBean {

	@Override
	protected void installFormatters(FormatterRegistry registry) {
		super.installFormatters(registry);
		// Register application converters and formatters
	}


	    public Converter<Pet, String> getPetToStringConverter() {
	        return new org.springframework.core.convert.converter.Converter<com.springsource.petclinic.domain.Pet, java.lang.String>() {
	            public String convert(Pet pet) {
	                return new StringBuilder().append(pet.getName()).toString();
	            }
	        };
	    }

	    public Converter<Vet, String> getVetToStringConverter() {
	        return new org.springframework.core.convert.converter.Converter<com.springsource.petclinic.domain.Vet, java.lang.String>() {
	            public String convert(Vet vet) {
	                return new StringBuilder().append(vet.getFirstName()).append(' ').append(vet.getLastName()).toString();
	            }
	        };
	    }

	    public Converter<Owner, String> getOwnerToStringConverter() {
	        return new org.springframework.core.convert.converter.Converter<com.springsource.petclinic.domain.Owner, java.lang.String>() {
	            public String convert(Owner owner) {
	                return new StringBuilder().append(owner.getFirstName()).append(' ').append(owner.getLastName()).toString();
	            }
	        };
	    }
}
