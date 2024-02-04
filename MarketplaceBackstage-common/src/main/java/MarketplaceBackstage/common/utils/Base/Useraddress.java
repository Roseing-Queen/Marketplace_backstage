package MarketplaceBackstage.common.utils.Base;

import lombok.Data;

import java.util.Date;

@Data
public class Useraddress {

  private long addressId;
  private String mobile;
  private String recipientName;
  private long administrativeDistrictId;
  private String addressDeatil;
  private Date createTime;
  private Date updateTime;
  private long state;
  private long userNo;
}
