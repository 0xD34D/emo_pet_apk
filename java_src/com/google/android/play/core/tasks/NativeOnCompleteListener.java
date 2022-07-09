package com.google.android.play.core.tasks;
/* loaded from: classes.dex */
public class NativeOnCompleteListener implements OnCompleteListener<Object> {

    /* renamed from: a */
    private final long f895a;

    /* renamed from: b */
    private final int f896b;

    public NativeOnCompleteListener(long j, int i) {
        this.f895a = j;
        this.f896b = i;
    }

    public native void nativeOnComplete(long j, int i, Object obj, int i2);

    @Override // com.google.android.play.core.tasks.OnCompleteListener
    public void onComplete(Task<Object> task) {
        if (!task.isComplete()) {
            int i = this.f896b;
            StringBuilder sb = new StringBuilder(50);
            sb.append("onComplete called for incomplete task: ");
            sb.append(i);
            throw new IllegalStateException(sb.toString());
        } else if (task.isSuccessful()) {
            nativeOnComplete(this.f895a, this.f896b, task.getResult(), 0);
        } else {
            Exception exception = task.getException();
            if (!(exception instanceof AbstractC1278j)) {
                nativeOnComplete(this.f895a, this.f896b, null, -100);
                return;
            }
            int errorCode = ((AbstractC1278j) exception).getErrorCode();
            if (errorCode != 0) {
                nativeOnComplete(this.f895a, this.f896b, null, errorCode);
                return;
            }
            int i2 = this.f896b;
            StringBuilder sb2 = new StringBuilder(51);
            sb2.append("TaskException has error code 0 on task: ");
            sb2.append(i2);
            throw new IllegalStateException(sb2.toString());
        }
    }
}
