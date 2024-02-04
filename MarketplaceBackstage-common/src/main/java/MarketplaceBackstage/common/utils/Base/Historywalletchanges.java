package MarketplaceBackstage.common.utils.Base;

import lombok.Data;

import java.util.Date;

@Data
public class Historywalletchanges {

  private long id;
  private long userNo;
  private long type;
  private double beforeFixingData;
  private double operate;
  private double afterModification;
  private Date createTime;
}
