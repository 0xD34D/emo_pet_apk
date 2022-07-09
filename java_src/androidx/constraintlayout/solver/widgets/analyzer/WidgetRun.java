package androidx.constraintlayout.solver.widgets.analyzer;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
/* loaded from: classes.dex */
public abstract class WidgetRun implements Dependency {
    protected ConstraintWidget.DimensionBehaviour dimensionBehavior;
    public int matchConstraintsType;
    RunGroup runGroup;
    ConstraintWidget widget;
    DimensionDependency dimension = new DimensionDependency(this);
    public int orientation = 0;
    boolean resolved = false;
    public DependencyNode start = new DependencyNode(this);
    public DependencyNode end = new DependencyNode(this);
    protected RunType mRunType = RunType.NONE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void apply();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void applyToWidget();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void clear();

    abstract void reset();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean supportsWrapComputation();

    @Override // androidx.constraintlayout.solver.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
    }

    protected void updateRunEnd(Dependency dependency) {
    }

    protected void updateRunStart(Dependency dependency) {
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.widget = constraintWidget;
    }

    public boolean isDimensionResolved() {
        return this.dimension.resolved;
    }

    public boolean isCenterConnection() {
        int size = this.start.targets.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            if (this.start.targets.get(i2).run != this) {
                i++;
            }
        }
        int size2 = this.end.targets.size();
        for (int i3 = 0; i3 < size2; i3++) {
            if (this.end.targets.get(i3).run != this) {
                i++;
            }
        }
        return i >= 2;
    }

    public long wrapSize(int i) {
        int i2;
        if (!this.dimension.resolved) {
            return 0L;
        }
        long j = this.dimension.value;
        if (isCenterConnection()) {
            i2 = this.start.margin - this.end.margin;
        } else if (i != 0) {
            return j - this.end.margin;
        } else {
            i2 = this.start.margin;
        }
        return j + i2;
    }

    protected final DependencyNode getTarget(ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor.mTarget.mOwner;
        int i = C01701.f44x4c44d048[constraintAnchor.mTarget.mType.ordinal()];
        if (i == 1) {
            return constraintWidget.horizontalRun.start;
        }
        if (i == 2) {
            return constraintWidget.horizontalRun.end;
        }
        if (i == 3) {
            return constraintWidget.verticalRun.start;
        }
        if (i == 4) {
            return constraintWidget.verticalRun.baseline;
        }
        if (i != 5) {
            return null;
        }
        return constraintWidget.verticalRun.end;
    }

    /* renamed from: androidx.constraintlayout.solver.widgets.analyzer.WidgetRun$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C01701 {

        /* renamed from: $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type */
        static final /* synthetic */ int[] f44x4c44d048;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            f44x4c44d048 = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f44x4c44d048[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f44x4c44d048[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f44x4c44d048[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f44x4c44d048[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    protected void updateRunCenter(Dependency dependency, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        DependencyNode target = getTarget(constraintAnchor);
        DependencyNode target2 = getTarget(constraintAnchor2);
        if (target.resolved && target2.resolved) {
            int margin = target.value + constraintAnchor.getMargin();
            int margin2 = target2.value - constraintAnchor2.getMargin();
            int i2 = margin2 - margin;
            if (!this.dimension.resolved && this.dimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                resolveDimension(i, i2);
            }
            if (this.dimension.resolved) {
                if (this.dimension.value == i2) {
                    this.start.resolve(margin);
                    this.end.resolve(margin2);
                    return;
                }
                ConstraintWidget constraintWidget = this.widget;
                float horizontalBiasPercent = i == 0 ? constraintWidget.getHorizontalBiasPercent() : constraintWidget.getVerticalBiasPercent();
                if (target == target2) {
                    margin = target.value;
                    margin2 = target2.value;
                    horizontalBiasPercent = 0.5f;
                }
                this.start.resolve((int) (margin + 0.5f + (((margin2 - margin) - this.dimension.value) * horizontalBiasPercent)));
                this.end.resolve(this.start.value + this.dimension.value);
            }
        }
    }

    private void resolveDimension(int i, int i2) {
        int i3;
        int i4 = this.matchConstraintsType;
        if (i4 == 0) {
            this.dimension.resolve(getLimitedDimension(i2, i));
        } else if (i4 == 1) {
            this.dimension.resolve(Math.min(getLimitedDimension(this.dimension.wrapValue, i), i2));
        } else if (i4 == 2) {
            ConstraintWidget parent = this.widget.getParent();
            if (parent != null) {
                WidgetRun widgetRun = i == 0 ? parent.horizontalRun : parent.verticalRun;
                if (widgetRun.dimension.resolved) {
                    ConstraintWidget constraintWidget = this.widget;
                    this.dimension.resolve(getLimitedDimension((int) ((widgetRun.dimension.value * (i == 0 ? constraintWidget.mMatchConstraintPercentWidth : constraintWidget.mMatchConstraintPercentHeight)) + 0.5f), i));
                }
            }
        } else if (i4 == 3) {
            if (this.widget.horizontalRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.widget.horizontalRun.matchConstraintsType != 3 || this.widget.verticalRun.dimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.widget.verticalRun.matchConstraintsType != 3) {
                ConstraintWidget constraintWidget2 = this.widget;
                WidgetRun widgetRun2 = i == 0 ? constraintWidget2.verticalRun : constraintWidget2.horizontalRun;
                if (widgetRun2.dimension.resolved) {
                    float dimensionRatio = this.widget.getDimensionRatio();
                    if (i == 1) {
                        i3 = (int) ((widgetRun2.dimension.value / dimensionRatio) + 0.5f);
                    } else {
                        i3 = (int) ((dimensionRatio * widgetRun2.dimension.value) + 0.5f);
                    }
                    this.dimension.resolve(i3);
                }
            }
        }
    }

    protected final int getLimitedDimension(int i, int i2) {
        int i3;
        if (i2 == 0) {
            int i4 = this.widget.mMatchConstraintMaxWidth;
            i3 = Math.max(this.widget.mMatchConstraintMinWidth, i);
            if (i4 > 0) {
                i3 = Math.min(i4, i);
            }
            if (i3 == i) {
                return i;
            }
        } else {
            int i5 = this.widget.mMatchConstraintMaxHeight;
            i3 = Math.max(this.widget.mMatchConstraintMinHeight, i);
            if (i5 > 0) {
                i3 = Math.min(i5, i);
            }
            if (i3 == i) {
                return i;
            }
        }
        return i3;
    }

    protected final DependencyNode getTarget(ConstraintAnchor constraintAnchor, int i) {
        if (constraintAnchor.mTarget == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor.mTarget.mOwner;
        WidgetRun widgetRun = i == 0 ? constraintWidget.horizontalRun : constraintWidget.verticalRun;
        int i2 = C01701.f44x4c44d048[constraintAnchor.mTarget.mType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        return null;
                    }
                }
            }
            return widgetRun.end;
        }
        return widgetRun.start;
    }

    protected final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i) {
        dependencyNode.targets.add(dependencyNode2);
        dependencyNode.margin = i;
        dependencyNode2.dependencies.add(dependencyNode);
    }

    protected final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i, DimensionDependency dimensionDependency) {
        dependencyNode.targets.add(dependencyNode2);
        dependencyNode.targets.add(this.dimension);
        dependencyNode.marginFactor = i;
        dependencyNode.marginDependency = dimensionDependency;
        dependencyNode2.dependencies.add(dependencyNode);
        dimensionDependency.dependencies.add(dependencyNode);
    }

    public long getWrapDimension() {
        if (this.dimension.resolved) {
            return this.dimension.value;
        }
        return 0L;
    }

    public boolean isResolved() {
        return this.resolved;
    }
}
