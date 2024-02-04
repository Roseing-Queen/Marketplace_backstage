package MarketplaceBackstage.common.utils.Base;

import lombok.Data;

import java.util.Date;

@Data
public class Shoppingcart {

  private long id;
  private String commodityCode;
  private String specificationCode;
  private String userNo;
  private Date createTime;
  private Date updateTime;
  private long quantity;
}
