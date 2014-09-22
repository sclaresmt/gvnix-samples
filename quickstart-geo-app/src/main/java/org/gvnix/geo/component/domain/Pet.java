package org.gvnix.geo.component.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.validation.constraints.Min;
import javax.persistence.ManyToOne;
import javax.persistence.Enumerated;
import org.gvnix.geo.component.reference.PetType;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "PET_SEQ")
public class Pet {

    /**
     */
    @NotNull
    private boolean sendReminders;

    /**
     */
    @NotNull
    @Size(min = 1)
    private String name;

    /**
     */
    @NotNull
    @Min(0L)
    private Float weight;

    /**
     */
    @ManyToOne
    private Owner owner;

    /**
     */
    @NotNull
    @Enumerated
    private PetType type;
}
