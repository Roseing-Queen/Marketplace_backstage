package MarketplaceBackstage.common.utils.Base;


import lombok.Data;

import java.util.Date;
@Data
public class Ordercommodity {

  private long orderCommodityId;
  private long orderNo;
  private long commodityCode;
  private long specificationCode;
  private long quantity;
  private double unitPrice;
  private double totalPrice;
  private Date createTime;
  private Date updateTime;
}
