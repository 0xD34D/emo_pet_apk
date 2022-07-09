.class public Lcom/living/emo/util/NoticeSharedPreferences;
.super Ljava/lang/Object;
.source "NoticeSharedPreferences.java"


# static fields
.field private static SHARE_NOTICE_ARTICLE_PRE:Ljava/lang/String; = "emo_notice_article_"

.field private static SHARE_NOTICE_DATA:Ljava/lang/String; = "emo_notice_data"

.field private static SHARE_NOTICE_INFO:Ljava/lang/String; = "emo_notice_info"

.field private static SHARE_NOTICE_VERSION:Ljava/lang/String; = "emo_notice_version"

.field private static sNoticeSharedPreferences:Lcom/living/emo/util/NoticeSharedPreferences;


# instance fields
.field private mEdit:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/living/emo/util/NoticeSharedPreferences;->SHARE_NOTICE_INFO:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/util/NoticeSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 22
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/util/NoticeSharedPreferences;->mEdit:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/living/emo/util/NoticeSharedPreferences;
    .locals 1

    .line 26
    sget-object v0, Lcom/living/emo/util/NoticeSharedPreferences;->sNoticeSharedPreferences:Lcom/living/emo/util/NoticeSharedPreferences;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/living/emo/util/NoticeSharedPreferences;

    invoke-direct {v0, p0}, Lcom/living/emo/util/NoticeSharedPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/living/emo/util/NoticeSharedPreferences;->sNoticeSharedPreferences:Lcom/living/emo/util/NoticeSharedPreferences;

    .line 29
    :cond_0
    sget-object p0, Lcom/living/emo/util/NoticeSharedPreferences;->sNoticeSharedPreferences:Lcom/living/emo/util/NoticeSharedPreferences;

    return-object p0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/living/emo/util/NoticeSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/living/emo/util/NoticeSharedPreferences;->SHARE_NOTICE_DATA:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/living/emo/util/NoticeSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/living/emo/util/NoticeSharedPreferences;->SHARE_NOTICE_VERSION:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setData(Lcom/living/emo/bean/Notice;)V
    .locals 2

    .line 33
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/living/emo/util/NoticeSharedPreferences;->mEdit:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/living/emo/util/NoticeSharedPreferences;->SHARE_NOTICE_DATA:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    iget-object p1, p0, Lcom/living/emo/util/NoticeSharedPreferences;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setVersion(I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/living/emo/util/NoticeSharedPreferences;->mEdit:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/living/emo/util/NoticeSharedPreferences;->SHARE_NOTICE_VERSION:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45
    iget-object p1, p0, Lcom/living/emo/util/NoticeSharedPreferences;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
