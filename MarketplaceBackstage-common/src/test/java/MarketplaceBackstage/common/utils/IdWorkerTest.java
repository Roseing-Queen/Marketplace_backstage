package MarketplaceBackstage.common.utils;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class IdWorkerTest {

    @Test
    void getGeneratorUUID() {
        System.out.printf(IdWorker.getGeneratorUUID());
    }
}