package MarketplaceBackstage.common.utils.Result;

import MarketplaceBackstage.common.response.ResponseCode;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
public class ResultUtils {
    private int status;
    private String message;
    private Object data;

    public ResultUtils(int status, Object data) {
        this.status = status;
        this.data = data;
    }

    public ResultUtils(int status, String message, Object data) {
        this.status = status;
        this.message = message;
        this.data = data;
    }

    public ResultUtils(int status) {
        this.status = status;
    }

    public static ResultUtils SUCCESS() {
        return new ResultUtils(ResponseCode.SUCCESS);
    }

    public static ResultUtils Fail() {
        return new ResultUtils(ResponseCode.FAIL);
    }

    public static ResultUtils Error() {
        return new ResultUtils(ResponseCode.ERROR);
    }
}
