package gov.atlanta.cityvendors.web;

import gov.atlanta.cityvendors.domain.Location;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/locations")
@Controller
@RooWebScaffold(path = "locations", formBackingObject = Location.class)
@RooWebJson(jsonObject = Location.class)
public class LocationController {
}
