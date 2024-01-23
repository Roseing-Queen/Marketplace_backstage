package MarketplaceBackstage.common.utils.crypto;


import org.apache.commons.codec.binary.Base64;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
//Methods of decryption
public class Decrypt {
    public String getDecrypt(String key, String content) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeySpecException, InvalidKeyException, UnsupportedEncodingException, IllegalBlockSizeException, BadPaddingException {
        byte[] bytes = Base64.decodeBase64(key);
        RSAPrivateKey  rsa = (RSAPrivateKey)KeyFactory.getInstance("RSA").generatePrivate(new X509EncodedKeySpec(bytes));
        Cipher instance = Cipher.getInstance("RSA");
        instance.init(Cipher.DECRYPT_MODE, rsa);
        String s = Base64.encodeBase64String(instance.doFinal(content.getBytes("UTF-8")));
        return s;
    }

}
