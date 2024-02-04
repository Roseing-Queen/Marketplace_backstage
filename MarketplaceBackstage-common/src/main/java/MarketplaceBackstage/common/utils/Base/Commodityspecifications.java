package MarketplaceBackstage.common.utils.Base;

import lombok.Data;
import java.util.Date
@Data
public class Commodityspecifications {

  private long id;
  private String specificationsNo;
  private String specificationName;
  private double specificationPrice;
  private Date craeteTime;
  private Date updateTime;
  private double specificationCost;
  private String specificationDescription;
  private long state;
  private long commodityNo;

}
