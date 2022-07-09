package kotlin.text;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StringNumberConversionsJVM.kt */
@Metadata(m37bv = {1, 0, 3}, m36d1 = {"\u0000X\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\n\n\u0002\b\u0002\u001a4\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u0002H\u00010\u0005H\u0082\b¢\u0006\u0004\b\u0006\u0010\u0007\u001a\r\u0010\b\u001a\u00020\t*\u00020\u0003H\u0087\b\u001a\u0015\u0010\b\u001a\u00020\t*\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0087\b\u001a\u000e\u0010\f\u001a\u0004\u0018\u00010\t*\u00020\u0003H\u0007\u001a\u0016\u0010\f\u001a\u0004\u0018\u00010\t*\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0007\u001a\r\u0010\r\u001a\u00020\u000e*\u00020\u0003H\u0087\b\u001a\u0015\u0010\r\u001a\u00020\u000e*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\b\u001a\u000e\u0010\u0011\u001a\u0004\u0018\u00010\u000e*\u00020\u0003H\u0007\u001a\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u000e*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u001a\r\u0010\u0012\u001a\u00020\u0013*\u00020\u0003H\u0087\b\u001a\r\u0010\u0014\u001a\u00020\u0015*\u00020\u0003H\u0087\b\u001a\u0015\u0010\u0014\u001a\u00020\u0015*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\b\u001a\r\u0010\u0016\u001a\u00020\u0017*\u00020\u0003H\u0087\b\u001a\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0017*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u0019\u001a\r\u0010\u001a\u001a\u00020\u001b*\u00020\u0003H\u0087\b\u001a\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u001b*\u00020\u0003H\u0007¢\u0006\u0002\u0010\u001d\u001a\r\u0010\u001e\u001a\u00020\u0010*\u00020\u0003H\u0087\b\u001a\u0015\u0010\u001e\u001a\u00020\u0010*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\b\u001a\r\u0010\u001f\u001a\u00020 *\u00020\u0003H\u0087\b\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\b\u001a\r\u0010!\u001a\u00020\"*\u00020\u0003H\u0087\b\u001a\u0015\u0010!\u001a\u00020\"*\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\b\u001a\u0015\u0010#\u001a\u00020\u0003*\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\b\u001a\u0015\u0010#\u001a\u00020\u0003*\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\b\u001a\u0015\u0010#\u001a\u00020\u0003*\u00020 2\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\b\u001a\u0015\u0010#\u001a\u00020\u0003*\u00020\"2\u0006\u0010\u000f\u001a\u00020\u0010H\u0087\b¨\u0006$"}, m35d2 = {"screenFloatValue", "T", "str", "", "parse", "Lkotlin/Function1;", "screenFloatValue$StringsKt__StringNumberConversionsJVMKt", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "toBigDecimal", "Ljava/math/BigDecimal;", "mathContext", "Ljava/math/MathContext;", "toBigDecimalOrNull", "toBigInteger", "Ljava/math/BigInteger;", "radix", "", "toBigIntegerOrNull", "toBoolean", "", "toByte", "", "toDouble", "", "toDoubleOrNull", "(Ljava/lang/String;)Ljava/lang/Double;", "toFloat", "", "toFloatOrNull", "(Ljava/lang/String;)Ljava/lang/Float;", "toInt", "toLong", "", "toShort", "", "toString", "kotlin-stdlib"}, m34k = 5, m33mv = {1, 1, 13}, m31xi = 1, m30xs = "kotlin/text/StringsKt")
/* loaded from: classes.dex */
class StringsKt__StringNumberConversionsJVMKt extends StringsKt__StringBuilderKt {
    private static final String toString(byte b, int i) {
        String num = Integer.toString(b, CharsKt.checkRadix(CharsKt.checkRadix(i)));
        Intrinsics.checkExpressionValueIsNotNull(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    private static final String toString(short s, int i) {
        String num = Integer.toString(s, CharsKt.checkRadix(CharsKt.checkRadix(i)));
        Intrinsics.checkExpressionValueIsNotNull(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    private static final String toString(int i, int i2) {
        String num = Integer.toString(i, CharsKt.checkRadix(i2));
        Intrinsics.checkExpressionValueIsNotNull(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    private static final String toString(long j, int i) {
        String l = Long.toString(j, CharsKt.checkRadix(i));
        Intrinsics.checkExpressionValueIsNotNull(l, "java.lang.Long.toString(this, checkRadix(radix))");
        return l;
    }

    private static final boolean toBoolean(String str) {
        return Boolean.parseBoolean(str);
    }

    private static final byte toByte(String str) {
        return Byte.parseByte(str);
    }

    private static final byte toByte(String str, int i) {
        return Byte.parseByte(str, CharsKt.checkRadix(i));
    }

    private static final short toShort(String str) {
        return Short.parseShort(str);
    }

    private static final short toShort(String str, int i) {
        return Short.parseShort(str, CharsKt.checkRadix(i));
    }

    private static final int toInt(String str) {
        return Integer.parseInt(str);
    }

    private static final int toInt(String str, int i) {
        return Integer.parseInt(str, CharsKt.checkRadix(i));
    }

    private static final long toLong(String str) {
        return Long.parseLong(str);
    }

    private static final long toLong(String str, int i) {
        return Long.parseLong(str, CharsKt.checkRadix(i));
    }

    private static final float toFloat(String str) {
        return Float.parseFloat(str);
    }

    private static final double toDouble(String str) {
        return Double.parseDouble(str);
    }

    private static final BigInteger toBigInteger(String str) {
        return new BigInteger(str);
    }

    private static final BigInteger toBigInteger(String str, int i) {
        return new BigInteger(str, CharsKt.checkRadix(i));
    }

    public static final BigInteger toBigIntegerOrNull(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return StringsKt.toBigIntegerOrNull(receiver$0, 10);
    }

    public static final BigInteger toBigIntegerOrNull(String receiver$0, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        CharsKt.checkRadix(i);
        int length = receiver$0.length();
        if (length == 0) {
            return null;
        }
        int i2 = 0;
        if (length != 1) {
            if (receiver$0.charAt(0) == '-') {
                i2 = 1;
            }
            while (i2 < length) {
                if (CharsKt.digitOf(receiver$0.charAt(i2), i) < 0) {
                    return null;
                }
                i2++;
            }
        } else if (CharsKt.digitOf(receiver$0.charAt(0), i) < 0) {
            return null;
        }
        return new BigInteger(receiver$0, CharsKt.checkRadix(i));
    }

    private static final BigDecimal toBigDecimal(String str) {
        return new BigDecimal(str);
    }

    private static final BigDecimal toBigDecimal(String str, MathContext mathContext) {
        return new BigDecimal(str, mathContext);
    }

    private static final <T> T screenFloatValue$StringsKt__StringNumberConversionsJVMKt(String str, Function1<? super String, ? extends T> function1) {
        try {
            if (ScreenFloatValueRegEx.value.matches(str)) {
                return (T) function1.invoke(str);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static final Float toFloatOrNull(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        try {
            if (ScreenFloatValueRegEx.value.matches(receiver$0)) {
                return Float.valueOf(Float.parseFloat(receiver$0));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static final Double toDoubleOrNull(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        try {
            if (ScreenFloatValueRegEx.value.matches(receiver$0)) {
                return Double.valueOf(Double.parseDouble(receiver$0));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static final BigDecimal toBigDecimalOrNull(String receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        try {
            if (ScreenFloatValueRegEx.value.matches(receiver$0)) {
                return new BigDecimal(receiver$0);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static final BigDecimal toBigDecimalOrNull(String receiver$0, MathContext mathContext) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(mathContext, "mathContext");
        try {
            if (ScreenFloatValueRegEx.value.matches(receiver$0)) {
                return new BigDecimal(receiver$0, mathContext);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
