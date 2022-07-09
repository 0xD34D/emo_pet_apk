package com.living.emo.util;

import android.os.Handler;
import android.os.Looper;
import com.living.emo.bean.ImageBean;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class CustomTcpServer {
    private ServerNotifyMessageListener mlistener = null;
    private ServerSocket serverSocket = null;
    private ExecutorService executorService = null;

    /* loaded from: classes.dex */
    public interface ServerNotifyMessageListener {
        void onTimeOut();
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
            newFixedThreadPool.execute(new Runnable() { // from class: com.living.emo.util.-$$Lambda$CustomTcpServer$kTsNiEX0DV6kFAxZtaTzWzEkhQw
                @Override // java.lang.Runnable
                public final void run() {
                    CustomTcpServer.this.lambda$starServer$0$CustomTcpServer();
                }
            });
        }
    }

    public /* synthetic */ void lambda$starServer$0$CustomTcpServer() {
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
        private static final String FILE_END = "finish";
        private static final String FILE_OK = "ok";
        private static final String FILE_START = "filestart";

        /* renamed from: is */
        private InputStream f987is;
        private Handler mHandler;

        /* renamed from: os */
        private OutputStream f988os;
        Socket socket;
        private final String ISO_ENCODE = "ISO-8859-1";
        private Runnable task = new Runnable() { // from class: com.living.emo.util.CustomTcpServer.ReadRunnable.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    LogUtil.m64e("TAG", "run: 服务器已断开client连接");
                    ReadRunnable.this.socket.close();
                    ReadRunnable.this.f987is.close();
                    ReadRunnable.this.f988os.close();
                    if (CustomTcpServer.this.mlistener != null) {
                        CustomTcpServer.this.mlistener.onTimeOut();
                    }
                    ReadRunnable.this.mHandler = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        };

        public ReadRunnable(Socket socket) {
            this.socket = null;
            this.f987is = null;
            this.f988os = null;
            this.socket = socket;
            try {
                this.f987is = socket.getInputStream();
                this.f988os = socket.getOutputStream();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0090, code lost:
            java.lang.System.out.println("bufferToString:" + r3.toString());
            r11.mHandler.removeCallbacks(r11.task);
            r3.delete(0, 1000);
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            OutputStream outputStream;
            try {
                try {
                    try {
                        StringBuffer stringBuffer = new StringBuffer();
                        int i = 0;
                        while (true) {
                            if (this.socket.isClosed()) {
                                break;
                            }
                            ImageBean instance = ImageBean.getInstance();
                            readToBuffer(this.f987is, stringBuffer);
                            System.out.println("second:" + stringBuffer.toString());
                            stringBuffer.delete(0, 1000);
                            if (instance.getImageRaw() != null && instance.getImageRaw().length > 0) {
                                this.f988os.write(instance.getImageRaw());
                                this.f988os.flush();
                                System.out.println("文件传输完成");
                            }
                            i++;
                            System.out.println(i);
                            Handler handler = new Handler(Looper.getMainLooper());
                            this.mHandler = handler;
                            handler.postDelayed(this.task, 60000L);
                            bufferToString(this.f987is, stringBuffer, 2);
                            if (stringBuffer.toString().toLowerCase(Locale.ROOT).equals(FILE_OK)) {
                                break;
                            }
                        }
                        LogUtil.m64e("TAG", "run: 服务器已关闭连接");
                        this.socket.close();
                        this.f987is.close();
                        outputStream = this.f988os;
                    } catch (Exception e) {
                        e.printStackTrace();
                        LogUtil.m64e("TAG", "run: 服务器已关闭连接");
                        this.socket.close();
                        this.f987is.close();
                        outputStream = this.f988os;
                    }
                    outputStream.close();
                    this.mHandler = null;
                } catch (Throwable th) {
                    try {
                        LogUtil.m64e("TAG", "run: 服务器已关闭连接");
                        this.socket.close();
                        this.f987is.close();
                        this.f988os.close();
                        this.mHandler = null;
                    } catch (Exception unused) {
                    }
                    throw th;
                }
            } catch (Exception unused2) {
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
        new Thread(new Runnable() { // from class: com.living.emo.util.-$$Lambda$CustomTcpServer$IpdKgV8xdLLToZs4D1cVH_GXnRk
            @Override // java.lang.Runnable
            public final void run() {
                CustomTcpServer.this.lambda$stopServer$1$CustomTcpServer();
            }
        }).start();
    }

    public /* synthetic */ void lambda$stopServer$1$CustomTcpServer() {
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
