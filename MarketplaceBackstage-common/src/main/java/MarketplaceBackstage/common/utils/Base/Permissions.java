package MarketplaceBackstage.common.utils.Base;

import lombok.Data;

@Data
public class Permissions {

  private long permissionsId;
  private String permissionsName;
  private long parentPermissionsId;
  private String permissionRouting;
}
