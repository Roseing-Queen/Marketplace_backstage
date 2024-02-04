package MarketplaceBackstage.common.utils.Base;

import lombok.Data;

import java.util.Date;

@Data
public class Roles {

  private long roleId;
  private String roleName;
  private String roleDescription;
  private String rolePermissions;
  private long createByNo;
  private long updatedByNo;
  private Date createTime;
  private Date updateTime;

}
