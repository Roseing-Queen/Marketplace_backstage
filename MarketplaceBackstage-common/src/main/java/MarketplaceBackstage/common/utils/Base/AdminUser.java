package MarketplaceBackstage.common.utils.Base;

import jakarta.persistence.Table;
import lombok.Data;


import java.util.Date;
@Data
@Table(name = "admin_user")
public class AdminUser {

  private long userNo;
  private String nickName;
  private long sex;
  private String position;
  private String account;
  private String password;
  private String userMobile;
  private long userId;
  private String email;
  private String realName;
  private String roles;
  private long status;
  private Date createTime;
  private Date updateTime;

}
