package MarketplaceBackstage.common.utils.crypto;

import org.junit.jupiter.api.Test;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;


class EncryptionTest {

    @Test
    void cryptographicIrreversible() {
    }

    @Test
    void reversibleEncryption() throws NoSuchPaddingException, IllegalBlockSizeException, IOException, NoSuchAlgorithmException, InvalidKeySpecException, BadPaddingException, InvalidKeyException {
        Encryption encryption = new Encryption();
        String s = encryption.ReversibleEncryption("123456789");
        System.out.println(s);
    }
}