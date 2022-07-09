.class public Lcom/living/emo/util/DbManager;
.super Ljava/lang/Object;
.source "DbManager.java"


# static fields
.field private static sDatabaseUtil:Lcom/living/emo/util/DatabaseUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteRedundantData()V
    .locals 2

    .line 68
    sget-object v0, Lcom/living/emo/util/DbManager;->sDatabaseUtil:Lcom/living/emo/util/DatabaseUtil;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/living/emo/util/DbManager;->getListUserHashMap()Ljava/util/Map;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 71
    sget-object v0, Lcom/living/emo/util/DbManager;->sDatabaseUtil:Lcom/living/emo/util/DatabaseUtil;

    invoke-virtual {v0}, Lcom/living/emo/util/DatabaseUtil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from user where _id = (select min(_id) from user)"

    .line 72
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method

.method public static deleteUser(Ljava/lang/String;)Z
    .locals 5

    .line 79
    sget-object v0, Lcom/living/emo/util/DbManager;->sDatabaseUtil:Lcom/living/emo/util/DatabaseUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/living/emo/util/DatabaseUtil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    aput-object p0, v3, v1

    const-string p0, "user"

    const-string v4, "ssid=?"

    .line 81
    invoke-virtual {v0, p0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/living/emo/util/DatabaseUtil;
    .locals 1

    .line 19
    sget-object v0, Lcom/living/emo/util/DbManager;->sDatabaseUtil:Lcom/living/emo/util/DatabaseUtil;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/living/emo/util/DatabaseUtil;

    invoke-direct {v0, p0}, Lcom/living/emo/util/DatabaseUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/living/emo/util/DbManager;->sDatabaseUtil:Lcom/living/emo/util/DatabaseUtil;

    .line 22
    :cond_0
    sget-object p0, Lcom/living/emo/util/DbManager;->sDatabaseUtil:Lcom/living/emo/util/DatabaseUtil;

    return-object p0
.end method

.method public static getListUserHashMap()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/living/emo/util/DbManager;->sDatabaseUtil:Lcom/living/emo/util/DatabaseUtil;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/living/emo/util/DatabaseUtil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v9, "ssid"

    const-string v10, "pwd"

    .line 124
    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "user"

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 128
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 129
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static insertOrUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    .line 39
    sget-object v0, Lcom/living/emo/util/DbManager;->sDatabaseUtil:Lcom/living/emo/util/DatabaseUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/living/emo/util/DatabaseUtil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "_id"

    const-string v10, "ssid"

    const-string v11, "pwd"

    .line 41
    filled-new-array {v2, v10, v11}, [Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/String;

    aput-object p0, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "user"

    const-string v5, "ssid=?"

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 47
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const-string v3, "user"

    if-lez v2, :cond_0

    .line 48
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 49
    invoke-virtual {v2, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v12, [Ljava/lang/String;

    aput-object p0, p1, v1

    const-string p0, "ssid=?"

    .line 50
    invoke-virtual {v0, v3, v2, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 53
    invoke-virtual {v2, v10, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 55
    invoke-virtual {v0, v3, p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    .line 58
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-lez p0, :cond_1

    move v1, v12

    :cond_1
    return v1
.end method

.method public static insertUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 26
    sget-object v0, Lcom/living/emo/util/DbManager;->sDatabaseUtil:Lcom/living/emo/util/DatabaseUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/living/emo/util/DatabaseUtil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 28
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "ssid"

    .line 29
    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "pwd"

    .line 30
    invoke-virtual {v2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const-string p1, "user"

    .line 31
    invoke-virtual {v0, p1, p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    .line 32
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static selectUserByssid(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 103
    sget-object v0, Lcom/living/emo/util/DbManager;->sDatabaseUtil:Lcom/living/emo/util/DatabaseUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/living/emo/util/DatabaseUtil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v10, "pwd"

    .line 105
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "user"

    const-string v5, "ssid=?"

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 108
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 109
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 110
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object p0

    .line 114
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    return-object v1
.end method

.method public static updateUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 91
    sget-object v0, Lcom/living/emo/util/DbManager;->sDatabaseUtil:Lcom/living/emo/util/DatabaseUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/living/emo/util/DatabaseUtil;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 93
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "pwd"

    .line 94
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v3, p1, [Ljava/lang/String;

    aput-object p0, v3, v1

    const-string p0, "user"

    const-string v4, "ssid=?"

    .line 95
    invoke-virtual {v0, p0, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 96
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    if-lez p0, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method
