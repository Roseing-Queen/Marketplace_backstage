package MarketplaceBackstage.common.utils.Base;


import lombok.Data;

import java.util.Date;

@Data
public class Commodity {

    private long id;
    private String brand;
    private long commodityNo;
    private String commodityDescription;
    private String commodityName;
    private long type;
    private double costPrice;
    private long category;
    private String commodityLabel;
    private String remark;
    private long stockQuantity;
    private long supplierNo;
    private long state;
    private long userNo;
    private long weight;
    private String thumbnail;
    private Date createTime;
    private Date updateTime;
}
