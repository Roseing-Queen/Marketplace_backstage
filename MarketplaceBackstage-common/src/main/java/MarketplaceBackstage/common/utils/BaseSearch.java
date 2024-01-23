package MarketplaceBackstage.common.utils;

import lombok.Data;

@Data
public class BaseSearch {
    //    每页数量
    private Integer pageSize;
    //    页码
    private Integer pageNum;
}
