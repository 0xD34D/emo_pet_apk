package com.google.android.play.core.assetpacks;

import com.google.android.play.core.assetpacks.model.C1075a;
import com.google.android.play.core.tasks.AbstractC1278j;
/* loaded from: classes.dex */
public class AssetPackException extends AbstractC1278j {

    /* renamed from: a */
    private final int f191a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AssetPackException(int i) {
        super(String.format("Asset Pack Download Error(%d): %s", Integer.valueOf(i), C1075a.m476a(i)));
        if (i != 0) {
            this.f191a = i;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }

    @Override // com.google.android.play.core.tasks.AbstractC1278j
    public int getErrorCode() {
        return this.f191a;
    }
}
