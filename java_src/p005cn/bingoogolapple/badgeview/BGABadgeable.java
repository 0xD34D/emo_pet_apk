package p005cn.bingoogolapple.badgeview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
/* renamed from: cn.bingoogolapple.badgeview.BGABadgeable */
/* loaded from: classes.dex */
public interface BGABadgeable {
    boolean callSuperOnTouchEvent(MotionEvent motionEvent);

    BGABadgeViewHelper getBadgeViewHelper();

    Context getContext();

    boolean getGlobalVisibleRect(Rect rect);

    int getHeight();

    int getId();

    ViewParent getParent();

    View getRootView();

    int getWidth();

    void hiddenBadge();

    boolean isDraggable();

    boolean isDragging();

    boolean isShowBadge();

    void postInvalidate();

    void setDragDismissDelegate(BGADragDismissDelegate bGADragDismissDelegate);

    void showCirclePointBadge();

    void showDrawableBadge(Bitmap bitmap);

    void showTextBadge(String str);
}
