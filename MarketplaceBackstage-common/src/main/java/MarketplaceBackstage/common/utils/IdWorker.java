package MarketplaceBackstage.common.utils;

import com.fasterxml.uuid.EthernetAddress;
import com.fasterxml.uuid.Generators;
import com.fasterxml.uuid.impl.TimeBasedReorderedGenerator;

import java.util.UUID;

public class IdWorker {
    public static String getGeneratorUUID() {
        TimeBasedReorderedGenerator timeBasedReorderedGenerator = Generators.timeBasedReorderedGenerator(EthernetAddress.fromEgressInterface());
        UUID generate = timeBasedReorderedGenerator.generate();
        return generate.toString();
    }
}
