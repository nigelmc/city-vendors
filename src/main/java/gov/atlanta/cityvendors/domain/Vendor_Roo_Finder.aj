// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package gov.atlanta.cityvendors.domain;

import gov.atlanta.cityvendors.domain.Location;
import gov.atlanta.cityvendors.domain.Vendor;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Vendor_Roo_Finder {
    
    public static TypedQuery<Vendor> Vendor.findVendorsByDescription(String description) {
        if (description == null || description.length() == 0) throw new IllegalArgumentException("The description argument is required");
        EntityManager em = Vendor.entityManager();
        TypedQuery<Vendor> q = em.createQuery("SELECT o FROM Vendor AS o WHERE o.description = :description", Vendor.class);
        q.setParameter("description", description);
        return q;
    }
    
    public static TypedQuery<Vendor> Vendor.findVendorsByLocation(Location location) {
        if (location == null) throw new IllegalArgumentException("The location argument is required");
        EntityManager em = Vendor.entityManager();
        TypedQuery<Vendor> q = em.createQuery("SELECT o FROM Vendor AS o WHERE o.location = :location", Vendor.class);
        q.setParameter("location", location);
        return q;
    }
    
    public static TypedQuery<Vendor> Vendor.findVendorsByVendorNameLike(String vendorName) {
        if (vendorName == null || vendorName.length() == 0) throw new IllegalArgumentException("The vendorName argument is required");
        vendorName = vendorName.replace('*', '%');
        if (vendorName.charAt(0) != '%') {
            vendorName = "%" + vendorName;
        }
        if (vendorName.charAt(vendorName.length() - 1) != '%') {
            vendorName = vendorName + "%";
        }
        EntityManager em = Vendor.entityManager();
        TypedQuery<Vendor> q = em.createQuery("SELECT o FROM Vendor AS o WHERE LOWER(o.vendorName) LIKE LOWER(:vendorName)", Vendor.class);
        q.setParameter("vendorName", vendorName);
        return q;
    }
    
}
