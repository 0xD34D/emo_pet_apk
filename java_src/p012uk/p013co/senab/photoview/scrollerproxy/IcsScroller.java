package p012uk.p013co.senab.photoview.scrollerproxy;

import android.content.Context;
/* renamed from: uk.co.senab.photoview.scrollerproxy.IcsScroller */
/* loaded from: classes.dex */
public class IcsScroller extends GingerScroller {
    public IcsScroller(Context context) {
        super(context);
    }

    @Override // p012uk.p013co.senab.photoview.scrollerproxy.GingerScroller, p012uk.p013co.senab.photoview.scrollerproxy.ScrollerProxy
    public boolean computeScrollOffset() {
        return this.mScroller.computeScrollOffset();
    }
}
