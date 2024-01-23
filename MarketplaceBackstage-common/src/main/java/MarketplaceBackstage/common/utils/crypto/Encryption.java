package MarketplaceBackstage.common.utils.crypto;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.validator.constraints.br.CNPJ;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.Cipher;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

@Component
@Configuration
//加密的方法
public class Encryption {
    //    Irreversible encryption
    public String CryptographicIrreversible(String content) {
        return DigestUtils.sha256Hex(content);
    }

    //Encryption method for output sensitive information
    public String ReversibleEncryption(String key, String content) throws IOException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeySpecException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
        byte[] bytes = Base64.decodeBase64(key);
        RSAPublicKey rsa = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bytes));
        Cipher instance = Cipher.getInstance("RSA");
        instance.init(Cipher.ENCRYPT_MODE, rsa);
        String s = Base64.encodeBase64String(instance.doFinal(content.getBytes("UTF-8")));
        System.out.println(s);
        return s;
    }
}
