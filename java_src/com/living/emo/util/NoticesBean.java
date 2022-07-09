package com.living.emo.util;

import com.living.emo.bean.Notice;
/* loaded from: classes.dex */
public class NoticesBean {
    private static NoticesBean sNoticesBean;
    private Notice mNotice = null;
    private boolean mMainNew = false;

    private NoticesBean() {
    }

    public static NoticesBean getInstance() {
        if (sNoticesBean == null) {
            sNoticesBean = new NoticesBean();
        }
        return sNoticesBean;
    }

    public void setNotice(Notice notice) {
        this.mNotice = notice;
        int i = 4;
        if (notice.getData().size() <= 4) {
            i = this.mNotice.getData().size();
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            } else if (this.mNotice.getData().get(i2).isHasnew()) {
                setMainNew(true);
                break;
            } else {
                i3++;
                i2++;
            }
        }
        if (i3 == i) {
            setMainNew(false);
        }
    }

    public boolean isMainNew() {
        return this.mMainNew;
    }

    public void setMainNew(boolean z) {
        this.mMainNew = z;
    }

    public Notice getNotice() {
        return this.mNotice;
    }

    public boolean empty() {
        return this.mNotice == null;
    }
}
