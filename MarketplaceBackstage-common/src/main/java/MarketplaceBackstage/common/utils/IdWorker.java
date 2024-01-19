package MarketplaceBackstage.common.utils;

import com.fasterxml.uuid.EthernetAddress;
import com.fasterxml.uuid.Generators;
import com.fasterxml.uuid.UUIDClock;
import com.fasterxml.uuid.impl.TimeBasedEpochGenerator;
import com.fasterxml.uuid.impl.TimeBasedGenerator;
import com.fasterxml.uuid.impl.TimeBasedReorderedGenerator;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Random;
import java.util.UUID;

public class IdWorker {
//    生成唯一的id
    public static String getGeneratorUUID() {
        TimeBasedEpochGenerator timeBasedGenerator = Generators.timeBasedEpochGenerator(new Random(),new UUIDClock());
        UUID generate = timeBasedGenerator.generate();
        String string = generate.toString().replace("-","").substring(0,20);
        BigInteger bigInteger = new BigInteger(string, 16);
        return bigInteger.toString();
    }
}
