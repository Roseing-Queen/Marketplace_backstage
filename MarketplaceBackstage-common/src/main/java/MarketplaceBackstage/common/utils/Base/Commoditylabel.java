package MarketplaceBackstage.common.utils.Base;


import jakarta.persistence.Table;
import lombok.Data;

import java.util.Date;
@Data
@Table(name = "")
public class Commoditylabel {

  private long labelId;
  private String labelName;
  private long status;
  private Date createTime;
  private Date updateTime;

}
