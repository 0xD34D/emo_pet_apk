package p005cn.bingoogolapple.badgeview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import p005cn.bingoogolapple.badgeview.BGABadgeViewHelper;
/* renamed from: cn.bingoogolapple.badgeview.BGABadgeFloatingActionButton */
/* loaded from: classes.dex */
public class BGABadgeFloatingActionButton extends FloatingActionButton implements BGABadgeable {
    private BGABadgeViewHelper mBadgeViewHelper;

    public BGABadgeFloatingActionButton(Context context) {
        this(context, null);
    }

    public BGABadgeFloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BGABadgeFloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBadgeViewHelper = new BGABadgeViewHelper(this, context, attributeSet, BGABadgeViewHelper.BadgeGravity.RightTop);
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButton, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.mBadgeViewHelper.onTouchEvent(motionEvent);
    }

    @Override // p005cn.bingoogolapple.badgeview.BGABadgeable
    public boolean callSuperOnTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mBadgeViewHelper.drawBadge(canvas);
    }

    @Override // p005cn.bingoogolapple.badgeview.BGABadgeable
    public void showCirclePointBadge() {
        this.mBadgeViewHelper.showCirclePointBadge();
    }

    @Override // p005cn.bingoogolapple.badgeview.BGABadgeable
    public void showTextBadge(String str) {
        this.mBadgeViewHelper.showTextBadge(str);
    }

    @Override // p005cn.bingoogolapple.badgeview.BGABadgeable
    public void hiddenBadge() {
        this.mBadgeViewHelper.hiddenBadge();
    }

    @Override // p005cn.bingoogolapple.badgeview.BGABadgeable
    public void showDrawableBadge(Bitmap bitmap) {
        this.mBadgeViewHelper.showDrawable(bitmap);
    }

    @Override // p005cn.bingoogolapple.badgeview.BGABadgeable
    public void setDragDismissDelegate(BGADragDismissDelegate bGADragDismissDelegate) {
        this.mBadgeViewHelper.setDragDismissDelegate(bGADragDismissDelegate);
    }

    @Override // p005cn.bingoogolapple.badgeview.BGABadgeable
    public boolean isShowBadge() {
        return this.mBadgeViewHelper.isShowBadge();
    }

    @Override // p005cn.bingoogolapple.badgeview.BGABadgeable
    public boolean isDraggable() {
        return this.mBadgeViewHelper.isDraggable();
    }

    @Override // p005cn.bingoogolapple.badgeview.BGABadgeable
    public boolean isDragging() {
        return this.mBadgeViewHelper.isDragging();
    }

    @Override // p005cn.bingoogolapple.badgeview.BGABadgeable
    public BGABadgeViewHelper getBadgeViewHelper() {
        return this.mBadgeViewHelper;
    }
}
