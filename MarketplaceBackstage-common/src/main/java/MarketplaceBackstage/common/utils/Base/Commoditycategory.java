package MarketplaceBackstage.common.utils.Base;


import lombok.Data;

import java.util.Date;
@Data
public class Commoditycategory {

  private long categoryId;
  private long categoryParentId;
  private long categoryLevel;
  private String categoryName;
  private String categoryIcon;
  private String iconUrl;
  private long state;
  private Date createTime;
  private java.sql.Date updateTime;

}
