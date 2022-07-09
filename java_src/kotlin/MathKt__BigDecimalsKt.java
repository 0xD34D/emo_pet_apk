package kotlin;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BigDecimals.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\u0015\u0010\t\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0087\n\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000bH\u0087\b\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0087\b\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000eH\u0087\b\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\f\u001a\u00020\rH\u0087\b\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u000fH\u0087\b\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\f\u001a\u00020\rH\u0087\b\u001a\r\u0010\n\u001a\u00020\u0001*\u00020\u0010H\u0087\b\u001a\u0015\u0010\n\u001a\u00020\u0001*\u00020\u00102\u0006\u0010\f\u001a\u00020\rH\u0087\b\u001a\r\u0010\u0011\u001a\u00020\u0001*\u00020\u0001H\u0087\n¨\u0006\u0012"}, m35d2 = {"dec", "Ljava/math/BigDecimal;", "div", "other", "inc", "minus", "mod", "plus", "rem", "times", "toBigDecimal", "", "mathContext", "Ljava/math/MathContext;", "", "", "", "unaryMinus", "kotlin-stdlib"}, m34k = 5, m33mv = {1, 1, 13}, m31xi = 1, m30xs = "kotlin/MathKt")
/* loaded from: classes.dex */
class MathKt__BigDecimalsKt {
    private static final BigDecimal plus(BigDecimal receiver$0, BigDecimal bigDecimal) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        BigDecimal add = receiver$0.add(bigDecimal);
        Intrinsics.checkExpressionValueIsNotNull(add, "this.add(other)");
        return add;
    }

    private static final BigDecimal minus(BigDecimal receiver$0, BigDecimal bigDecimal) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        BigDecimal subtract = receiver$0.subtract(bigDecimal);
        Intrinsics.checkExpressionValueIsNotNull(subtract, "this.subtract(other)");
        return subtract;
    }

    private static final BigDecimal times(BigDecimal receiver$0, BigDecimal bigDecimal) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        BigDecimal multiply = receiver$0.multiply(bigDecimal);
        Intrinsics.checkExpressionValueIsNotNull(multiply, "this.multiply(other)");
        return multiply;
    }

    private static final BigDecimal div(BigDecimal receiver$0, BigDecimal bigDecimal) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        BigDecimal divide = receiver$0.divide(bigDecimal, RoundingMode.HALF_EVEN);
        Intrinsics.checkExpressionValueIsNotNull(divide, "this.divide(other, RoundingMode.HALF_EVEN)");
        return divide;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Use rem(other) instead", replaceWith = @ReplaceWith(expression = "rem(other)", imports = {}))
    private static final BigDecimal mod(BigDecimal receiver$0, BigDecimal bigDecimal) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        BigDecimal remainder = receiver$0.remainder(bigDecimal);
        Intrinsics.checkExpressionValueIsNotNull(remainder, "this.remainder(other)");
        return remainder;
    }

    private static final BigDecimal rem(BigDecimal receiver$0, BigDecimal bigDecimal) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        BigDecimal remainder = receiver$0.remainder(bigDecimal);
        Intrinsics.checkExpressionValueIsNotNull(remainder, "this.remainder(other)");
        return remainder;
    }

    private static final BigDecimal unaryMinus(BigDecimal receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        BigDecimal negate = receiver$0.negate();
        Intrinsics.checkExpressionValueIsNotNull(negate, "this.negate()");
        return negate;
    }

    private static final BigDecimal inc(BigDecimal receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        BigDecimal add = receiver$0.add(BigDecimal.ONE);
        Intrinsics.checkExpressionValueIsNotNull(add, "this.add(BigDecimal.ONE)");
        return add;
    }

    private static final BigDecimal dec(BigDecimal receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        BigDecimal subtract = receiver$0.subtract(BigDecimal.ONE);
        Intrinsics.checkExpressionValueIsNotNull(subtract, "this.subtract(BigDecimal.ONE)");
        return subtract;
    }

    private static final BigDecimal toBigDecimal(int i) {
        BigDecimal valueOf = BigDecimal.valueOf(i);
        Intrinsics.checkExpressionValueIsNotNull(valueOf, "BigDecimal.valueOf(this.toLong())");
        return valueOf;
    }

    private static final BigDecimal toBigDecimal(int i, MathContext mathContext) {
        return new BigDecimal(i, mathContext);
    }

    private static final BigDecimal toBigDecimal(long j) {
        BigDecimal valueOf = BigDecimal.valueOf(j);
        Intrinsics.checkExpressionValueIsNotNull(valueOf, "BigDecimal.valueOf(this)");
        return valueOf;
    }

    private static final BigDecimal toBigDecimal(long j, MathContext mathContext) {
        return new BigDecimal(j, mathContext);
    }

    private static final BigDecimal toBigDecimal(float f) {
        return new BigDecimal(String.valueOf(f));
    }

    private static final BigDecimal toBigDecimal(float f, MathContext mathContext) {
        return new BigDecimal(String.valueOf(f), mathContext);
    }

    private static final BigDecimal toBigDecimal(double d) {
        return new BigDecimal(String.valueOf(d));
    }

    private static final BigDecimal toBigDecimal(double d, MathContext mathContext) {
        return new BigDecimal(String.valueOf(d), mathContext);
    }
}
