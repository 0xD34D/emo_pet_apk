.class public Lcom/living/emo/util/MusicPlayerUtil;
.super Ljava/lang/Object;
.source "MusicPlayerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;,
        Lcom/living/emo/util/MusicPlayerUtil$MusicList;
    }
.end annotation


# static fields
.field private static SHARECACHECONTENTPATH:Ljava/lang/String; = "emo_music_info"

.field private static SHARECACHECONTENTPRE:Ljava/lang/String; = "emo_music_info_userIsPause"

.field private static final TAG:Ljava/lang/String;

.field private static sMusicPlayerUtil:Lcom/living/emo/util/MusicPlayerUtil;


# instance fields
.field private init:Z

.field private isPause:Z

.field private mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

.field mCallBack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private final mEdit:Landroid/content/SharedPreferences$Editor;

.field private mMusicLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/util/MusicPlayerUtil$MusicList;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private userIsPause:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/living/emo/util/MusicPlayerUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/living/emo/util/MusicPlayerUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mCurrentPosition:I

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/living/emo/util/MusicPlayerUtil;->isPause:Z

    .line 26
    iput-boolean v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->init:Z

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mCallBack:Ljava/util/List;

    .line 35
    iput v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->userIsPause:I

    .line 37
    iput-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mContext:Landroid/content/Context;

    .line 38
    sget-object v1, Lcom/living/emo/util/MusicPlayerUtil;->SHARECACHECONTENTPATH:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 39
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mEdit:Landroid/content/SharedPreferences$Editor;

    .line 40
    sget-object v1, Lcom/living/emo/util/MusicPlayerUtil;->SHARECACHECONTENTPRE:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/living/emo/util/MusicPlayerUtil;->userIsPause:I

    .line 41
    invoke-direct {p0}, Lcom/living/emo/util/MusicPlayerUtil;->initData()V

    .line 42
    invoke-direct {p0}, Lcom/living/emo/util/MusicPlayerUtil;->initMusic()V

    return-void
.end method

.method static synthetic access$002(Lcom/living/emo/util/MusicPlayerUtil;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/living/emo/util/MusicPlayerUtil;->isPause:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/living/emo/util/MusicPlayerUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/living/emo/util/MusicPlayerUtil;)Ljava/util/List;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/living/emo/util/MusicPlayerUtil;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$302(Lcom/living/emo/util/MusicPlayerUtil;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/living/emo/util/MusicPlayerUtil;)Landroid/media/MediaPlayer;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$402(Lcom/living/emo/util/MusicPlayerUtil;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/living/emo/util/MusicPlayerUtil;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/living/emo/util/MusicPlayerUtil;->initMusic()V

    return-void
.end method

.method static synthetic access$600(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/living/emo/util/MusicPlayerUtil;->changName(Ljava/lang/String;)V

    return-void
.end method

.method private changName(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mCallBack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mCallBack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;

    invoke-interface {v1, p1}, Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;->onChangeMusicName(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createMediaplayerFromAssets(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .locals 7

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 162
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 163
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    .line 164
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 165
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 166
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, v6

    .line 164
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 167
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 168
    new-instance p1, Lcom/living/emo/util/MusicPlayerUtil$1;

    invoke-direct {p1, p0}, Lcom/living/emo/util/MusicPlayerUtil$1;-><init>(Lcom/living/emo/util/MusicPlayerUtil;)V

    invoke-virtual {v6, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v6, 0x0

    .line 191
    sget-object v0, Lcom/living/emo/util/MusicPlayerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/living/emo/util/MusicPlayerUtil;
    .locals 1

    .line 145
    sget-object v0, Lcom/living/emo/util/MusicPlayerUtil;->sMusicPlayerUtil:Lcom/living/emo/util/MusicPlayerUtil;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/living/emo/util/MusicPlayerUtil;

    invoke-direct {v0, p0}, Lcom/living/emo/util/MusicPlayerUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/living/emo/util/MusicPlayerUtil;->sMusicPlayerUtil:Lcom/living/emo/util/MusicPlayerUtil;

    .line 148
    :cond_0
    sget-object p0, Lcom/living/emo/util/MusicPlayerUtil;->sMusicPlayerUtil:Lcom/living/emo/util/MusicPlayerUtil;

    return-object p0
.end method

.method private initData()V
    .locals 4

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    .line 130
    new-instance v1, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    const-string v2, "disc/blame_yourself_revolt.mp3"

    const-string v3, "TBlame Yourself - Revolt"

    invoke-direct {v1, p0, v2, v3}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;-><init>(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    new-instance v1, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    const-string v2, "disc/blindless_revolt.mp3"

    const-string v3, "Blindless - Revolt"

    invoke-direct {v1, p0, v2, v3}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;-><init>(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    new-instance v1, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    const-string v2, "disc/can_i_take_you_there_revolt.mp3"

    const-string v3, "Can I Take You There - Revolt"

    invoke-direct {v1, p0, v2, v3}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;-><init>(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    new-instance v1, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    const-string v2, "disc/click_original_mix_revolt.mp3"

    const-string v3, "Click (Original Mix) - Revolt"

    invoke-direct {v1, p0, v2, v3}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;-><init>(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    new-instance v1, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    const-string v2, "disc/complex_revolt.mp3"

    const-string v3, "Complex - Revolt"

    invoke-direct {v1, p0, v2, v3}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;-><init>(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    new-instance v1, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    const-string v2, "disc/flashback_revolt.mp3"

    const-string v3, "Flashback - Revolt"

    invoke-direct {v1, p0, v2, v3}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;-><init>(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    new-instance v1, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    const-string v2, "disc/ocean_blue_revolt.mp3"

    const-string v3, "Ocean Blue - Revolt"

    invoke-direct {v1, p0, v2, v3}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;-><init>(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    new-instance v1, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    const-string v2, "disc/rollercoaster_revolt.mp3"

    const-string v3, "Rollercoaster - Revolt"

    invoke-direct {v1, p0, v2, v3}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;-><init>(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    new-instance v1, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    const-string v2, "disc/stars_instrumental_revolt.mp3"

    const-string v3, "Stars (Instrumental) - Revolt"

    invoke-direct {v1, p0, v2, v3}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;-><init>(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    new-instance v1, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    const-string v2, "disc/time_of_my_life_revolt.mp3"

    const-string v3, "Time of My Life - Revolt"

    invoke-direct {v1, p0, v2, v3}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;-><init>(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    new-instance v1, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    const-string v2, "disc/wont_let_go_revolt.mp3"

    const-string v3, "Won\'t Let Go - Revolt"

    invoke-direct {v1, p0, v2, v3}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;-><init>(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    new-instance v1, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    const-string v2, "disc/you_want_me_revolt.mp3"

    const-string v3, "You Want Me - Revolt"

    invoke-direct {v1, p0, v2, v3}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;-><init>(Lcom/living/emo/util/MusicPlayerUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initMusic()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mCurrentPosition:I

    .line 49
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mCurrentPosition:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mCurrentPosition:I

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    iget v1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mCurrentPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    .line 53
    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/living/emo/util/MusicPlayerUtil;->createMediaplayerFromAssets(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method


# virtual methods
.method public backgroundImage(Landroid/view/View;)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/living/emo/util/MusicPlayerUtil;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0801c2

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0801c1

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public end()V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 241
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 243
    sput-object v0, Lcom/living/emo/util/MusicPlayerUtil;->sMusicPlayerUtil:Lcom/living/emo/util/MusicPlayerUtil;

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mMusicLists:Ljava/util/List;

    iget v1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mCurrentPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/util/MusicPlayerUtil$MusicList;

    invoke-virtual {v0}, Lcom/living/emo/util/MusicPlayerUtil$MusicList;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserIsPause()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->userIsPause:I

    return v0
.end method

.method public init()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->init:Z

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/living/emo/util/MusicPlayerUtil;->play()V

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->init:Z

    .line 60
    invoke-virtual {p0}, Lcom/living/emo/util/MusicPlayerUtil;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/living/emo/util/MusicPlayerUtil;->changName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/living/emo/util/MusicPlayerUtil;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/living/emo/util/MusicPlayerUtil;->userPause()V

    const v0, 0x7f0801c1

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/living/emo/util/MusicPlayerUtil;->userPlay()V

    const v0, 0x7f0801c2

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->isPause:Z

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->isPause:Z

    :cond_0
    return-void
.end method

.method public setOnChangeMusicName(Lcom/living/emo/util/MusicPlayerUtil$OnChangeMusicName;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mCallBack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mCallBack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public userPause()V
    .locals 3

    const/4 v0, 0x2

    .line 109
    iput v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->userIsPause:I

    .line 110
    iget-object v1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mEdit:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/living/emo/util/MusicPlayerUtil;->SHARECACHECONTENTPRE:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 111
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    invoke-virtual {p0}, Lcom/living/emo/util/MusicPlayerUtil;->pause()V

    return-void
.end method

.method public userPlay()V
    .locals 3

    const/4 v0, 0x1

    .line 115
    iput v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->userIsPause:I

    .line 116
    iget-object v1, p0, Lcom/living/emo/util/MusicPlayerUtil;->mEdit:Landroid/content/SharedPreferences$Editor;

    sget-object v2, Lcom/living/emo/util/MusicPlayerUtil;->SHARECACHECONTENTPRE:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 117
    iget-object v0, p0, Lcom/living/emo/util/MusicPlayerUtil;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    invoke-virtual {p0}, Lcom/living/emo/util/MusicPlayerUtil;->play()V

    return-void
.end method
