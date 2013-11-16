package gov.atlanta.cityvendors.domain;

import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.json.RooJson;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "LOC_SEQ")
@RooJson
public class Location {

    @NotNull
    @Size(min = 1)
    private String name;

    @NotNull
    private Integer longitude;

    @NotNull
    private Integer latitude;

    @ManyToOne
    private Vendor vendor;
}
