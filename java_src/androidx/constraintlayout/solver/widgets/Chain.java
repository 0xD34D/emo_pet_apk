package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.ArrayRow;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Chain {
    private static final boolean DEBUG = false;

    Chain() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i) {
        ChainHead[] chainHeadArr;
        int i2;
        int i3;
        if (i == 0) {
            int i4 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i2 = i4;
            i3 = 0;
        } else {
            i3 = 2;
            i2 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            ChainHead chainHead = chainHeadArr[i5];
            chainHead.define();
            applyChainConstraints(constraintWidgetContainer, linearSystem, i, i3, chainHead);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
        if (r2.mHorizontalChainStyle == 2) goto L_0x004a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0048, code lost:
        if (r2.mVerticalChainStyle == 2) goto L_0x004a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x004a, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004c, code lost:
        r5 = false;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x04f0  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x051c  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0522  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x052b  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x053c  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x053f  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x03ca A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v63, types: [androidx.constraintlayout.solver.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r7v34 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i, int i2, ChainHead chainHead) {
        boolean z;
        boolean z2;
        boolean z3;
        SolverVariable solverVariable;
        ArrayList<ConstraintWidget> arrayList;
        SolverVariable solverVariable2;
        ConstraintWidget constraintWidget;
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        int i3;
        int i4;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        ConstraintAnchor constraintAnchor4;
        SolverVariable solverVariable5;
        SolverVariable solverVariable6;
        ConstraintAnchor constraintAnchor5;
        float f;
        int size;
        int i5;
        int i6;
        ConstraintWidget constraintWidget2 = chainHead.mFirst;
        ConstraintWidget constraintWidget3 = chainHead.mLast;
        ConstraintWidget constraintWidget4 = chainHead.mFirstVisibleWidget;
        ConstraintWidget constraintWidget5 = chainHead.mLastVisibleWidget;
        ConstraintWidget constraintWidget6 = chainHead.mHead;
        float f2 = chainHead.mTotalWeight;
        ConstraintWidget constraintWidget7 = chainHead.mFirstMatchConstraintWidget;
        ConstraintWidget constraintWidget8 = chainHead.mLastMatchConstraintWidget;
        boolean z4 = constraintWidgetContainer.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i == 0) {
            z3 = constraintWidget6.mHorizontalChainStyle == 0;
            z2 = constraintWidget6.mHorizontalChainStyle == 1;
        } else {
            z3 = constraintWidget6.mVerticalChainStyle == 0;
            z2 = constraintWidget6.mVerticalChainStyle == 1;
        }
        ConstraintWidget constraintWidget9 = constraintWidget2;
        boolean z5 = false;
        while (true) {
            solverVariable = null;
            if (z5) {
                break;
            }
            ConstraintAnchor constraintAnchor6 = constraintWidget9.mListAnchors[i2];
            int i7 = z ? 1 : 4;
            int margin = constraintAnchor6.getMargin();
            boolean z6 = constraintWidget9.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget9.mResolvedMatchConstraintDefault[i] == 0;
            if (!(constraintAnchor6.mTarget == null || constraintWidget9 == constraintWidget2)) {
                margin += constraintAnchor6.mTarget.getMargin();
            }
            if (!z || constraintWidget9 == constraintWidget2 || constraintWidget9 == constraintWidget4) {
                z2 = z2;
            } else {
                z2 = z2;
                i7 = 5;
            }
            if (constraintAnchor6.mTarget != null) {
                if (constraintWidget9 == constraintWidget4) {
                    z3 = z3;
                    constraintWidget6 = constraintWidget6;
                    linearSystem.addGreaterThan(constraintAnchor6.mSolverVariable, constraintAnchor6.mTarget.mSolverVariable, margin, 6);
                } else {
                    constraintWidget6 = constraintWidget6;
                    z3 = z3;
                    linearSystem.addGreaterThan(constraintAnchor6.mSolverVariable, constraintAnchor6.mTarget.mSolverVariable, margin, 8);
                }
                if (z6 && !z) {
                    i7 = 5;
                }
                linearSystem.addEquality(constraintAnchor6.mSolverVariable, constraintAnchor6.mTarget.mSolverVariable, margin, i7);
            } else {
                constraintWidget6 = constraintWidget6;
                z3 = z3;
            }
            if (z4) {
                if (constraintWidget9.getVisibility() == 8 || constraintWidget9.mListDimensionBehaviors[i] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i6 = 0;
                } else {
                    i6 = 0;
                    linearSystem.addGreaterThan(constraintWidget9.mListAnchors[i2 + 1].mSolverVariable, constraintWidget9.mListAnchors[i2].mSolverVariable, 0, 5);
                }
                linearSystem.addGreaterThan(constraintWidget9.mListAnchors[i2].mSolverVariable, constraintWidgetContainer.mListAnchors[i2].mSolverVariable, i6, 8);
            }
            ConstraintAnchor constraintAnchor7 = constraintWidget9.mListAnchors[i2 + 1].mTarget;
            if (constraintAnchor7 != null) {
                ?? r2 = constraintAnchor7.mOwner;
                if (r2.mListAnchors[i2].mTarget != null && r2.mListAnchors[i2].mTarget.mOwner == constraintWidget9) {
                    solverVariable = r2;
                }
            }
            if (solverVariable != null) {
                constraintWidget9 = solverVariable;
                z5 = z5;
            } else {
                z5 = true;
            }
            f2 = f2;
        }
        if (constraintWidget5 != null) {
            int i8 = i2 + 1;
            if (constraintWidget3.mListAnchors[i8].mTarget != null) {
                ConstraintAnchor constraintAnchor8 = constraintWidget5.mListAnchors[i8];
                if ((constraintWidget5.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget5.mResolvedMatchConstraintDefault[i] == 0) && !z && constraintAnchor8.mTarget.mOwner == constraintWidgetContainer) {
                    linearSystem.addEquality(constraintAnchor8.mSolverVariable, constraintAnchor8.mTarget.mSolverVariable, -constraintAnchor8.getMargin(), 5);
                } else if (z && constraintAnchor8.mTarget.mOwner == constraintWidgetContainer) {
                    linearSystem.addEquality(constraintAnchor8.mSolverVariable, constraintAnchor8.mTarget.mSolverVariable, -constraintAnchor8.getMargin(), 4);
                }
                linearSystem.addLowerThan(constraintAnchor8.mSolverVariable, constraintWidget3.mListAnchors[i8].mTarget.mSolverVariable, -constraintAnchor8.getMargin(), 6);
                if (z4) {
                    int i9 = i2 + 1;
                    linearSystem.addGreaterThan(constraintWidgetContainer.mListAnchors[i9].mSolverVariable, constraintWidget3.mListAnchors[i9].mSolverVariable, constraintWidget3.mListAnchors[i9].getMargin(), 8);
                }
                arrayList = chainHead.mWeightedMatchConstraintsWidgets;
                if (arrayList != null && (size = arrayList.size()) > 1) {
                    float f3 = (chainHead.mHasUndefinedWeights || chainHead.mHasComplexMatchWeights) ? f2 : chainHead.mWidgetsMatchCount;
                    float f4 = 0.0f;
                    float f5 = 0.0f;
                    ConstraintWidget constraintWidget10 = null;
                    i5 = 0;
                    while (i5 < size) {
                        ConstraintWidget constraintWidget11 = arrayList.get(i5);
                        float f6 = constraintWidget11.mWeight[i];
                        if (f6 < f4) {
                            if (chainHead.mHasComplexMatchWeights) {
                                linearSystem.addEquality(constraintWidget11.mListAnchors[i2 + 1].mSolverVariable, constraintWidget11.mListAnchors[i2].mSolverVariable, 0, 4);
                                arrayList = arrayList;
                                size = size;
                                i5++;
                                f4 = 0.0f;
                            } else {
                                f6 = 1.0f;
                                f4 = 0.0f;
                            }
                        }
                        if (f6 == f4) {
                            linearSystem.addEquality(constraintWidget11.mListAnchors[i2 + 1].mSolverVariable, constraintWidget11.mListAnchors[i2].mSolverVariable, 0, 8);
                            arrayList = arrayList;
                            size = size;
                            i5++;
                            f4 = 0.0f;
                        } else {
                            if (constraintWidget10 != null) {
                                SolverVariable solverVariable7 = constraintWidget10.mListAnchors[i2].mSolverVariable;
                                int i10 = i2 + 1;
                                SolverVariable solverVariable8 = constraintWidget10.mListAnchors[i10].mSolverVariable;
                                SolverVariable solverVariable9 = constraintWidget11.mListAnchors[i2].mSolverVariable;
                                arrayList = arrayList;
                                SolverVariable solverVariable10 = constraintWidget11.mListAnchors[i10].mSolverVariable;
                                size = size;
                                ArrayRow createRow = linearSystem.createRow();
                                createRow.createRowEqualMatchDimensions(f5, f3, f6, solverVariable7, solverVariable8, solverVariable9, solverVariable10);
                                linearSystem.addConstraint(createRow);
                            } else {
                                arrayList = arrayList;
                                size = size;
                            }
                            f5 = f6;
                            constraintWidget10 = constraintWidget11;
                            i5++;
                            f4 = 0.0f;
                        }
                    }
                }
                if (constraintWidget4 == null && (constraintWidget4 == constraintWidget5 || z)) {
                    ConstraintAnchor constraintAnchor9 = constraintWidget2.mListAnchors[i2];
                    int i11 = i2 + 1;
                    ConstraintAnchor constraintAnchor10 = constraintWidget3.mListAnchors[i11];
                    SolverVariable solverVariable11 = constraintAnchor9.mTarget != null ? constraintAnchor9.mTarget.mSolverVariable : null;
                    SolverVariable solverVariable12 = constraintAnchor10.mTarget != null ? constraintAnchor10.mTarget.mSolverVariable : null;
                    ConstraintAnchor constraintAnchor11 = constraintWidget4.mListAnchors[i2];
                    ConstraintAnchor constraintAnchor12 = constraintWidget5.mListAnchors[i11];
                    if (!(solverVariable11 == null || solverVariable12 == null)) {
                        if (i == 0) {
                            f = constraintWidget6.mHorizontalBiasPercent;
                        } else {
                            f = constraintWidget6.mVerticalBiasPercent;
                        }
                        linearSystem.addCentering(constraintAnchor11.mSolverVariable, solverVariable11, constraintAnchor11.getMargin(), f, solverVariable12, constraintAnchor12.mSolverVariable, constraintAnchor12.getMargin(), 7);
                    }
                } else if (z3 || constraintWidget4 == null) {
                    int i12 = 8;
                    if (z2 && constraintWidget4 != null) {
                        boolean z7 = chainHead.mWidgetsMatchCount <= 0 && chainHead.mWidgetsCount == chainHead.mWidgetsMatchCount;
                        constraintWidget = constraintWidget4;
                        constraintWidget = constraintWidget;
                        while (constraintWidget != null) {
                            constraintWidget = constraintWidget.mNextChainWidget[i];
                            while (constraintWidget != null && constraintWidget.getVisibility() == i12) {
                                constraintWidget = constraintWidget.mNextChainWidget[i];
                            }
                            if (constraintWidget == constraintWidget4 || constraintWidget == constraintWidget5 || constraintWidget == null) {
                                constraintWidget = constraintWidget;
                                i4 = i12;
                            } else {
                                ConstraintWidget constraintWidget12 = constraintWidget == constraintWidget5 ? null : constraintWidget;
                                ConstraintAnchor constraintAnchor13 = constraintWidget.mListAnchors[i2];
                                SolverVariable solverVariable13 = constraintAnchor13.mSolverVariable;
                                if (constraintAnchor13.mTarget != null) {
                                    SolverVariable solverVariable14 = constraintAnchor13.mTarget.mSolverVariable;
                                }
                                int i13 = i2 + 1;
                                SolverVariable solverVariable15 = constraintWidget.mListAnchors[i13].mSolverVariable;
                                int margin2 = constraintAnchor13.getMargin();
                                int margin3 = constraintWidget.mListAnchors[i13].getMargin();
                                if (constraintWidget12 != null) {
                                    constraintAnchor4 = constraintWidget12.mListAnchors[i2];
                                    solverVariable4 = constraintAnchor4.mSolverVariable;
                                    solverVariable3 = constraintAnchor4.mTarget != null ? constraintAnchor4.mTarget.mSolverVariable : null;
                                } else {
                                    constraintAnchor4 = constraintWidget5.mListAnchors[i2];
                                    solverVariable4 = constraintAnchor4 != null ? constraintAnchor4.mSolverVariable : null;
                                    solverVariable3 = constraintWidget.mListAnchors[i13].mSolverVariable;
                                }
                                if (constraintAnchor4 != null) {
                                    margin3 += constraintAnchor4.getMargin();
                                }
                                if (constraintWidget != null) {
                                    margin2 += constraintWidget.mListAnchors[i13].getMargin();
                                }
                                int i14 = z7 ? 8 : 4;
                                if (solverVariable13 == null || solverVariable15 == null || solverVariable4 == null || solverVariable3 == null) {
                                    constraintWidget = constraintWidget12;
                                    constraintWidget = constraintWidget;
                                    i4 = 8;
                                } else {
                                    constraintWidget = constraintWidget12;
                                    constraintWidget = constraintWidget;
                                    i4 = 8;
                                    linearSystem.addCentering(solverVariable13, solverVariable15, margin2, 0.5f, solverVariable4, solverVariable3, margin3, i14);
                                }
                            }
                            if (constraintWidget.getVisibility() != i4) {
                            }
                            i12 = i4;
                        }
                        ConstraintAnchor constraintAnchor14 = constraintWidget4.mListAnchors[i2];
                        constraintAnchor = constraintWidget2.mListAnchors[i2].mTarget;
                        int i15 = i2 + 1;
                        constraintAnchor2 = constraintWidget5.mListAnchors[i15];
                        constraintAnchor3 = constraintWidget3.mListAnchors[i15].mTarget;
                        if (constraintAnchor != null) {
                            i3 = 5;
                        } else if (constraintWidget4 != constraintWidget5) {
                            i3 = 5;
                            linearSystem.addEquality(constraintAnchor14.mSolverVariable, constraintAnchor.mSolverVariable, constraintAnchor14.getMargin(), 5);
                        } else {
                            i3 = 5;
                            if (constraintAnchor3 != null) {
                                linearSystem.addCentering(constraintAnchor14.mSolverVariable, constraintAnchor.mSolverVariable, constraintAnchor14.getMargin(), 0.5f, constraintAnchor2.mSolverVariable, constraintAnchor3.mSolverVariable, constraintAnchor2.getMargin(), 5);
                            }
                        }
                        if (!(constraintAnchor3 == null || constraintWidget4 == constraintWidget5)) {
                            linearSystem.addEquality(constraintAnchor2.mSolverVariable, constraintAnchor3.mSolverVariable, -constraintAnchor2.getMargin(), i3);
                        }
                    }
                } else {
                    boolean z8 = chainHead.mWidgetsMatchCount > 0 && chainHead.mWidgetsCount == chainHead.mWidgetsMatchCount;
                    ConstraintWidget constraintWidget13 = constraintWidget4;
                    ConstraintWidget constraintWidget14 = constraintWidget13;
                    while (constraintWidget13 != null) {
                        ConstraintWidget constraintWidget15 = constraintWidget13.mNextChainWidget[i];
                        while (constraintWidget15 != null && constraintWidget15.getVisibility() == 8) {
                            constraintWidget15 = constraintWidget15.mNextChainWidget[i];
                        }
                        if (constraintWidget15 != null || constraintWidget13 == constraintWidget5) {
                            ConstraintAnchor constraintAnchor15 = constraintWidget13.mListAnchors[i2];
                            SolverVariable solverVariable16 = constraintAnchor15.mSolverVariable;
                            SolverVariable solverVariable17 = constraintAnchor15.mTarget != null ? constraintAnchor15.mTarget.mSolverVariable : null;
                            if (constraintWidget14 != constraintWidget13) {
                                solverVariable17 = constraintWidget14.mListAnchors[i2 + 1].mSolverVariable;
                            } else if (constraintWidget13 == constraintWidget4 && constraintWidget14 == constraintWidget13) {
                                solverVariable17 = constraintWidget2.mListAnchors[i2].mTarget != null ? constraintWidget2.mListAnchors[i2].mTarget.mSolverVariable : null;
                            }
                            int margin4 = constraintAnchor15.getMargin();
                            int i16 = i2 + 1;
                            int margin5 = constraintWidget13.mListAnchors[i16].getMargin();
                            if (constraintWidget15 != null) {
                                constraintAnchor5 = constraintWidget15.mListAnchors[i2];
                                SolverVariable solverVariable18 = constraintAnchor5.mSolverVariable;
                                solverVariable5 = constraintWidget13.mListAnchors[i16].mSolverVariable;
                                solverVariable6 = solverVariable18;
                            } else {
                                constraintAnchor5 = constraintWidget3.mListAnchors[i16].mTarget;
                                solverVariable6 = constraintAnchor5 != null ? constraintAnchor5.mSolverVariable : null;
                                solverVariable5 = constraintWidget13.mListAnchors[i16].mSolverVariable;
                            }
                            if (constraintAnchor5 != null) {
                                margin5 += constraintAnchor5.getMargin();
                            }
                            if (constraintWidget14 != null) {
                                margin4 += constraintWidget14.mListAnchors[i16].getMargin();
                            }
                            if (!(solverVariable16 == null || solverVariable17 == null || solverVariable6 == null || solverVariable5 == null)) {
                                if (constraintWidget13 == constraintWidget4) {
                                    margin4 = constraintWidget4.mListAnchors[i2].getMargin();
                                }
                                if (constraintWidget13 == constraintWidget5) {
                                    margin5 = constraintWidget5.mListAnchors[i16].getMargin();
                                }
                                constraintWidget13 = constraintWidget15;
                                linearSystem.addCentering(solverVariable16, solverVariable17, margin4, 0.5f, solverVariable6, solverVariable5, margin5, z8 ? 8 : 5);
                                if (constraintWidget13.getVisibility() == 8) {
                                    constraintWidget14 = constraintWidget13;
                                }
                            }
                        }
                        constraintWidget13 = constraintWidget15;
                        if (constraintWidget13.getVisibility() == 8) {
                        }
                    }
                }
                if ((!z3 || z2) && constraintWidget4 != null && constraintWidget4 != constraintWidget5) {
                    ConstraintAnchor constraintAnchor16 = constraintWidget4.mListAnchors[i2];
                    int i17 = i2 + 1;
                    ConstraintAnchor constraintAnchor17 = constraintWidget5.mListAnchors[i17];
                    solverVariable2 = constraintAnchor16.mTarget == null ? constraintAnchor16.mTarget.mSolverVariable : null;
                    solverVariable = constraintAnchor17.mTarget == null ? constraintAnchor17.mTarget.mSolverVariable : null;
                    if (constraintWidget3 == constraintWidget5) {
                        ConstraintAnchor constraintAnchor18 = constraintWidget3.mListAnchors[i17];
                        if (constraintAnchor18.mTarget != null) {
                            solverVariable = constraintAnchor18.mTarget.mSolverVariable;
                        }
                    }
                    if (constraintWidget4 == constraintWidget5) {
                        constraintAnchor16 = constraintWidget4.mListAnchors[i2];
                        constraintAnchor17 = constraintWidget4.mListAnchors[i17];
                    }
                    if (solverVariable2 != null && solverVariable != null) {
                        int margin6 = constraintAnchor16.getMargin();
                        if (constraintWidget5 != null) {
                            constraintWidget3 = constraintWidget5;
                        }
                        linearSystem.addCentering(constraintAnchor16.mSolverVariable, solverVariable2, margin6, 0.5f, solverVariable, constraintAnchor17.mSolverVariable, constraintWidget3.mListAnchors[i17].getMargin(), 5);
                        return;
                    }
                }
                return;
            }
        }
        if (z4) {
        }
        arrayList = chainHead.mWeightedMatchConstraintsWidgets;
        if (arrayList != null) {
            if (chainHead.mHasUndefinedWeights) {
            }
            float f42 = 0.0f;
            float f52 = 0.0f;
            ConstraintWidget constraintWidget102 = null;
            i5 = 0;
            while (i5 < size) {
            }
        }
        if (constraintWidget4 == null) {
        }
        if (z3) {
        }
        int i122 = 8;
        if (z2) {
            if (chainHead.mWidgetsMatchCount <= 0) {
            }
            constraintWidget = constraintWidget4;
            constraintWidget = constraintWidget;
            while (constraintWidget != null) {
            }
            ConstraintAnchor constraintAnchor142 = constraintWidget4.mListAnchors[i2];
            constraintAnchor = constraintWidget2.mListAnchors[i2].mTarget;
            int i152 = i2 + 1;
            constraintAnchor2 = constraintWidget5.mListAnchors[i152];
            constraintAnchor3 = constraintWidget3.mListAnchors[i152].mTarget;
            if (constraintAnchor != null) {
            }
            if (constraintAnchor3 == null) {
                linearSystem.addEquality(constraintAnchor2.mSolverVariable, constraintAnchor3.mSolverVariable, -constraintAnchor2.getMargin(), i3);
            }
        }
        if (!z3) {
        }
        ConstraintAnchor constraintAnchor162 = constraintWidget4.mListAnchors[i2];
        int i172 = i2 + 1;
        ConstraintAnchor constraintAnchor172 = constraintWidget5.mListAnchors[i172];
        if (constraintAnchor162.mTarget == null) {
        }
        if (constraintAnchor172.mTarget == null) {
        }
        if (constraintWidget3 == constraintWidget5) {
        }
        if (constraintWidget4 == constraintWidget5) {
        }
        if (solverVariable2 != null) {
        }
    }
}
