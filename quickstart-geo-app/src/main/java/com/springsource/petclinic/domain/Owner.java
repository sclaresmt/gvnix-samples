package com.springsource.petclinic.domain;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

import org.gvnix.addon.jpa.addon.geo.providers.hibernatespatial.GvNIXEntityMapLayer;
import org.hibernate.annotations.Type;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

import com.vividsolutions.jts.geom.LineString;
import com.vividsolutions.jts.geom.Point;
import com.vividsolutions.jts.geom.Polygon;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@GvNIXEntityMapLayer
public class Owner extends AbstractPerson {

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "owner")
    private Set<Pet> pets = new HashSet<Pet>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "owner")
    private Set<Vet> vets = new HashSet<Vet>();

    @Type(type = "org.hibernate.spatial.GeometryType")
    private Point location;

    @Type(type = "org.hibernate.spatial.GeometryType")
    private LineString distance;

    @Type(type = "org.hibernate.spatial.GeometryType")
    private Polygon area;
}
