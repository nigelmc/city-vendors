// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package gov.atlanta.cityvendors.domain;

import gov.atlanta.cityvendors.domain.Location;
import gov.atlanta.cityvendors.domain.Vendor;

privileged aspect Vendor_Roo_JavaBean {
    
    public String Vendor.getVendorName() {
        return this.vendorName;
    }
    
    public void Vendor.setVendorName(String vendorName) {
        this.vendorName = vendorName;
    }
    
    public String Vendor.getDescription() {
        return this.description;
    }
    
    public void Vendor.setDescription(String description) {
        this.description = description;
    }
    
    public String Vendor.getShortDescription() {
        return this.shortDescription;
    }
    
    public void Vendor.setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }
    
    public Location Vendor.getLocation() {
        return this.location;
    }
    
    public void Vendor.setLocation(Location location) {
        this.location = location;
    }
    
}