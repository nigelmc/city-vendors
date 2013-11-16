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
@RooJpaActiveRecord(sequenceName = "VEND_SEQ", finders = { "findVendorsByLocation", "findVendorsByDescription", "findVendorsByVendorNameLike" })
@RooJson
public class Vendor {

    @Size(max = 30)
    private String vendorName;

    @NotNull
    private String description;

    private String shortDescription;

    @ManyToOne
    private Location location;
}
