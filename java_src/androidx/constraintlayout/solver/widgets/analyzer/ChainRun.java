package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ChainRun extends WidgetRun {
    private int chainStyle;
    ArrayList<WidgetRun> widgets = new ArrayList<>();

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.orientation = i;
        build();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        String sb2 = sb.toString();
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            sb2 = ((sb2 + "<") + it.next()) + "> ";
        }
        return sb2;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    boolean supportsWrapComputation() {
        int size = this.widgets.size();
        for (int i = 0; i < size; i++) {
            if (!this.widgets.get(i).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.widgets.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            WidgetRun widgetRun = this.widgets.get(i);
            j = j + widgetRun.start.margin + widgetRun.getWrapDimension() + widgetRun.end.margin;
        }
        return j;
    }

    private void build() {
        ConstraintWidget constraintWidget = this.widget;
        constraintWidget = constraintWidget.getPreviousChainMember(this.orientation);
        while (constraintWidget != null) {
            constraintWidget = constraintWidget.getPreviousChainMember(this.orientation);
        }
        this.widget = constraintWidget;
        this.widgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (nextChainMember != null) {
            this.widgets.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            WidgetRun next = it.next();
            if (this.orientation == 0) {
                next.widget.horizontalChainRun = this;
            } else if (this.orientation == 1) {
                next.widget.verticalChainRun = this;
            }
        }
        if ((this.orientation == 0 && ((ConstraintWidgetContainer) this.widget.getParent()).isRtl()) && this.widgets.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.widgets;
            this.widget = arrayList.get(arrayList.size() - 1).widget;
        }
        this.chainStyle = this.orientation == 0 ? this.widget.getHorizontalChainStyle() : this.widget.getVerticalChainStyle();
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    void clear() {
        this.runGroup = null;
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:270:0x040e, code lost:
        r3 = r3 - r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00cf, code lost:
        if (r2.dimension.resolved != false) goto L_0x00d1;
     */
    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun, androidx.constraintlayout.solver.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void update(Dependency dependency) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        float f;
        int i6;
        int i7;
        int i8;
        float f2;
        int i9;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget parent = this.widget.getParent();
            boolean isRtl = (parent == null || !(parent instanceof ConstraintWidgetContainer)) ? false : ((ConstraintWidgetContainer) parent).isRtl();
            int i10 = this.end.value - this.start.value;
            int size = this.widgets.size();
            int i11 = 0;
            while (true) {
                i = -1;
                i2 = 8;
                if (i11 >= size) {
                    i11 = -1;
                    break;
                }
                if (this.widgets.get(i11).widget.getVisibility() != 8) {
                    break;
                }
                i11++;
            }
            int i12 = size - 1;
            int i13 = i12;
            while (true) {
                if (i13 < 0) {
                    break;
                }
                if (this.widgets.get(i13).widget.getVisibility() != 8) {
                    i = i13;
                    break;
                }
                i13--;
            }
            int i14 = 0;
            while (i14 < 2) {
                int i15 = 0;
                i4 = 0;
                i5 = 0;
                int i16 = 0;
                f = 0.0f;
                while (i15 < size) {
                    WidgetRun widgetRun = this.widgets.get(i15);
                    if (widgetRun.widget.getVisibility() != i2) {
                        i16++;
                        if (i15 > 0 && i15 >= i11) {
                            i4 += widgetRun.start.margin;
                        }
                        int i17 = widgetRun.dimension.value;
                        boolean z = widgetRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (!z) {
                            if (widgetRun.matchConstraintsType == 1 && i14 == 0) {
                                i17 = widgetRun.dimension.wrapValue;
                                i5++;
                            }
                            z = true;
                        } else if (this.orientation != 0 || widgetRun.widget.horizontalRun.dimension.resolved) {
                            if (this.orientation == 1 && !widgetRun.widget.verticalRun.dimension.resolved) {
                                return;
                            }
                        } else {
                            return;
                        }
                        if (!z) {
                            i5++;
                            float f3 = widgetRun.widget.mWeight[this.orientation];
                            if (f3 >= 0.0f) {
                                f += f3;
                            }
                        } else {
                            i4 += i17;
                        }
                        if (i15 < i12 && i15 < i) {
                            i4 += -widgetRun.end.margin;
                        }
                    }
                    i15++;
                    i2 = 8;
                }
                if (i4 < i10 || i5 == 0) {
                    i3 = i16;
                    break;
                } else {
                    i14++;
                    i2 = 8;
                }
            }
            i3 = 0;
            i4 = 0;
            i5 = 0;
            f = 0.0f;
            int i18 = this.start.value;
            if (isRtl) {
                i18 = this.end.value;
            }
            if (i4 > i10) {
                i18 = isRtl ? i18 + ((int) (((i4 - i10) / 2.0f) + 0.5f)) : i18 - ((int) (((i4 - i10) / 2.0f) + 0.5f));
            }
            if (i5 > 0) {
                float f4 = i10 - i4;
                int i19 = (int) ((f4 / i5) + 0.5f);
                int i20 = 0;
                int i21 = 0;
                while (i20 < size) {
                    WidgetRun widgetRun2 = this.widgets.get(i20);
                    if (widgetRun2.widget.getVisibility() != 8 && widgetRun2.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && !widgetRun2.dimension.resolved) {
                        int i22 = f > 0.0f ? (int) (((widgetRun2.widget.mWeight[this.orientation] * f4) / f) + 0.5f) : i19;
                        if (this.orientation == 0) {
                            int i23 = widgetRun2.widget.mMatchConstraintMaxWidth;
                            f4 = f4;
                            i4 = i4;
                            i18 = i18;
                            int max = Math.max(widgetRun2.widget.mMatchConstraintMinWidth, widgetRun2.matchConstraintsType == 1 ? Math.min(i22, widgetRun2.dimension.wrapValue) : i22);
                            if (i23 > 0) {
                                max = Math.min(i23, max);
                            }
                            if (max != i22) {
                                i21++;
                                i22 = max;
                            }
                        } else {
                            i18 = i18;
                            f4 = f4;
                            i4 = i4;
                            int i24 = widgetRun2.widget.mMatchConstraintMaxHeight;
                            int max2 = Math.max(widgetRun2.widget.mMatchConstraintMinHeight, widgetRun2.matchConstraintsType == 1 ? Math.min(i22, widgetRun2.dimension.wrapValue) : i22);
                            if (i24 > 0) {
                                max2 = Math.min(i24, max2);
                            }
                            if (max2 != i22) {
                                i21++;
                                i22 = max2;
                            }
                        }
                        widgetRun2.dimension.resolve(i22);
                    } else {
                        i18 = i18;
                        f4 = f4;
                        i4 = i4;
                    }
                    i20++;
                    i19 = i19;
                }
                i6 = i18;
                if (i21 > 0) {
                    i5 -= i21;
                    int i25 = 0;
                    for (int i26 = 0; i26 < size; i26++) {
                        WidgetRun widgetRun3 = this.widgets.get(i26);
                        if (widgetRun3.widget.getVisibility() != 8) {
                            if (i26 > 0 && i26 >= i11) {
                                i25 += widgetRun3.start.margin;
                            }
                            i25 += widgetRun3.dimension.value;
                            if (i26 < i12 && i26 < i) {
                                i25 += -widgetRun3.end.margin;
                            }
                        }
                    }
                    i4 = i25;
                } else {
                    i4 = i4;
                }
                i7 = 2;
                if (this.chainStyle == 2 && i21 == 0) {
                    i8 = 0;
                    this.chainStyle = 0;
                } else {
                    i8 = 0;
                }
            } else {
                i6 = i18;
                i8 = 0;
                i7 = 2;
            }
            if (i4 > i10) {
                this.chainStyle = i7;
            }
            if (i3 > 0 && i5 == 0 && i11 == i) {
                this.chainStyle = i7;
            }
            int i27 = this.chainStyle;
            if (i27 == 1) {
                if (i3 > 1) {
                    i9 = (i10 - i4) / (i3 - 1);
                } else {
                    i9 = i3 == 1 ? (i10 - i4) / 2 : i8;
                }
                if (i5 > 0) {
                    i9 = i8;
                }
                int i28 = i6;
                for (int i29 = i8; i29 < size; i29++) {
                    WidgetRun widgetRun4 = this.widgets.get(isRtl ? size - (i29 + 1) : i29);
                    if (widgetRun4.widget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i28);
                        widgetRun4.end.resolve(i28);
                    } else {
                        if (i29 > 0) {
                            i28 = isRtl ? i28 - i9 : i28 + i9;
                        }
                        if (i29 > 0 && i29 >= i11) {
                            if (isRtl) {
                                i28 -= widgetRun4.start.margin;
                            } else {
                                i28 += widgetRun4.start.margin;
                            }
                        }
                        if (isRtl) {
                            widgetRun4.end.resolve(i28);
                        } else {
                            widgetRun4.start.resolve(i28);
                        }
                        int i30 = widgetRun4.dimension.value;
                        if (widgetRun4.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i30 = widgetRun4.dimension.wrapValue;
                        }
                        i28 = isRtl ? i28 - i30 : i28 + i30;
                        if (isRtl) {
                            widgetRun4.start.resolve(i28);
                        } else {
                            widgetRun4.end.resolve(i28);
                        }
                        widgetRun4.resolved = true;
                        if (i29 < i12 && i29 < i) {
                            if (isRtl) {
                                i28 -= -widgetRun4.end.margin;
                            } else {
                                i28 += -widgetRun4.end.margin;
                            }
                        }
                    }
                }
            } else if (i27 == 0) {
                int i31 = (i10 - i4) / (i3 + 1);
                if (i5 > 0) {
                    i31 = i8;
                }
                int i32 = i6;
                for (int i33 = i8; i33 < size; i33++) {
                    WidgetRun widgetRun5 = this.widgets.get(isRtl ? size - (i33 + 1) : i33);
                    if (widgetRun5.widget.getVisibility() == 8) {
                        widgetRun5.start.resolve(i32);
                        widgetRun5.end.resolve(i32);
                    } else {
                        int i34 = isRtl ? i32 - i31 : i32 + i31;
                        if (i33 > 0 && i33 >= i11) {
                            if (isRtl) {
                                i34 -= widgetRun5.start.margin;
                            } else {
                                i34 += widgetRun5.start.margin;
                            }
                        }
                        if (isRtl) {
                            widgetRun5.end.resolve(i34);
                        } else {
                            widgetRun5.start.resolve(i34);
                        }
                        int i35 = widgetRun5.dimension.value;
                        if (widgetRun5.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            i35 = Math.min(i35, widgetRun5.dimension.wrapValue);
                        }
                        i32 = isRtl ? i34 - i35 : i34 + i35;
                        if (isRtl) {
                            widgetRun5.start.resolve(i32);
                        } else {
                            widgetRun5.end.resolve(i32);
                        }
                        if (i33 < i12 && i33 < i) {
                            if (isRtl) {
                                i32 -= -widgetRun5.end.margin;
                            } else {
                                i32 += -widgetRun5.end.margin;
                            }
                        }
                    }
                }
            } else if (i27 == 2) {
                if (this.orientation == 0) {
                    f2 = this.widget.getHorizontalBiasPercent();
                } else {
                    f2 = this.widget.getVerticalBiasPercent();
                }
                if (isRtl) {
                    f2 = 1.0f - f2;
                }
                int i36 = (int) (((i10 - i4) * f2) + 0.5f);
                if (i36 < 0 || i5 > 0) {
                    i36 = i8;
                }
                int i37 = isRtl ? i6 - i36 : i6 + i36;
                for (int i38 = i8; i38 < size; i38++) {
                    WidgetRun widgetRun6 = this.widgets.get(isRtl ? size - (i38 + 1) : i38);
                    if (widgetRun6.widget.getVisibility() == 8) {
                        widgetRun6.start.resolve(i37);
                        widgetRun6.end.resolve(i37);
                    } else {
                        if (i38 > 0 && i38 >= i11) {
                            if (isRtl) {
                                i37 -= widgetRun6.start.margin;
                            } else {
                                i37 += widgetRun6.start.margin;
                            }
                        }
                        if (isRtl) {
                            widgetRun6.end.resolve(i37);
                        } else {
                            widgetRun6.start.resolve(i37);
                        }
                        int i39 = widgetRun6.dimension.value;
                        if (widgetRun6.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                            i39 = widgetRun6.dimension.wrapValue;
                        }
                        i37 += i39;
                        if (isRtl) {
                            widgetRun6.start.resolve(i37);
                        } else {
                            widgetRun6.end.resolve(i37);
                        }
                        if (i38 < i12 && i38 < i) {
                            if (isRtl) {
                                i37 -= -widgetRun6.end.margin;
                            } else {
                                i37 += -widgetRun6.end.margin;
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i = 0; i < this.widgets.size(); i++) {
            this.widgets.get(i).applyToWidget();
        }
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i = 0; i < this.widgets.size(); i++) {
            WidgetRun widgetRun = this.widgets.get(i);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.widgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.widgets.get(size);
            if (widgetRun.widget.getVisibility() != 8) {
                return widgetRun.widget;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.solver.widgets.analyzer.WidgetRun
    void apply() {
        Iterator<WidgetRun> it = this.widgets.iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
        int size = this.widgets.size();
        if (size >= 1) {
            ConstraintWidget constraintWidget = this.widgets.get(0).widget;
            ConstraintWidget constraintWidget2 = this.widgets.get(size - 1).widget;
            if (this.orientation == 0) {
                ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
                ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
                DependencyNode target = getTarget(constraintAnchor, 0);
                int margin = constraintAnchor.getMargin();
                ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
                if (firstVisibleWidget != null) {
                    margin = firstVisibleWidget.mLeft.getMargin();
                }
                if (target != null) {
                    addTarget(this.start, target, margin);
                }
                DependencyNode target2 = getTarget(constraintAnchor2, 0);
                int margin2 = constraintAnchor2.getMargin();
                ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
                if (lastVisibleWidget != null) {
                    margin2 = lastVisibleWidget.mRight.getMargin();
                }
                if (target2 != null) {
                    addTarget(this.end, target2, -margin2);
                }
            } else {
                ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
                ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
                DependencyNode target3 = getTarget(constraintAnchor3, 1);
                int margin3 = constraintAnchor3.getMargin();
                ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
                if (firstVisibleWidget2 != null) {
                    margin3 = firstVisibleWidget2.mTop.getMargin();
                }
                if (target3 != null) {
                    addTarget(this.start, target3, margin3);
                }
                DependencyNode target4 = getTarget(constraintAnchor4, 1);
                int margin4 = constraintAnchor4.getMargin();
                ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
                if (lastVisibleWidget2 != null) {
                    margin4 = lastVisibleWidget2.mBottom.getMargin();
                }
                if (target4 != null) {
                    addTarget(this.end, target4, -margin4);
                }
            }
            this.start.updateDelegate = this;
            this.end.updateDelegate = this;
        }
    }
}
