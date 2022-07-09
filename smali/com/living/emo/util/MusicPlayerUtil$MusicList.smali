.class public Lcom/living/emo/util/MusicPlayerUtil$MusicList;
.super Ljava/lang/Object;
.source "MusicPlayerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/util/MusicPlayerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicList"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/living/emo/util/MusicPlayerUtil;


# direct methods
.method public constructor <init>(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$MusicList;->this$0:Lcom/living/emo/util/MusicPlayerUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 197
    iput-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$MusicList;->path:Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$MusicList;->name:Ljava/lang/String;

    .line 201
    iput-object p2, p0, Lcom/living/emo/util/MusicPlayerUtil$MusicList;->path:Ljava/lang/String;

    .line 202
    iput-object p3, p0, Lcom/living/emo/util/MusicPlayerUtil$MusicList;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil$MusicList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil$MusicList;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$MusicList;->name:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil$MusicList;->path:Ljava/lang/String;

    return-void
.end method
