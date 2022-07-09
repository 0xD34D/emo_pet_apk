.class public Lcom/living/emo/util/NoticeCacheContent;
.super Ljava/lang/Object;
.source "NoticeCacheContent.java"


# static fields
.field private static SHARECACHECONTENTPATH:Ljava/lang/String; = "emo_content_info"

.field private static SHARECACHECONTENTPRE:Ljava/lang/String; = "emo_content_info_pre_"

.field private static sNoticeCacheContent:Lcom/living/emo/util/NoticeCacheContent;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEdit:Landroid/content/SharedPreferences$Editor;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mSet:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mHashMap:Ljava/util/HashMap;

    .line 25
    invoke-static {}, Lcom/living/emo/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mContext:Landroid/content/Context;

    .line 26
    sget-object v1, Lcom/living/emo/util/NoticeCacheContent;->SHARECACHECONTENTPATH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mEdit:Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-direct {p0}, Lcom/living/emo/util/NoticeCacheContent;->loadSetHashMap()V

    return-void
.end method

.method public static getInstance()Lcom/living/emo/util/NoticeCacheContent;
    .locals 1

    .line 41
    sget-object v0, Lcom/living/emo/util/NoticeCacheContent;->sNoticeCacheContent:Lcom/living/emo/util/NoticeCacheContent;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/living/emo/util/NoticeCacheContent;

    invoke-direct {v0}, Lcom/living/emo/util/NoticeCacheContent;-><init>()V

    sput-object v0, Lcom/living/emo/util/NoticeCacheContent;->sNoticeCacheContent:Lcom/living/emo/util/NoticeCacheContent;

    .line 44
    :cond_0
    sget-object v0, Lcom/living/emo/util/NoticeCacheContent;->sNoticeCacheContent:Lcom/living/emo/util/NoticeCacheContent;

    return-object v0
.end method

.method private loadSetHashMap()V
    .locals 4

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/living/emo/util/NoticeCacheContent;->SHARECACHECONTENTPRE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "set_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/living/emo/util/NoticeCacheContent;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/living/emo/util/NoticeCacheContent;->mSet:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mSet:Ljava/util/Set;

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    iget-object v2, p0, Lcom/living/emo/util/NoticeCacheContent;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/living/emo/util/NoticeCacheContent;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 63
    iget-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 64
    iget-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 65
    iget-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getContent(I)Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/living/emo/util/NoticeCacheContent;->SHARECACHECONTENTPRE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public save()V
    .locals 4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/living/emo/util/NoticeCacheContent;->SHARECACHECONTENTPRE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "set_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/living/emo/util/NoticeCacheContent;->mEdit:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/living/emo/util/NoticeCacheContent;->mSet:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 71
    iget-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/living/emo/util/NoticeCacheContent;->mEdit:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/living/emo/util/NoticeCacheContent;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setContext(ILjava/lang/String;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/living/emo/util/NoticeCacheContent;->SHARECACHECONTENTPRE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/living/emo/util/NoticeCacheContent;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
