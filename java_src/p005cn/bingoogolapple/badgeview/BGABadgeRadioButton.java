package p005cn.bingoogolapple.badgeview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RadioButton;
import p005cn.bingoogolapple.badgeview.BGABadgeViewHelper;
/* renamed from: cn.bingoogolapple.badgeview.BGABadgeRadioButton */
/* loaded from: classes.dex */
public class BGABadgeRadioButton extends RadioButton implements BGABadgeable {
    private BGABadgeViewHelper mBadgeViewHelper;

    public BGABadgeRadioButton(Context context) {
        this(context, null);
    }

    public BGABadgeRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842878);
    }

    public BGABadgeRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBadgeViewHelper = new BGABadgeViewHelper(this, context, attributeSet, BGABadgeViewHelper.BadgeGravity.RightTop);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.mBadgeViewHelper.onTouchEvent(motionEvent);
    }

    @Override // p005cn.bingoogolapple.badgeview.BGABadgeable
    public boolean callSuperOnTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
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
