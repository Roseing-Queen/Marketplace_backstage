package MarketplaceBackstage.common.utils.Base;

import jakarta.persistence.Table;
import lombok.Data;

import java.util.Date;

@Data
@Table(name = "blindbox")
public class Blindbox {

  private long id;
  private String blindBoxName;
  private Date createTime;
  private Date updateTime;
  private String userNo;
  private long state;
  private Date startTime;
  private Date endTime;
  private long pushCrowd;
  private String remark;
  private double price;
  private double labelNo;
  private long type;
  private long sort;
  private String thumbnail;
}
