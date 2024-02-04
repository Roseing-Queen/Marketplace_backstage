package MarketplaceBackstage.common.utils.Base;


import lombok.Data;

import java.util.Date;
@Data
public class Orderblindbox {

  private String blindboxOrderNo;
  private long userNo;
  private long bindBoxCode;
  private Date createTime;
  private Date updateTime;
  private long state;
  private long commodityOrderNo;
}
