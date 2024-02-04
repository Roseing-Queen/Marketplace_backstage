package MarketplaceBackstage.common.utils.Base;


import lombok.Data;

import java.util.Date;
@Data
public class Operationlog {

  private long logId;
  private long operatorNo;
  private String behavior;
  private String operatorName;
  private Date createTime;

}
