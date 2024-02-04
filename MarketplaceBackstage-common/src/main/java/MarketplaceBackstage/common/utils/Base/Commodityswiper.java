package MarketplaceBackstage.common.utils.Base;


import lombok.Data;

import java.util.Date;

@Data
public class Commodityswiper {

    private long commoditySwiperId;
    private long commodityCode;
    private String imageUrl;
    private Date createTime;
    private Date updateTime;


}
