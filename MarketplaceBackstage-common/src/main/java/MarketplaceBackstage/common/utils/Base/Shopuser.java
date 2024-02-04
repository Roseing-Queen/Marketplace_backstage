package MarketplaceBackstage.common.utils.Base;


import lombok.Data;

import java.util.Date;
@Data
public class Shopuser {

  private long userId;
  private long userNo;
  private String realName;
  private String nickName;
  private long gender;
  private String mobile;
  private String work;
  private String avatar;
  private Date birthday;
  private String identificationNumber;
  private long state;
  private String inviteCode;
  private String inviteUserNo;

}
