package com.google.gson.internal.bind.util;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.text.Typography;
/* loaded from: classes.dex */
public class ISO8601Utils {
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z) {
        return format(date, z, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(19 + (z ? 4 : 0) + (timeZone.getRawOffset() == 0 ? 1 : 6));
        padInt(sb, gregorianCalendar.get(1), 4);
        char c = '-';
        sb.append('-');
        padInt(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        padInt(sb, gregorianCalendar.get(5), 2);
        sb.append('T');
        padInt(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        padInt(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        padInt(sb, gregorianCalendar.get(13), 2);
        if (z) {
            sb.append('.');
            padInt(sb, gregorianCalendar.get(14), 3);
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i = offset / 60000;
            int abs = Math.abs(i / 60);
            int abs2 = Math.abs(i % 60);
            if (offset >= 0) {
                c = '+';
            }
            sb.append(c);
            padInt(sb, abs, 2);
            sb.append(':');
            padInt(sb, abs2, 2);
        } else {
            sb.append('Z');
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00cf A[Catch: IndexOutOfBoundsException -> 0x01c0, NumberFormatException -> 0x01be, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:40:0x00b0, B:41:0x00b3, B:47:0x00c9, B:49:0x00cf, B:51:0x00d6, B:55:0x00e0, B:56:0x00fb, B:57:0x00fc, B:60:0x0107, B:61:0x0118, B:63:0x0125, B:66:0x012e, B:68:0x014d, B:71:0x015c, B:72:0x017e, B:74:0x0181, B:75:0x0183, B:77:0x01b4, B:78:0x01bb), top: B:90:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b4 A[Catch: IndexOutOfBoundsException -> 0x01c0, NumberFormatException -> 0x01be, IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x0050, B:19:0x0060, B:20:0x0062, B:22:0x006e, B:23:0x0070, B:25:0x0076, B:29:0x0080, B:34:0x0090, B:36:0x0098, B:40:0x00b0, B:41:0x00b3, B:47:0x00c9, B:49:0x00cf, B:51:0x00d6, B:55:0x00e0, B:56:0x00fb, B:57:0x00fc, B:60:0x0107, B:61:0x0118, B:63:0x0125, B:66:0x012e, B:68:0x014d, B:71:0x015c, B:72:0x017e, B:74:0x0181, B:75:0x0183, B:77:0x01b4, B:78:0x01bb), top: B:90:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Date parse(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        TimeZone timeZone;
        char charAt;
        try {
            int index = parsePosition.getIndex();
            int i6 = index + 4;
            int parseInt = parseInt(str, index, i6);
            if (checkOffset(str, i6, '-')) {
                i6++;
            }
            int i7 = i6 + 2;
            int parseInt2 = parseInt(str, i6, i7);
            if (checkOffset(str, i7, '-')) {
                i7++;
            }
            int i8 = i7 + 2;
            int parseInt3 = parseInt(str, i7, i8);
            boolean checkOffset = checkOffset(str, i8, 'T');
            if (checkOffset || str.length() > i8) {
                if (checkOffset) {
                    int i9 = i8 + 1;
                    int i10 = i9 + 2;
                    int parseInt4 = parseInt(str, i9, i10);
                    if (checkOffset(str, i10, ':')) {
                        i10++;
                    }
                    int i11 = i10 + 2;
                    int parseInt5 = parseInt(str, i10, i11);
                    if (checkOffset(str, i11, ':')) {
                        i11++;
                    }
                    if (str.length() <= i11 || (charAt = str.charAt(i11)) == 'Z' || charAt == '+' || charAt == '-') {
                        i3 = parseInt5;
                        i2 = 0;
                        i4 = parseInt4;
                        i8 = i11;
                    } else {
                        int i12 = i11 + 2;
                        i = parseInt(str, i11, i12);
                        if (i > 59 && i < 63) {
                            i = 59;
                        }
                        if (checkOffset(str, i12, '.')) {
                            int i13 = i12 + 1;
                            int indexOfNonDigit = indexOfNonDigit(str, i13 + 1);
                            int min = Math.min(indexOfNonDigit, i13 + 3);
                            i2 = parseInt(str, i13, min);
                            int i14 = min - i13;
                            if (i14 == 1) {
                                i2 *= 100;
                            } else if (i14 == 2) {
                                i2 *= 10;
                            }
                            i3 = parseInt5;
                            i4 = parseInt4;
                            i8 = indexOfNonDigit;
                        } else {
                            i3 = parseInt5;
                            i4 = parseInt4;
                            i8 = i12;
                            i2 = 0;
                        }
                        if (str.length() <= i8) {
                            char charAt2 = str.charAt(i8);
                            if (charAt2 == 'Z') {
                                timeZone = TIMEZONE_UTC;
                                i5 = i8 + 1;
                            } else {
                                if (!(charAt2 == '+' || charAt2 == '-')) {
                                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + charAt2 + "'");
                                }
                                String substring = str.substring(i8);
                                if (substring.length() < 5) {
                                    substring = substring + "00";
                                }
                                i5 = i8 + substring.length();
                                if (!"+0000".equals(substring) && !"+00:00".equals(substring)) {
                                    String str3 = "GMT" + substring;
                                    TimeZone timeZone2 = TimeZone.getTimeZone(str3);
                                    String id = timeZone2.getID();
                                    if (!id.equals(str3) && !id.replace(":", "").equals(str3)) {
                                        throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str3 + " given, resolves to " + timeZone2.getID());
                                    }
                                    timeZone = timeZone2;
                                }
                                timeZone = TIMEZONE_UTC;
                            }
                            GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone);
                            gregorianCalendar.setLenient(false);
                            gregorianCalendar.set(1, parseInt);
                            gregorianCalendar.set(2, parseInt2 - 1);
                            gregorianCalendar.set(5, parseInt3);
                            gregorianCalendar.set(11, i4);
                            gregorianCalendar.set(12, i3);
                            gregorianCalendar.set(13, i);
                            gregorianCalendar.set(14, i2);
                            parsePosition.setIndex(i5);
                            return gregorianCalendar.getTime();
                        }
                        throw new IllegalArgumentException("No time zone indicator");
                    }
                } else {
                    i4 = 0;
                    i3 = 0;
                    i2 = 0;
                }
                i = 0;
                if (str.length() <= i8) {
                }
            } else {
                GregorianCalendar gregorianCalendar2 = new GregorianCalendar(parseInt, parseInt2 - 1, parseInt3);
                parsePosition.setIndex(i8);
                return gregorianCalendar2.getTime();
            }
        } catch (IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException e) {
            if (str == null) {
                str2 = null;
            } else {
                str2 = Typography.quote + str + Typography.quote;
            }
            String message = e.getMessage();
            if (message == null || message.isEmpty()) {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e);
            throw parseException;
        }
    }

    private static boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    private static int parseInt(String str, int i, int i2) throws NumberFormatException {
        int i3;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        int i4 = 0;
        if (i < i2) {
            i3 = i + 1;
            int digit = Character.digit(str.charAt(i), 10);
            if (digit >= 0) {
                i4 = -digit;
            } else {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
        } else {
            i3 = i;
        }
        while (i3 < i2) {
            i3++;
            int digit2 = Character.digit(str.charAt(i3), 10);
            if (digit2 >= 0) {
                i4 = (i4 * 10) - digit2;
            } else {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
        }
        return -i4;
    }

    private static void padInt(StringBuilder sb, int i, int i2) {
        String num = Integer.toString(i);
        for (int length = i2 - num.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(num);
    }

    private static int indexOfNonDigit(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }
}
