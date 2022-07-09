package com.living.emo.util;

import com.living.emo.MyApplication;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class TcpServerUtil {
    private ServerNotifyMessageListener mlistener = null;
    private ServerSocket serverSocket = null;
    private ExecutorService executorService = null;

    /* loaded from: classes.dex */
    public interface ServerNotifyMessageListener {
        void onFinish();

        void onServerStart();

        void onSingleImage();
    }

    public void starServer(int i) {
        try {
            this.serverSocket = new ServerSocket(i);
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (this.serverSocket != null) {
            ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(40);
            this.executorService = newFixedThreadPool;
            newFixedThreadPool.execute(new Runnable() { // from class: com.living.emo.util.-$$Lambda$TcpServerUtil$ce9Ga4KRrVVvV8ISiaJXCAgIDRc
                @Override // java.lang.Runnable
                public final void run() {
                    TcpServerUtil.this.lambda$starServer$0$TcpServerUtil();
                }
            });
        }
    }

    public /* synthetic */ void lambda$starServer$0$TcpServerUtil() {
        ServerNotifyMessageListener serverNotifyMessageListener = this.mlistener;
        if (serverNotifyMessageListener != null) {
            serverNotifyMessageListener.onServerStart();
        }
        while (!this.serverSocket.isClosed()) {
            LogUtil.m63i("tag", "isclosed:" + this.serverSocket.isClosed());
            try {
                this.executorService.execute(new ReadRunnable(this.serverSocket.accept()));
            } catch (IOException e) {
                e.printStackTrace();
                return;
            }
        }
    }

    public boolean isActive() {
        ServerSocket serverSocket = this.serverSocket;
        if (serverSocket == null) {
            return false;
        }
        return !serverSocket.isClosed();
    }

    /* loaded from: classes.dex */
    public class ReadRunnable implements Runnable {

        /* renamed from: is */
        private InputStream f989is;

        /* renamed from: os */
        private OutputStream f990os;
        Socket socket;
        private final String DELIMITED_END = "------";
        private final String MESSAGE_END = "#";
        private final String FILE_END = "finish";
        private final String DEFAULT_ENCODE = "UTF-8";
        private final String ISO_ENCODE = "ISO-8859-1";
        public HashMap<String, String> fileInfo = new HashMap<>();

        public ReadRunnable(Socket socket) {
            this.socket = null;
            this.f989is = null;
            this.f990os = null;
            this.socket = socket;
            try {
                this.f989is = socket.getInputStream();
                this.f990os = socket.getOutputStream();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x002f, code lost:
            if (r11.this$0.mlistener == null) goto L_0x003a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
            r11.this$0.mlistener.onFinish();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x003a, code lost:
            com.living.emo.util.LogUtil.m63i("tag", "文件传输完成");
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            int indexOf;
            try {
                try {
                    try {
                        StringBuffer stringBuffer = new StringBuffer();
                        while (true) {
                            if (this.socket.isClosed()) {
                                break;
                            }
                            bufferToString(this.f989is, stringBuffer, "finish".getBytes("ISO-8859-1").length);
                            if (stringBuffer.toString().equals("finish")) {
                                break;
                            }
                            while (true) {
                                indexOf = stringBuffer.indexOf("#");
                                if (indexOf >= 0) {
                                    break;
                                }
                                readToBuffer(this.f989is, stringBuffer);
                            }
                            String substring = stringBuffer.substring(0, indexOf);
                            LogUtil.m63i("tag", substring);
                            stringBuffer.delete(0, indexOf + 1);
                            parseText(substring);
                            String str = this.fileInfo.get("name");
                            String str2 = this.fileInfo.get("delimited");
                            int parseInt = Integer.parseInt(this.fileInfo.get("filesize"));
                            File rootDir = MyApplication.getInstance().getRootDir();
                            if (!rootDir.exists()) {
                                rootDir.mkdirs();
                            }
                            FileOutputStream fileOutputStream = new FileOutputStream(new File(rootDir, str));
                            byte[] bytes = stringBuffer.toString().getBytes("ISO-8859-1");
                            if (parseInt > bytes.length) {
                                fileOutputStream.write(bytes);
                                writeImage(this.f989is, fileOutputStream, parseInt - bytes.length);
                                stringBuffer.delete(0, stringBuffer.length());
                            } else {
                                fileOutputStream.write(bytes, 0, parseInt);
                                stringBuffer.delete(0, parseInt);
                            }
                            fileOutputStream.close();
                            LogUtil.m63i("tag", "文件以保存");
                            if (TcpServerUtil.this.mlistener != null) {
                                TcpServerUtil.this.mlistener.onSingleImage();
                            }
                            String str3 = "------" + str2 + "------";
                            bufferToString(this.f989is, stringBuffer, str3.getBytes("ISO-8859-1").length);
                            if (stringBuffer.toString().equals(str3)) {
                                stringBuffer.delete(0, str3.getBytes("ISO-8859-1").length);
                                this.f990os.write("ok".getBytes());
                                this.f990os.flush();
                            } else {
                                this.f990os.write("error".getBytes());
                                this.f990os.flush();
                            }
                        }
                        this.socket.close();
                        this.f989is.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                        this.socket.close();
                        this.f989is.close();
                    }
                    this.f990os.close();
                } catch (Exception unused) {
                }
            } catch (Throwable th) {
                try {
                    this.socket.close();
                    this.f989is.close();
                    this.f990os.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        }

        private void bufferToString(InputStream inputStream, StringBuffer stringBuffer, int i) throws Exception {
            int i2;
            byte[] bArr = new byte[i];
            int i3 = 0;
            while (i3 < i) {
                if (i3 + i <= i) {
                    i2 = inputStream.read(bArr);
                } else {
                    i2 = inputStream.read(bArr, 0, i - i3);
                }
                if (i2 != -1) {
                    i3 += i2;
                    stringBuffer.append(new String(bArr, 0, i2, "ISO-8859-1"));
                } else {
                    throw new RuntimeException("读取图片结束分隔符，读取到了-1，说明Socket已经结束");
                }
            }
        }

        private void writeImage(InputStream inputStream, FileOutputStream fileOutputStream, int i) throws Exception {
            int i2;
            byte[] bArr = new byte[1024];
            int i3 = 0;
            while (i3 < i) {
                if (i3 + 1024 <= i) {
                    i2 = inputStream.read(bArr);
                } else {
                    i2 = inputStream.read(bArr, 0, i - i3);
                }
                if (i2 != -1) {
                    i3 += i2;
                    fileOutputStream.write(bArr, 0, i2);
                } else {
                    return;
                }
            }
        }

        private void parseText(String str) {
            for (String str2 : str.split(";")) {
                String[] split = str2.split("=");
                this.fileInfo.put(split[0], split[1]);
            }
        }

        private void readToBuffer(InputStream inputStream, StringBuffer stringBuffer) throws Exception {
            byte[] bArr = new byte[1024];
            int read = inputStream.read(bArr);
            if (read != -1) {
                stringBuffer.append(new String(bArr, 0, read, "ISO-8859-1"));
                return;
            }
            throw new RuntimeException("socket 已断开连接");
        }
    }

    public void stopServer() {
        new Thread(new Runnable() { // from class: com.living.emo.util.-$$Lambda$TcpServerUtil$rWx-hZXn_TiXiDdKYt0NmXmavG0
            @Override // java.lang.Runnable
            public final void run() {
                TcpServerUtil.this.lambda$stopServer$1$TcpServerUtil();
            }
        }).start();
    }

    public /* synthetic */ void lambda$stopServer$1$TcpServerUtil() {
        try {
            this.executorService.shutdown();
            if (!this.executorService.awaitTermination(1000L, TimeUnit.MILLISECONDS)) {
                this.executorService.shutdownNow();
            }
        } catch (Exception e) {
            LogUtil.m63i("tag", "awaitTermination interrupted: " + e);
        }
        ServerSocket serverSocket = this.serverSocket;
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void setServerNotifyMessageListener(ServerNotifyMessageListener serverNotifyMessageListener) {
        if (this.mlistener == null) {
            this.mlistener = serverNotifyMessageListener;
        }
    }
}
