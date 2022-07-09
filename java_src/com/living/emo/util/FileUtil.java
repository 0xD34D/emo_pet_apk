package com.living.emo.util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
/* loaded from: classes.dex */
public class FileUtil {
    public static boolean writeFile(String str, byte[] bArr) {
        try {
            FileChannel channel = new FileOutputStream(str).getChannel();
            channel.write(ByteBuffer.wrap(bArr));
            channel.force(true);
            channel.close();
            return true;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return false;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
