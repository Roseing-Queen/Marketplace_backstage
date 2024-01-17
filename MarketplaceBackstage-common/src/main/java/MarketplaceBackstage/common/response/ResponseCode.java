package MarketplaceBackstage.common.response;

public interface ResponseCode {
    //    The status code returned by processing the success of the process
    int SUCCESS = 200;
    //    The status code returned by the processing failure
    int FAIL = 500;
    //    The status code returned if the parameter is missing
    int PARAMETERS_MISSING = 502;
    //    The status code returned by an unknown error
    int UNKNOWN_ERROR = 504;
// The status code returned by the database error
    int DATABASE_ERROR=600;
}
