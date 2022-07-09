.class public Lcom/living/emo/presenter/MusicsPresenters;
.super Ljava/lang/Object;
.source "MusicsPresenters.java"

# interfaces
.implements Lcom/living/emo/interfaces/IMusicsPresenters;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.living.emo.presenter.MusicsPresenters"

.field private static instance:Lcom/living/emo/presenter/MusicsPresenters; = null

.field private static final mMusics:Ljava/lang/String; = "{\"code\":1,\"message\":\"success\",\"data\":[{\"name\":\"TBlame Yourself - Revolt\",\"path\":\"disc/blame_yourself_revolt.mp3\"},{\"name\":\"Blindless - Revolt\",\"path\":\"disc/blindless_revolt.mp3\"},{\"name\":\"Can I Take You There - Revolt\",\"path\":\"disc/can_i_take_you_there_revolt.mp3\"},{\"name\":\"Click (Original Mix) - Revolt\",\"path\":\"disc/click_original_mix_revolt.mp3\"},{\"name\":\"Complex - Revolt\",\"path\":\"disc/complex_revolt.mp3\"},{\"name\":\"Flashback - Revolt\",\"path\":\"disc/flashback_revolt.wav\"},{\"name\":\"Ocean Blue - Revolt\",\"path\":\"disc/ocean_blue_revolt.mp3\"},{\"name\":\"Rollercoaster - Revolt\",\"path\":\"disc/rollercoaster_revolt.mp3\"},{\"name\":\"Stars (Instrumental) - Revolt\",\"path\":\"disc/stars_instrumental_revolt.mp3\"},{\"name\":\"Time of My Life - Revolt\",\"path\":\"disc/time_of_my_life_revolt.mp3\"},{\"name\":\"Won\'t Let Go - Revolt\",\"path\":\"disc/wont_let_go_revolt.mp3\"},{\"name\":\"You Want Me - Revolt\",\"path\":\"disc/you_want_me_revolt.mp3\"}]}"


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/interfaces/IMusicsControlViewCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/presenter/MusicsPresenters;->mCallbacks:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/living/emo/presenter/MusicsPresenters;
    .locals 2

    .line 37
    sget-object v0, Lcom/living/emo/presenter/MusicsPresenters;->instance:Lcom/living/emo/presenter/MusicsPresenters;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/living/emo/presenter/MusicsPresenters;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/living/emo/presenter/MusicsPresenters;->instance:Lcom/living/emo/presenter/MusicsPresenters;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/living/emo/presenter/MusicsPresenters;

    invoke-direct {v1}, Lcom/living/emo/presenter/MusicsPresenters;-><init>()V

    sput-object v1, Lcom/living/emo/presenter/MusicsPresenters;->instance:Lcom/living/emo/presenter/MusicsPresenters;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/living/emo/presenter/MusicsPresenters;->instance:Lcom/living/emo/presenter/MusicsPresenters;

    return-object v0
.end method

.method private handlerControlView(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/MusicBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/living/emo/presenter/MusicsPresenters;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/living/emo/interfaces/IMusicsControlViewCallback;

    .line 28
    invoke-interface {v1, p1}, Lcom/living/emo/interfaces/IMusicsControlViewCallback;->onMusicListLoad(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMusicList()V
    .locals 3

    .line 19
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 20
    const-class v1, Lcom/living/emo/bean/MusicBean;

    const-string v2, "{\"code\":1,\"message\":\"success\",\"data\":[{\"name\":\"TBlame Yourself - Revolt\",\"path\":\"disc/blame_yourself_revolt.mp3\"},{\"name\":\"Blindless - Revolt\",\"path\":\"disc/blindless_revolt.mp3\"},{\"name\":\"Can I Take You There - Revolt\",\"path\":\"disc/can_i_take_you_there_revolt.mp3\"},{\"name\":\"Click (Original Mix) - Revolt\",\"path\":\"disc/click_original_mix_revolt.mp3\"},{\"name\":\"Complex - Revolt\",\"path\":\"disc/complex_revolt.mp3\"},{\"name\":\"Flashback - Revolt\",\"path\":\"disc/flashback_revolt.wav\"},{\"name\":\"Ocean Blue - Revolt\",\"path\":\"disc/ocean_blue_revolt.mp3\"},{\"name\":\"Rollercoaster - Revolt\",\"path\":\"disc/rollercoaster_revolt.mp3\"},{\"name\":\"Stars (Instrumental) - Revolt\",\"path\":\"disc/stars_instrumental_revolt.mp3\"},{\"name\":\"Time of My Life - Revolt\",\"path\":\"disc/time_of_my_life_revolt.mp3\"},{\"name\":\"Won\'t Let Go - Revolt\",\"path\":\"disc/wont_let_go_revolt.mp3\"},{\"name\":\"You Want Me - Revolt\",\"path\":\"disc/you_want_me_revolt.mp3\"}]}"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/bean/MusicBean;

    .line 21
    invoke-virtual {v0}, Lcom/living/emo/bean/MusicBean;->getData()Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Lcom/living/emo/presenter/MusicsPresenters;->handlerControlView(Ljava/util/List;)V

    return-void
.end method

.method public registerControlView(Lcom/living/emo/interfaces/IMusicsControlViewCallback;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/living/emo/presenter/MusicsPresenters;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/living/emo/presenter/MusicsPresenters;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic registerControlView(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/living/emo/interfaces/IMusicsControlViewCallback;

    invoke-virtual {p0, p1}, Lcom/living/emo/presenter/MusicsPresenters;->registerControlView(Lcom/living/emo/interfaces/IMusicsControlViewCallback;)V

    return-void
.end method

.method public unRegisterControlView()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/living/emo/presenter/MusicsPresenters;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
