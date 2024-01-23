package MarketplaceBackstage.common.utils.Utilities;

import lombok.Data;
import org.springframework.data.annotation.Id;

import java.io.Serializable;
import java.util.Date;

@Data
public class AdminUser implements Serializable {
    private long userNo;
    private String nickName;
    private long sex;
    private String position;
    private String account;
    private String password;
    private String userMobile;
    @Id
    private long userId;
    private String email;
    private String realName;
    private String roles;
    private long status;
    private Date createTime;
    private Date updateTime;

}
