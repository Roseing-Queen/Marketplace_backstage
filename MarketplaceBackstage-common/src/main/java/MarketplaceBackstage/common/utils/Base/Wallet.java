package MarketplaceBackstage.common.utils.Base;


import lombok.Data;

import java.util.Date;
@Data
public class Wallet {

  private long id;
  private long userNo;
  private double refundAmount;
  private double rewardAmount;
  private Date careteTime;
  private Date updateTime;
}
