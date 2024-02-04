package MarketplaceBackstage.common.utils.Base;

import lombok.Data;

import java.util.Date;

@Data
public class Userfeedback {

  private long feedBackId;
  private long userNo;
  private String content;
  private Date createTime;
  private Date updateTime;
  private long state;
}
