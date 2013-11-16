package gov.atlanta.cityvendors.web;

import gov.atlanta.cityvendors.domain.Vendor;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/vendors")
@Controller
@RooWebScaffold(path = "vendors", formBackingObject = Vendor.class)
@RooWebFinder
@RooWebJson(jsonObject = Vendor.class)
public class VendorController {
}
