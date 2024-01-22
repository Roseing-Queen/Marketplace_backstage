package MarketplaceBackstage.admin.controller;

import MarketplaceBackstage.admin.Service.AdminService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/admin")
public class AdminController {
    @Resource
    private AdminService adminService;

    @GetMapping(value = "/alsa")
    public String alsa() {
        adminService.alsa();
        return "";
    }
}
