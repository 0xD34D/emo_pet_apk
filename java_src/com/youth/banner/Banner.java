package com.youth.banner;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.CompositePageTransformer;
import androidx.viewpager2.widget.MarginPageTransformer;
import androidx.viewpager2.widget.ViewPager2;
import com.youth.banner.adapter.BannerAdapter;
import com.youth.banner.config.BannerConfig;
import com.youth.banner.config.IndicatorConfig;
import com.youth.banner.indicator.Indicator;
import com.youth.banner.listener.OnBannerListener;
import com.youth.banner.listener.OnPageChangeListener;
import com.youth.banner.transformer.MZScaleInTransformer;
import com.youth.banner.transformer.ScaleInTransformer;
import com.youth.banner.util.BannerLifecycleObserver;
import com.youth.banner.util.BannerLifecycleObserverAdapter;
import com.youth.banner.util.BannerUtils;
import com.youth.banner.util.LogUtils;
import com.youth.banner.util.ScrollSpeedManger;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.List;
/* loaded from: classes.dex */
public class Banner<T, BA extends BannerAdapter> extends FrameLayout implements BannerLifecycleObserver {
    public static final int HORIZONTAL = 0;
    public static final int INVALID_VALUE = -1;
    public static final int VERTICAL = 1;
    private int indicatorGravity;
    private int indicatorHeight;
    private int indicatorMargin;
    private int indicatorMarginBottom;
    private int indicatorMarginLeft;
    private int indicatorMarginRight;
    private int indicatorMarginTop;
    private int indicatorRadius;
    private int indicatorSpace;
    private boolean isIntercept;
    private BA mAdapter;
    private RecyclerView.AdapterDataObserver mAdapterDataObserver;
    private float mBannerRadius;
    private CompositePageTransformer mCompositePageTransformer;
    private long mDelayTime;
    private Indicator mIndicator;
    private boolean mIsAutoLoop;
    private boolean mIsInfiniteLoop;
    private boolean mIsViewPager2Drag;
    private AutoLoopTask mLoopTask;
    private OnPageChangeListener mOnPageChangeListener;
    private Banner<T, BA>.BannerOnPageChangeCallback mPageChangeCallback;
    private int mScrollTime;
    private int mStartPosition;
    private float mStartX;
    private float mStartY;
    private int mTouchSlop;
    private ViewPager2 mViewPager2;
    private int normalColor;
    private int normalWidth;
    private int selectedColor;
    private int selectedWidth;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Orientation {
    }

    public Banner(Context context) {
        this(context, null);
    }

    public Banner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Banner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIsInfiniteLoop = true;
        this.mIsAutoLoop = true;
        this.mDelayTime = 3000L;
        this.mScrollTime = BannerConfig.SCROLL_TIME;
        this.mStartPosition = 1;
        this.mBannerRadius = 0.0f;
        this.normalWidth = BannerConfig.INDICATOR_NORMAL_WIDTH;
        this.selectedWidth = BannerConfig.INDICATOR_SELECTED_WIDTH;
        this.normalColor = BannerConfig.INDICATOR_NORMAL_COLOR;
        this.selectedColor = BannerConfig.INDICATOR_SELECTED_COLOR;
        this.indicatorGravity = 1;
        this.indicatorHeight = BannerConfig.INDICATOR_HEIGHT;
        this.indicatorRadius = BannerConfig.INDICATOR_RADIUS;
        this.isIntercept = true;
        this.mAdapterDataObserver = new RecyclerView.AdapterDataObserver() { // from class: com.youth.banner.Banner.1
            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                if (Banner.this.getItemCount() <= 1) {
                    Banner.this.stop();
                } else {
                    Banner.this.start();
                }
                Banner.this.setIndicatorPageChange();
            }
        };
        init(context);
        initTypedArray(context, attributeSet);
    }

    private void init(Context context) {
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop() / 2;
        this.mCompositePageTransformer = new CompositePageTransformer();
        this.mPageChangeCallback = new BannerOnPageChangeCallback();
        this.mLoopTask = new AutoLoopTask(this);
        ViewPager2 viewPager2 = new ViewPager2(context);
        this.mViewPager2 = viewPager2;
        viewPager2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.mViewPager2.setOffscreenPageLimit(1);
        this.mViewPager2.registerOnPageChangeCallback(this.mPageChangeCallback);
        this.mViewPager2.setPageTransformer(this.mCompositePageTransformer);
        ScrollSpeedManger.reflectLayoutManager(this);
        addView(this.mViewPager2);
    }

    private void initTypedArray(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1635R.styleable.Banner);
            this.mBannerRadius = obtainStyledAttributes.getDimensionPixelSize(C1635R.styleable.Banner_banner_radius, 0);
            this.mDelayTime = obtainStyledAttributes.getInt(C1635R.styleable.Banner_delay_time, 3000);
            this.mIsAutoLoop = obtainStyledAttributes.getBoolean(C1635R.styleable.Banner_is_auto_loop, true);
            this.mIsInfiniteLoop = obtainStyledAttributes.getBoolean(C1635R.styleable.Banner_is_infinite_loop, true);
            this.normalWidth = obtainStyledAttributes.getDimensionPixelSize(C1635R.styleable.Banner_indicator_normal_width, BannerConfig.INDICATOR_NORMAL_WIDTH);
            this.selectedWidth = obtainStyledAttributes.getDimensionPixelSize(C1635R.styleable.Banner_indicator_selected_width, BannerConfig.INDICATOR_SELECTED_WIDTH);
            this.normalColor = obtainStyledAttributes.getColor(C1635R.styleable.Banner_indicator_normal_color, BannerConfig.INDICATOR_NORMAL_COLOR);
            this.selectedColor = obtainStyledAttributes.getColor(C1635R.styleable.Banner_indicator_selected_color, BannerConfig.INDICATOR_SELECTED_COLOR);
            this.indicatorGravity = obtainStyledAttributes.getInt(C1635R.styleable.Banner_indicator_gravity, 1);
            this.indicatorSpace = obtainStyledAttributes.getDimensionPixelSize(C1635R.styleable.Banner_indicator_space, 0);
            this.indicatorMargin = obtainStyledAttributes.getDimensionPixelSize(C1635R.styleable.Banner_indicator_margin, 0);
            this.indicatorMarginLeft = obtainStyledAttributes.getDimensionPixelSize(C1635R.styleable.Banner_indicator_marginLeft, 0);
            this.indicatorMarginTop = obtainStyledAttributes.getDimensionPixelSize(C1635R.styleable.Banner_indicator_marginTop, 0);
            this.indicatorMarginRight = obtainStyledAttributes.getDimensionPixelSize(C1635R.styleable.Banner_indicator_marginRight, 0);
            this.indicatorMarginBottom = obtainStyledAttributes.getDimensionPixelSize(C1635R.styleable.Banner_indicator_marginBottom, 0);
            this.indicatorHeight = obtainStyledAttributes.getDimensionPixelSize(C1635R.styleable.Banner_indicator_height, BannerConfig.INDICATOR_HEIGHT);
            this.indicatorRadius = obtainStyledAttributes.getDimensionPixelSize(C1635R.styleable.Banner_indicator_radius, BannerConfig.INDICATOR_RADIUS);
            setOrientation(obtainStyledAttributes.getInt(C1635R.styleable.Banner_banner_orientation, 0));
            setInfiniteLoop();
            obtainStyledAttributes.recycle();
        }
    }

    private void initIndicatorAttr() {
        int i = this.indicatorMargin;
        if (i != 0) {
            setIndicatorMargins(new IndicatorConfig.Margins(i));
        } else {
            int i2 = this.indicatorMarginLeft;
            if (!(i2 == 0 && this.indicatorMarginTop == 0 && this.indicatorMarginRight == 0 && this.indicatorMarginBottom == 0)) {
                setIndicatorMargins(new IndicatorConfig.Margins(i2, this.indicatorMarginTop, this.indicatorMarginRight, this.indicatorMarginBottom));
            }
        }
        int i3 = this.indicatorSpace;
        if (i3 > 0) {
            setIndicatorSpace(i3);
        }
        int i4 = this.indicatorGravity;
        if (i4 != 1) {
            setIndicatorGravity(i4);
        }
        int i5 = this.normalWidth;
        if (i5 > 0) {
            setIndicatorNormalWidth(i5);
        }
        int i6 = this.selectedWidth;
        if (i6 > 0) {
            setIndicatorSelectedWidth(i6);
        }
        int i7 = this.indicatorHeight;
        if (i7 > 0) {
            setIndicatorHeight(i7);
        }
        int i8 = this.indicatorRadius;
        if (i8 > 0) {
            setIndicatorRadius(i8);
        }
        setIndicatorNormalColor(this.normalColor);
        setIndicatorSelectedColor(this.selectedColor);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!getViewPager2().isUserInputEnabled()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 3 || actionMasked == 4) {
            start();
        } else if (actionMasked == 0) {
            stop();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001e, code lost:
        if (r0 != 3) goto L_0x0085;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!getViewPager2().isUserInputEnabled() || !this.isIntercept) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        boolean z = true;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    float abs = Math.abs(x - this.mStartX);
                    float abs2 = Math.abs(y - this.mStartY);
                    if (getViewPager2().getOrientation() == 0) {
                        if (abs <= this.mTouchSlop || abs <= abs2) {
                            z = false;
                        }
                        this.mIsViewPager2Drag = z;
                    } else {
                        if (abs2 <= this.mTouchSlop || abs2 <= abs) {
                            z = false;
                        }
                        this.mIsViewPager2Drag = z;
                    }
                    getParent().requestDisallowInterceptTouchEvent(this.mIsViewPager2Drag);
                }
            }
            getParent().requestDisallowInterceptTouchEvent(false);
        } else {
            this.mStartX = motionEvent.getX();
            this.mStartY = motionEvent.getY();
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.mBannerRadius > 0.0f) {
            Path path = new Path();
            RectF rectF = new RectF(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
            float f = this.mBannerRadius;
            path.addRoundRect(rectF, f, f, Path.Direction.CW);
            canvas.clipPath(path);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        start();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stop();
    }

    /* loaded from: classes.dex */
    public class BannerOnPageChangeCallback extends ViewPager2.OnPageChangeCallback {
        private boolean isScrolled;
        private int mTempPosition = -1;

        BannerOnPageChangeCallback() {
            Banner.this = r1;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i, float f, int i2) {
            int realPosition = BannerUtils.getRealPosition(Banner.this.isInfiniteLoop(), i, Banner.this.getRealCount());
            if (Banner.this.mOnPageChangeListener != null) {
                Banner.this.mOnPageChangeListener.onPageScrolled(realPosition, f, i2);
            }
            if (Banner.this.mIndicator != null) {
                Banner.this.mIndicator.onPageScrolled(realPosition, f, i2);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i) {
            if (this.isScrolled) {
                this.mTempPosition = i;
                int realPosition = BannerUtils.getRealPosition(Banner.this.isInfiniteLoop(), i, Banner.this.getRealCount());
                if (Banner.this.mOnPageChangeListener != null) {
                    Banner.this.mOnPageChangeListener.onPageSelected(realPosition);
                }
                if (Banner.this.mIndicator != null) {
                    Banner.this.mIndicator.onPageSelected(realPosition);
                }
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i) {
            if (i == 1 || i == 2) {
                this.isScrolled = true;
            } else if (i == 0) {
                this.isScrolled = false;
                if (this.mTempPosition != -1 && Banner.this.mIsInfiniteLoop) {
                    int i2 = this.mTempPosition;
                    if (i2 == 0) {
                        Banner banner = Banner.this;
                        banner.setCurrentItem(banner.getRealCount(), false);
                    } else if (i2 == Banner.this.getItemCount() - 1) {
                        Banner.this.setCurrentItem(1, false);
                    }
                }
            }
            if (Banner.this.mOnPageChangeListener != null) {
                Banner.this.mOnPageChangeListener.onPageScrollStateChanged(i);
            }
            if (Banner.this.mIndicator != null) {
                Banner.this.mIndicator.onPageScrollStateChanged(i);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class AutoLoopTask implements Runnable {
        private final WeakReference<Banner> reference;

        AutoLoopTask(Banner banner) {
            this.reference = new WeakReference<>(banner);
        }

        @Override // java.lang.Runnable
        public void run() {
            int itemCount;
            Banner banner = this.reference.get();
            if (banner != null && banner.mIsAutoLoop && (itemCount = banner.getItemCount()) != 0) {
                banner.setCurrentItem((banner.getCurrentItem() + 1) % itemCount);
                banner.postDelayed(banner.mLoopTask, banner.mDelayTime);
            }
        }
    }

    private void initIndicator() {
        if (this.mIndicator != null && getAdapter() != null) {
            if (this.mIndicator.getIndicatorConfig().isAttachToBanner()) {
                removeIndicator();
                addView(this.mIndicator.getIndicatorView());
            }
            initIndicatorAttr();
            setIndicatorPageChange();
        }
    }

    private void setInfiniteLoop() {
        if (!isInfiniteLoop()) {
            isAutoLoop(false);
        }
        setStartPosition(isInfiniteLoop() ? 1 : 0);
    }

    private void setRecyclerViewPadding(int i) {
        RecyclerView recyclerView = (RecyclerView) getViewPager2().getChildAt(0);
        if (getViewPager2().getOrientation() == 1) {
            recyclerView.setPadding(0, i, 0, i);
        } else {
            recyclerView.setPadding(i, 0, i, 0);
        }
        recyclerView.setClipToPadding(false);
    }

    public int getCurrentItem() {
        return getViewPager2().getCurrentItem();
    }

    public int getItemCount() {
        if (getAdapter() == null) {
            return 0;
        }
        return getAdapter().getItemCount();
    }

    public int getScrollTime() {
        return this.mScrollTime;
    }

    public boolean isInfiniteLoop() {
        return this.mIsInfiniteLoop;
    }

    public BA getAdapter() {
        if (this.mAdapter == null) {
            LogUtils.m42e(getContext().getString(C1635R.string.banner_adapter_use_error));
        }
        return this.mAdapter;
    }

    public ViewPager2 getViewPager2() {
        return this.mViewPager2;
    }

    public Indicator getIndicator() {
        if (this.mIndicator == null) {
            LogUtils.m42e(getContext().getString(C1635R.string.indicator_null_error));
        }
        return this.mIndicator;
    }

    public IndicatorConfig getIndicatorConfig() {
        if (getIndicator() != null) {
            return getIndicator().getIndicatorConfig();
        }
        return null;
    }

    public int getRealCount() {
        return getAdapter().getRealCount();
    }

    public Banner setIntercept(boolean z) {
        this.isIntercept = z;
        return this;
    }

    public Banner setCurrentItem(int i) {
        return setCurrentItem(i, true);
    }

    public Banner setCurrentItem(int i, boolean z) {
        getViewPager2().setCurrentItem(i, z);
        return this;
    }

    public Banner setIndicatorPageChange() {
        if (this.mIndicator != null) {
            this.mIndicator.onPageChanged(getRealCount(), BannerUtils.getRealPosition(isInfiniteLoop(), getCurrentItem(), getRealCount()));
        }
        return this;
    }

    public Banner removeIndicator() {
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            removeView(indicator.getIndicatorView());
        }
        return this;
    }

    public Banner setStartPosition(int i) {
        this.mStartPosition = i;
        return this;
    }

    public Banner setUserInputEnabled(boolean z) {
        getViewPager2().setUserInputEnabled(z);
        return this;
    }

    public Banner addPageTransformer(ViewPager2.PageTransformer pageTransformer) {
        this.mCompositePageTransformer.addTransformer(pageTransformer);
        return this;
    }

    public Banner setPageTransformer(ViewPager2.PageTransformer pageTransformer) {
        getViewPager2().setPageTransformer(pageTransformer);
        return this;
    }

    public Banner removeTransformer(ViewPager2.PageTransformer pageTransformer) {
        this.mCompositePageTransformer.removeTransformer(pageTransformer);
        return this;
    }

    public Banner addItemDecoration(RecyclerView.ItemDecoration itemDecoration) {
        getViewPager2().addItemDecoration(itemDecoration);
        return this;
    }

    public Banner addItemDecoration(RecyclerView.ItemDecoration itemDecoration, int i) {
        getViewPager2().addItemDecoration(itemDecoration, i);
        return this;
    }

    public Banner isAutoLoop(boolean z) {
        this.mIsAutoLoop = z;
        return this;
    }

    public Banner setDelayTime(long j) {
        this.mDelayTime = j;
        return this;
    }

    public Banner setScrollTime(int i) {
        this.mScrollTime = i;
        return this;
    }

    public Banner start() {
        if (this.mIsAutoLoop) {
            stop();
            postDelayed(this.mLoopTask, this.mDelayTime);
        }
        return this;
    }

    public Banner stop() {
        if (this.mIsAutoLoop) {
            removeCallbacks(this.mLoopTask);
        }
        return this;
    }

    public void destroy() {
        if (!(getViewPager2() == null || this.mPageChangeCallback == null)) {
            getViewPager2().unregisterOnPageChangeCallback(this.mPageChangeCallback);
            this.mPageChangeCallback = null;
        }
        stop();
    }

    public Banner setAdapter(BA ba) {
        if (ba != null) {
            this.mAdapter = ba;
            if (!isInfiniteLoop()) {
                this.mAdapter.setIncreaseCount(0);
            }
            this.mAdapter.registerAdapterDataObserver(this.mAdapterDataObserver);
            this.mViewPager2.setAdapter(ba);
            setCurrentItem(this.mStartPosition, false);
            initIndicator();
            return this;
        }
        throw new NullPointerException(getContext().getString(C1635R.string.banner_adapter_null_error));
    }

    public Banner setAdapter(BA ba, boolean z) {
        this.mIsInfiniteLoop = z;
        setInfiniteLoop();
        setAdapter(ba);
        return this;
    }

    public Banner setDatas(List<T> list) {
        if (getAdapter() != null) {
            getAdapter().setDatas(list);
            getAdapter().notifyDataSetChanged();
            setCurrentItem(this.mStartPosition, false);
            setIndicatorPageChange();
            start();
        }
        return this;
    }

    public Banner setOrientation(int i) {
        getViewPager2().setOrientation(i);
        return this;
    }

    public Banner setTouchSlop(int i) {
        this.mTouchSlop = i;
        return this;
    }

    public Banner setOnBannerListener(OnBannerListener onBannerListener) {
        if (getAdapter() != null) {
            getAdapter().setOnBannerListener(onBannerListener);
        }
        return this;
    }

    public Banner addOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.mOnPageChangeListener = onPageChangeListener;
        return this;
    }

    public Banner setBannerRound(float f) {
        this.mBannerRadius = f;
        return this;
    }

    public Banner setBannerRound2(float f) {
        BannerUtils.setBannerRound(this, f);
        return this;
    }

    public Banner setBannerGalleryEffect(int i, int i2) {
        return setBannerGalleryEffect(i, i2, 0.85f);
    }

    public Banner setBannerGalleryEffect(int i, int i2, float f) {
        if (i2 > 0) {
            addPageTransformer(new MarginPageTransformer((int) BannerUtils.dp2px(i2)));
        }
        if (f < 1.0f && f > 0.0f) {
            addPageTransformer(new ScaleInTransformer(f));
        }
        setRecyclerViewPadding((int) BannerUtils.dp2px(i + i2));
        return this;
    }

    public Banner setBannerGalleryMZ(int i) {
        return setBannerGalleryMZ(i, 0.88f);
    }

    public Banner setBannerGalleryMZ(int i, float f) {
        if (f < 1.0f && f > 0.0f) {
            addPageTransformer(new MZScaleInTransformer(f));
        }
        setRecyclerViewPadding((int) BannerUtils.dp2px(i));
        return this;
    }

    public Banner setIndicator(Indicator indicator) {
        return setIndicator(indicator, true);
    }

    public Banner setIndicator(Indicator indicator, boolean z) {
        removeIndicator();
        indicator.getIndicatorConfig().setAttachToBanner(z);
        this.mIndicator = indicator;
        initIndicator();
        return this;
    }

    public Banner setIndicatorSelectedColor(int i) {
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            indicator.getIndicatorConfig().setSelectedColor(i);
        }
        return this;
    }

    public Banner setIndicatorSelectedColorRes(int i) {
        setIndicatorSelectedColor(ContextCompat.getColor(getContext(), i));
        return this;
    }

    public Banner setIndicatorNormalColor(int i) {
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            indicator.getIndicatorConfig().setNormalColor(i);
        }
        return this;
    }

    public Banner setIndicatorNormalColorRes(int i) {
        setIndicatorNormalColor(ContextCompat.getColor(getContext(), i));
        return this;
    }

    public Banner setIndicatorGravity(int i) {
        Indicator indicator = this.mIndicator;
        if (indicator != null && indicator.getIndicatorConfig().isAttachToBanner()) {
            this.mIndicator.getIndicatorConfig().setGravity(i);
            this.mIndicator.getIndicatorView().postInvalidate();
        }
        return this;
    }

    public Banner setIndicatorSpace(int i) {
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            indicator.getIndicatorConfig().setIndicatorSpace(i);
        }
        return this;
    }

    public Banner setIndicatorMargins(IndicatorConfig.Margins margins) {
        Indicator indicator = this.mIndicator;
        if (indicator != null && indicator.getIndicatorConfig().isAttachToBanner()) {
            this.mIndicator.getIndicatorConfig().setMargins(margins);
            this.mIndicator.getIndicatorView().requestLayout();
        }
        return this;
    }

    public Banner setIndicatorWidth(int i, int i2) {
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            indicator.getIndicatorConfig().setNormalWidth(i);
            this.mIndicator.getIndicatorConfig().setSelectedWidth(i2);
        }
        return this;
    }

    public Banner setIndicatorNormalWidth(int i) {
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            indicator.getIndicatorConfig().setNormalWidth(i);
        }
        return this;
    }

    public Banner setIndicatorSelectedWidth(int i) {
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            indicator.getIndicatorConfig().setSelectedWidth(i);
        }
        return this;
    }

    public Banner<T, BA> setIndicatorRadius(int i) {
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            indicator.getIndicatorConfig().setRadius(i);
        }
        return this;
    }

    public Banner<T, BA> setIndicatorHeight(int i) {
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            indicator.getIndicatorConfig().setHeight(i);
        }
        return this;
    }

    public Banner addBannerLifecycleObserver(LifecycleOwner lifecycleOwner) {
        if (lifecycleOwner != null) {
            lifecycleOwner.getLifecycle().addObserver(new BannerLifecycleObserverAdapter(lifecycleOwner, this));
        }
        return this;
    }

    @Override // com.youth.banner.util.BannerLifecycleObserver
    public void onStart(LifecycleOwner lifecycleOwner) {
        start();
    }

    @Override // com.youth.banner.util.BannerLifecycleObserver
    public void onStop(LifecycleOwner lifecycleOwner) {
        stop();
    }

    @Override // com.youth.banner.util.BannerLifecycleObserver
    public void onDestroy(LifecycleOwner lifecycleOwner) {
        destroy();
    }
}
