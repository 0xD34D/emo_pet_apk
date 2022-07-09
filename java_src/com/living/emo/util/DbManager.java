package com.living.emo.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.living.emo.model.Constants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class DbManager {
    private static DatabaseUtil sDatabaseUtil;

    public static DatabaseUtil getInstance(Context context) {
        if (sDatabaseUtil == null) {
            sDatabaseUtil = new DatabaseUtil(context);
        }
        return sDatabaseUtil;
    }

    public static boolean insertUser(String str, String str2) {
        DatabaseUtil databaseUtil = sDatabaseUtil;
        if (databaseUtil == null) {
            return false;
        }
        SQLiteDatabase writableDatabase = databaseUtil.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(Constants.DATABASE_TABLE_FIELD_SSID, str);
        contentValues.put(Constants.DATABASE_TABLE_FIELD_PWD, str2);
        long insert = writableDatabase.insert(Constants.DATABASE_TABLE_NAME_USER, null, contentValues);
        writableDatabase.close();
        return insert > 0;
    }

    public static boolean insertOrUpdate(String str, String str2) {
        long j;
        DatabaseUtil databaseUtil = sDatabaseUtil;
        if (databaseUtil == null) {
            return false;
        }
        SQLiteDatabase writableDatabase = databaseUtil.getWritableDatabase();
        if (writableDatabase.query(Constants.DATABASE_TABLE_NAME_USER, new String[]{Constants.DATABASE_TABLE_FIELD_ID, Constants.DATABASE_TABLE_FIELD_SSID, Constants.DATABASE_TABLE_FIELD_PWD}, "ssid=?", new String[]{str}, null, null, null).getCount() > 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(Constants.DATABASE_TABLE_FIELD_PWD, str2);
            j = writableDatabase.update(Constants.DATABASE_TABLE_NAME_USER, contentValues, "ssid=?", new String[]{str});
        } else {
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put(Constants.DATABASE_TABLE_FIELD_SSID, str);
            contentValues2.put(Constants.DATABASE_TABLE_FIELD_PWD, str2);
            j = writableDatabase.insert(Constants.DATABASE_TABLE_NAME_USER, null, contentValues2);
        }
        writableDatabase.close();
        return j > 0;
    }

    public static void deleteRedundantData() {
        if (sDatabaseUtil != null && getListUserHashMap().size() > 5) {
            SQLiteDatabase writableDatabase = sDatabaseUtil.getWritableDatabase();
            writableDatabase.execSQL("delete from user where _id = (select min(_id) from user)");
            writableDatabase.close();
        }
    }

    public static boolean deleteUser(String str) {
        DatabaseUtil databaseUtil = sDatabaseUtil;
        if (databaseUtil == null) {
            return false;
        }
        SQLiteDatabase writableDatabase = databaseUtil.getWritableDatabase();
        int delete = writableDatabase.delete(Constants.DATABASE_TABLE_NAME_USER, "ssid=?", new String[]{str});
        writableDatabase.close();
        return delete > 0;
    }

    public static boolean updateUser(String str, String str2) {
        DatabaseUtil databaseUtil = sDatabaseUtil;
        if (databaseUtil == null) {
            return false;
        }
        SQLiteDatabase writableDatabase = databaseUtil.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(Constants.DATABASE_TABLE_FIELD_PWD, str2);
        int update = writableDatabase.update(Constants.DATABASE_TABLE_NAME_USER, contentValues, "ssid=?", new String[]{str});
        writableDatabase.close();
        return update > 0;
    }

    public static String selectUserByssid(String str) {
        DatabaseUtil databaseUtil = sDatabaseUtil;
        if (databaseUtil != null) {
            SQLiteDatabase writableDatabase = databaseUtil.getWritableDatabase();
            Cursor query = writableDatabase.query(Constants.DATABASE_TABLE_NAME_USER, new String[]{Constants.DATABASE_TABLE_FIELD_PWD}, "ssid=?", new String[]{str}, null, null, null);
            if (query.getCount() > 0) {
                query.moveToFirst();
                String string = query.getString(query.getColumnIndex(Constants.DATABASE_TABLE_FIELD_PWD));
                writableDatabase.close();
                return string;
            }
            writableDatabase.close();
        }
        return null;
    }

    public static Map<String, String> getListUserHashMap() {
        DatabaseUtil databaseUtil = sDatabaseUtil;
        if (databaseUtil == null) {
            return null;
        }
        SQLiteDatabase writableDatabase = databaseUtil.getWritableDatabase();
        Cursor query = writableDatabase.query(Constants.DATABASE_TABLE_NAME_USER, new String[]{Constants.DATABASE_TABLE_FIELD_SSID, Constants.DATABASE_TABLE_FIELD_PWD}, null, null, null, null, null);
        HashMap hashMap = new HashMap();
        while (query.moveToNext()) {
            hashMap.put(query.getString(query.getColumnIndex(Constants.DATABASE_TABLE_FIELD_SSID)), query.getString(query.getColumnIndex(Constants.DATABASE_TABLE_FIELD_PWD)));
        }
        writableDatabase.close();
        return hashMap;
    }
}
