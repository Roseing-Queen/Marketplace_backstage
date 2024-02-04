package MarketplaceBackstage.admin.controller;

import MarketplaceBackstage.common.utils.Result.ResultUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//All interfaces related to characters
@Controller
@RequestMapping(value = "/role")
public class RoleController {
    //    创建角色
    @PostMapping(value = "/add")
    private ResultUtils addRole() {

        return new ResultUtils();
    }
//    编辑角色

}
