package org.gvnix.geo.component.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.Calendar;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.Enumerated;
import org.gvnix.geo.component.reference.Specialty;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Vet extends AbstractPerson {

    /**
     */
    @NotNull
    @Past
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Calendar employedSince;

    /**
     */
    @Enumerated
    private Specialty specialty;
}
