package MarketplaceBackstage.common.utils.Base;


import lombok.Data;

import java.util.Date;
@Data
public class Commoditydetail {

  private long detailImageId;
  private long commodityCode;
  private String imageUrl;
  private Date createTime;

}
