package MarketplaceBackstage.common.utils.Base;

import lombok.Data;

import java.util.Date;

@Data
public class Specificationimage {

  private long specificationImageId;
  private String specificationCode;
  private String imageUrl;
  private Date createTime;
}
