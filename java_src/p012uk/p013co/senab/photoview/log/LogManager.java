package p012uk.p013co.senab.photoview.log;
/* renamed from: uk.co.senab.photoview.log.LogManager */
/* loaded from: classes.dex */
public final class LogManager {
    private static Logger logger = new LoggerDefault();

    public static void setLogger(Logger logger2) {
        logger = logger2;
    }

    public static Logger getLogger() {
        return logger;
    }
}
