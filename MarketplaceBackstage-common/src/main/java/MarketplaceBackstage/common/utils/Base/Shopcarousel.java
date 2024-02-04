package MarketplaceBackstage.common.utils.Base;

import lombok.Data;

import java.util.Date;

@Data
public class Shopcarousel {

  private long id;
  private long type;
  private long state;
  private String content;
  private String imageUrl;
  private Date craeteTime;
  private Date updateTime;
}
