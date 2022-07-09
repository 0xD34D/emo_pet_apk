package p005cn.bingoogolapple.baseadapter;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: cn.bingoogolapple.baseadapter.BGADivider */
/* loaded from: classes.dex */
public class BGADivider extends RecyclerView.ItemDecoration {
    private Delegate mDelegate;
    private Drawable mDividerDrawable;
    private int mMarginLeft;
    private int mMarginRight;
    private int mSize;
    private int mOrientation = 1;
    private int mStartSkipCount = 1;
    private int mEndSkipCount = 0;

    /* renamed from: cn.bingoogolapple.baseadapter.BGADivider$Delegate */
    /* loaded from: classes.dex */
    public interface Delegate {
        void drawOverVertical(BGADivider bGADivider, Canvas canvas, int i, int i2, int i3, int i4, int i5);

        void drawVertical(BGADivider bGADivider, Canvas canvas, int i, int i2, int i3, int i4, int i5);

        void getItemOffsets(BGADivider bGADivider, int i, int i2, Rect rect);

        boolean isNeedCustom(int i, int i2);

        boolean isNeedSkip(int i, int i2);
    }

    private void drawHorizontal(Canvas canvas, RecyclerView recyclerView) {
    }

    private BGADivider(int i) {
        this.mSize = 1;
        Drawable drawable = ContextCompat.getDrawable(BGABaseAdapterUtil.getApp(), i);
        this.mDividerDrawable = drawable;
        this.mSize = Math.min(drawable.getIntrinsicHeight(), this.mDividerDrawable.getIntrinsicWidth());
    }

    public static BGADivider newDrawableDivider(int i) {
        return new BGADivider(i);
    }

    public static BGADivider newShapeDivider() {
        return new BGADivider(C0647R.C0649drawable.bga_baseadapter_divider_shape);
    }

    public static BGADivider newBitmapDivider() {
        return new BGADivider(C0647R.mipmap.bga_baseadapter_divider_bitmap);
    }

    public BGADivider setDelegate(Delegate delegate) {
        this.mDelegate = delegate;
        return this;
    }

    public BGADivider setBothMarginResource(int i) {
        int dimensionPixelOffset = BGABaseAdapterUtil.getDimensionPixelOffset(i);
        this.mMarginLeft = dimensionPixelOffset;
        this.mMarginRight = dimensionPixelOffset;
        return this;
    }

    public BGADivider setBothMarginDp(int i) {
        int dp2px = BGABaseAdapterUtil.dp2px(i);
        this.mMarginLeft = dp2px;
        this.mMarginRight = dp2px;
        return this;
    }

    public BGADivider setBothMarginPx(int i) {
        this.mMarginLeft = i;
        this.mMarginRight = i;
        return this;
    }

    public BGADivider setMarginLeftResource(int i) {
        this.mMarginLeft = BGABaseAdapterUtil.getDimensionPixelOffset(i);
        return this;
    }

    public BGADivider setMarginLeftDp(int i) {
        this.mMarginLeft = BGABaseAdapterUtil.dp2px(i);
        return this;
    }

    public BGADivider setMarginLeftPx(int i) {
        this.mMarginLeft = i;
        return this;
    }

    public BGADivider setMarginRightResource(int i) {
        this.mMarginRight = BGABaseAdapterUtil.getDimensionPixelOffset(i);
        return this;
    }

    public BGADivider setMarginRightDp(int i) {
        this.mMarginRight = BGABaseAdapterUtil.dp2px(i);
        return this;
    }

    public BGADivider setMarginRightPx(int i) {
        this.mMarginRight = i;
        return this;
    }

    public BGADivider setColorResource(int i, boolean z) {
        return setColor(BGABaseAdapterUtil.getColor(i), z);
    }

    public BGADivider setColor(int i, boolean z) {
        this.mDividerDrawable.setColorFilter(i, z ? PorterDuff.Mode.SRC_ATOP : PorterDuff.Mode.SRC);
        return this;
    }

    public BGADivider setHorizontal() {
        this.mOrientation = 0;
        return this;
    }

    public BGADivider rotateDivider() {
        Drawable drawable = this.mDividerDrawable;
        if (drawable != null && (drawable instanceof BitmapDrawable)) {
            this.mDividerDrawable = BGABaseAdapterUtil.rotateBitmap(((BitmapDrawable) drawable).getBitmap());
        }
        return this;
    }

    public BGADivider setStartSkipCount(int i) {
        this.mStartSkipCount = i;
        if (i < 0) {
            this.mStartSkipCount = 0;
        }
        return this;
    }

    public BGADivider setEndSkipCount(int i) {
        this.mEndSkipCount = i;
        if (i < 0) {
            this.mEndSkipCount = 0;
        }
        return this;
    }

    public BGADivider setSizeResource(int i) {
        this.mSize = BGABaseAdapterUtil.getDimensionPixelOffset(i);
        return this;
    }

    public BGADivider setSizeDp(int i) {
        this.mSize = BGABaseAdapterUtil.dp2px(i);
        return this;
    }

    public BGADivider setSizePx(int i) {
        this.mSize = i;
        return this;
    }

    public int getMarginLeft() {
        return this.mMarginLeft;
    }

    public int getMarginRight() {
        return this.mMarginRight;
    }

    private BGAHeaderAndFooterAdapter getHeaderAndFooterAdapter(RecyclerView recyclerView) {
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter instanceof BGAHeaderAndFooterAdapter) {
            return (BGAHeaderAndFooterAdapter) adapter;
        }
        return null;
    }

    private boolean isNeedSkip(int i, BGAHeaderAndFooterAdapter bGAHeaderAndFooterAdapter, int i2, int i3) {
        if ((bGAHeaderAndFooterAdapter != null && bGAHeaderAndFooterAdapter.isHeaderViewOrFooterView(i)) || i2 > (i3 - 1) - this.mEndSkipCount || i2 < this.mStartSkipCount) {
            return true;
        }
        Delegate delegate = this.mDelegate;
        if (delegate != null) {
            return delegate.isNeedSkip(i2, i3);
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int i;
        if (recyclerView.getLayoutManager() != null && recyclerView.getAdapter() != null) {
            int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
            int i2 = recyclerView.getAdapter().getItemCount();
            BGAHeaderAndFooterAdapter headerAndFooterAdapter = getHeaderAndFooterAdapter(recyclerView);
            if (headerAndFooterAdapter != null) {
                i = headerAndFooterAdapter.getRealItemPosition(childAdapterPosition);
                i2 = headerAndFooterAdapter.getRealItemCount();
            } else {
                i = childAdapterPosition;
            }
            if (isNeedSkip(childAdapterPosition, headerAndFooterAdapter, i, i2)) {
                rect.set(0, 0, 0, 0);
                return;
            }
            Delegate delegate = this.mDelegate;
            if (delegate != null && delegate.isNeedCustom(i, i2)) {
                this.mDelegate.getItemOffsets(this, i, i2, rect);
            } else if (this.mOrientation == 1) {
                getVerticalItemOffsets(rect);
            } else {
                rect.set(this.mSize, 0, 0, 0);
            }
        }
    }

    public void getVerticalItemOffsets(Rect rect) {
        rect.set(0, this.mSize, 0, 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        handleDraw(canvas, recyclerView, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        handleDraw(canvas, recyclerView, false);
    }

    private void handleDraw(Canvas canvas, RecyclerView recyclerView, boolean z) {
        if (recyclerView.getLayoutManager() != null && recyclerView.getAdapter() != null) {
            int itemCount = recyclerView.getAdapter().getItemCount();
            BGAHeaderAndFooterAdapter headerAndFooterAdapter = getHeaderAndFooterAdapter(recyclerView);
            int realItemCount = headerAndFooterAdapter != null ? headerAndFooterAdapter.getRealItemCount() : itemCount;
            if (this.mOrientation == 1) {
                drawVertical(canvas, recyclerView, headerAndFooterAdapter, itemCount, realItemCount, z);
            } else {
                drawHorizontal(canvas, recyclerView);
            }
        }
    }

    private void drawVertical(Canvas canvas, RecyclerView recyclerView, BGAHeaderAndFooterAdapter bGAHeaderAndFooterAdapter, int i, int i2, boolean z) {
        int paddingLeft = recyclerView.getPaddingLeft() + this.mMarginLeft;
        int width = (recyclerView.getWidth() - recyclerView.getPaddingRight()) - this.mMarginRight;
        for (int i3 = 0; i3 < i; i3++) {
            View childAt = recyclerView.getChildAt(i3);
            if (!(childAt == null || childAt.getLayoutParams() == null)) {
                int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
                int realChildAdapterPosition = getRealChildAdapterPosition(childAdapterPosition, bGAHeaderAndFooterAdapter);
                if (!isNeedSkip(childAdapterPosition, bGAHeaderAndFooterAdapter, realChildAdapterPosition, i2)) {
                    int top = childAt.getTop() - ((RecyclerView.LayoutParams) childAt.getLayoutParams()).topMargin;
                    Delegate delegate = this.mDelegate;
                    if (delegate == null || !delegate.isNeedCustom(realChildAdapterPosition, i2)) {
                        if (!z) {
                            drawVerticalDivider(canvas, paddingLeft, width, top);
                        }
                    } else if (z) {
                        this.mDelegate.drawOverVertical(this, canvas, paddingLeft, width, top, realChildAdapterPosition, i2);
                    } else {
                        this.mDelegate.drawVertical(this, canvas, paddingLeft, width, top, realChildAdapterPosition, i2);
                    }
                }
            }
        }
    }

    public void drawVerticalDivider(Canvas canvas, int i, int i2, int i3) {
        this.mDividerDrawable.setBounds(i, i3 - this.mSize, i2, i3);
        this.mDividerDrawable.draw(canvas);
    }

    private int getRealChildAdapterPosition(int i, BGAHeaderAndFooterAdapter bGAHeaderAndFooterAdapter) {
        return bGAHeaderAndFooterAdapter != null ? bGAHeaderAndFooterAdapter.getRealItemPosition(i) : i;
    }

    /* renamed from: cn.bingoogolapple.baseadapter.BGADivider$SimpleDelegate */
    /* loaded from: classes.dex */
    public static class SimpleDelegate implements Delegate {
        protected Paint mPaint;

        @Override // p005cn.bingoogolapple.baseadapter.BGADivider.Delegate
        public void drawOverVertical(BGADivider bGADivider, Canvas canvas, int i, int i2, int i3, int i4, int i5) {
        }

        @Override // p005cn.bingoogolapple.baseadapter.BGADivider.Delegate
        public void drawVertical(BGADivider bGADivider, Canvas canvas, int i, int i2, int i3, int i4, int i5) {
        }

        @Override // p005cn.bingoogolapple.baseadapter.BGADivider.Delegate
        public void getItemOffsets(BGADivider bGADivider, int i, int i2, Rect rect) {
        }

        protected void initAttr() {
        }

        @Override // p005cn.bingoogolapple.baseadapter.BGADivider.Delegate
        public boolean isNeedCustom(int i, int i2) {
            return false;
        }

        @Override // p005cn.bingoogolapple.baseadapter.BGADivider.Delegate
        public boolean isNeedSkip(int i, int i2) {
            return false;
        }

        public SimpleDelegate() {
            Paint paint = new Paint(1);
            this.mPaint = paint;
            paint.setDither(true);
            this.mPaint.setAntiAlias(true);
            initAttr();
        }
    }

    /* renamed from: cn.bingoogolapple.baseadapter.BGADivider$StickyDelegate */
    /* loaded from: classes.dex */
    public static abstract class StickyDelegate extends SimpleDelegate {
        protected int mCategoryBackgroundColor;
        protected int mCategoryHeight;
        protected int mCategoryPaddingLeft;
        protected int mCategoryTextColor;
        protected float mCategoryTextOffset;
        protected int mCategoryTextSize;

        protected abstract String getCategoryName(int i);

        protected abstract int getFirstVisibleItemPosition();

        protected void initCategoryAttr() {
        }

        protected abstract boolean isCategoryFistItem(int i);

        @Override // p005cn.bingoogolapple.baseadapter.BGADivider.SimpleDelegate, p005cn.bingoogolapple.baseadapter.BGADivider.Delegate
        public boolean isNeedCustom(int i, int i2) {
            return true;
        }

        @Override // p005cn.bingoogolapple.baseadapter.BGADivider.SimpleDelegate
        protected void initAttr() {
            this.mCategoryBackgroundColor = Color.parseColor("#F2F2F2");
            this.mCategoryTextColor = Color.parseColor("#848484");
            this.mCategoryPaddingLeft = BGABaseAdapterUtil.dp2px(16.0f);
            this.mCategoryTextSize = BGABaseAdapterUtil.sp2px(14.0f);
            this.mCategoryHeight = BGABaseAdapterUtil.dp2px(32.0f);
            initCategoryAttr();
            this.mPaint.setStyle(Paint.Style.FILL);
            calculateCategoryTextOffset();
        }

        public void calculateCategoryTextOffset() {
            this.mPaint.setTextSize(this.mCategoryTextSize);
            Rect rect = new Rect();
            this.mPaint.getTextBounds("王浩", 0, 2, rect);
            this.mCategoryTextOffset = (this.mCategoryHeight - rect.height()) / 2.0f;
        }

        @Override // p005cn.bingoogolapple.baseadapter.BGADivider.SimpleDelegate, p005cn.bingoogolapple.baseadapter.BGADivider.Delegate
        public void getItemOffsets(BGADivider bGADivider, int i, int i2, Rect rect) {
            if (isCategoryFistItem(i)) {
                rect.set(0, this.mCategoryHeight, 0, 0);
            } else {
                bGADivider.getVerticalItemOffsets(rect);
            }
        }

        @Override // p005cn.bingoogolapple.baseadapter.BGADivider.SimpleDelegate, p005cn.bingoogolapple.baseadapter.BGADivider.Delegate
        public void drawVertical(BGADivider bGADivider, Canvas canvas, int i, int i2, int i3, int i4, int i5) {
            if (!isCategoryFistItem(i4)) {
                bGADivider.drawVerticalDivider(canvas, i, i2, i3);
            } else if (i4 != getFirstVisibleItemPosition() || i5 <= 1) {
                drawCategory(bGADivider, canvas, i, i2, i3, getCategoryName(i4));
            }
        }

        @Override // p005cn.bingoogolapple.baseadapter.BGADivider.SimpleDelegate, p005cn.bingoogolapple.baseadapter.BGADivider.Delegate
        public void drawOverVertical(BGADivider bGADivider, Canvas canvas, int i, int i2, int i3, int i4, int i5) {
            if (i4 == getFirstVisibleItemPosition() + 1) {
                int i6 = this.mCategoryHeight;
                int i7 = (i6 * 2) - i3;
                if (i7 > 0 && isCategoryFistItem(i4)) {
                    i6 -= i7;
                }
                drawOverCategory(bGADivider, canvas, i, i2, i6, getCategoryName(getFirstVisibleItemPosition()));
            }
        }

        protected void drawOverCategory(BGADivider bGADivider, Canvas canvas, int i, int i2, int i3, String str) {
            drawCategory(bGADivider, canvas, i, i2, i3, str);
        }

        protected void drawCategory(BGADivider bGADivider, Canvas canvas, int i, int i2, int i3, String str) {
            this.mPaint.setColor(this.mCategoryBackgroundColor);
            float f = i3;
            canvas.drawRect(i - bGADivider.getMarginLeft(), i3 - this.mCategoryHeight, i2 + bGADivider.getMarginRight(), f, this.mPaint);
            this.mPaint.setColor(this.mCategoryTextColor);
            canvas.drawText(str, 0, str.length(), this.mCategoryPaddingLeft, f - this.mCategoryTextOffset, this.mPaint);
        }

        public int getCategoryHeight() {
            return this.mCategoryHeight;
        }
    }
}
