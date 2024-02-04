package MarketplaceBackstage.common.utils.Base;

import lombok.Data;

@Data
public class Commodityorder {

  private long commodityOrderId;
  private long commodityorderNo;
  private long userNo;
  private double totalAmount;
  private double paidAmount;
  private Date createTime;
  private Date updateTime;
  private double unpaidAmount;
  private long paymentMethod;
  private long status;
  private Date payTime;
  private Date deliveryTime;
  private Date finishTime;
  private String remark;
  private long logisticsNo;
  private long orderQuantity;
}
