package MarketplaceBackstage.common.utils.Base;


import jakarta.persistence.Table;
import lombok.Data;

import java.util.Date;
@Data
@Table(name = "blindboxlabel")
public class Blindboxlabel {

  private long labelId;
  private String labelName;
  private long state;
  private Date createTime;
  private Date updateTime;
}
