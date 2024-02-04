package MarketplaceBackstage.common.utils.Base;

import jakarta.persistence.Table;
import lombok.Data;

import java.util.Date;

@Data
@Table(name = "blindboxdetail")

public class Blindboxdetail {

  private long detailImageId;
  private String blindBoxCode;
  private String imageUrl;
  private Date createTime;
}
