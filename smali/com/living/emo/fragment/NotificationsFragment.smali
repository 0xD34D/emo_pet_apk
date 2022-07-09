.class public Lcom/living/emo/fragment/NotificationsFragment;
.super Lcom/living/emo/fragment/AbstractBaseFragment;
.source "NotificationsFragment.java"


# instance fields
.field private HTML:Ljava/lang/String;

.field private mArticleTitle:Landroidx/recyclerview/widget/RecyclerView;

.field public mBGABadgeRadioButtons:[Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/Notice$DataBean$ArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field public mEvents:Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

.field private mEventsData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/Notice$DataBean$ArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private mNotice:Lcom/living/emo/bean/Notice;

.field private mNoticeCacheContent:Lcom/living/emo/util/NoticeCacheContent;

.field private mNoticeSharedPreferences:Lcom/living/emo/util/NoticeSharedPreferences;

.field public mNotices:Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

.field private mNoticesData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/Notice$DataBean$ArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationsAdapter:Lcom/living/emo/adapter/NotificationsAdapter;

.field private mRadiobox:Landroid/widget/RadioGroup;

.field public mRecommends:Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

.field private mRecommendsData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/Notice$DataBean$ArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field public mUpdates:Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

.field private mUpdatesData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/living/emo/bean/Notice$DataBean$ArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private mWebBox:Landroid/widget/LinearLayout;

.field private mWebView:Landroid/webkit/WebView;

.field private radioCheckedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->radioCheckedIndex:I

    const-string v0, "<!doctype html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0\"><meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\"><title></title></head><style>body {margin:0;padding:0; background:transparent;}#main{position: absolute;top:0;left:0;width:100%;height:100%;}</style><body><div id=\"main\">{{content}}</div></body></html>"

    .line 58
    iput-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->HTML:Ljava/lang/String;

    .line 221
    invoke-static {}, Lcom/living/emo/util/NoticeCacheContent;->getInstance()Lcom/living/emo/util/NoticeCacheContent;

    move-result-object v0

    iput-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNoticeCacheContent:Lcom/living/emo/util/NoticeCacheContent;

    return-void
.end method

.method static synthetic access$000(Lcom/living/emo/fragment/NotificationsFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/living/emo/fragment/NotificationsFragment;->radioCheckedIndex:I

    return p0
.end method

.method static synthetic access$002(Lcom/living/emo/fragment/NotificationsFragment;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->radioCheckedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNoticesData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/living/emo/fragment/NotificationsFragment;)Lcom/living/emo/util/NoticeCacheContent;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNoticeCacheContent:Lcom/living/emo/util/NoticeCacheContent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/living/emo/fragment/NotificationsFragment;Ljava/util/List;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/NotificationsFragment;->setData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/living/emo/fragment/NotificationsFragment;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/NotificationsFragment;->getArticle(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mUpdatesData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mEventsData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mRecommendsData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/living/emo/fragment/NotificationsFragment;)Lcom/living/emo/adapter/NotificationsAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotificationsAdapter:Lcom/living/emo/adapter/NotificationsAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/living/emo/fragment/NotificationsFragment;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/living/emo/fragment/NotificationsFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mWebBox:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private getArticle(I)V
    .locals 2

    .line 224
    invoke-direct {p0}, Lcom/living/emo/fragment/NotificationsFragment;->showDialog()V

    .line 225
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNoticeCacheContent:Lcom/living/emo/util/NoticeCacheContent;

    invoke-virtual {v0, p1}, Lcom/living/emo/util/NoticeCacheContent;->getContent(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    :try_start_0
    invoke-static {}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->getInstance()Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    move-result-object v0

    new-instance v1, Lcom/living/emo/fragment/NotificationsFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/living/emo/fragment/NotificationsFragment$3;-><init>(Lcom/living/emo/fragment/NotificationsFragment;I)V

    invoke-virtual {v0, v1}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->setOnIResultContrlView(Lcom/living/emo/interfaces/IResultContrlView;)V

    .line 243
    invoke-static {}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->getInstance()Lcom/living/emo/presenter/domain/NoticesPresenterImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/living/emo/presenter/domain/NoticesPresenterImpl;->getArticle(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 246
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getArticle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_0
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    .line 251
    invoke-virtual {p0, v0}, Lcom/living/emo/fragment/NotificationsFragment;->loadWebview(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initDatas()V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    .line 77
    iget-object v2, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotices:Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/living/emo/fragment/NotificationsFragment;->mUpdates:Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/living/emo/fragment/NotificationsFragment;->mEvents:Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/living/emo/fragment/NotificationsFragment;->mRecommends:Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mBGABadgeRadioButtons:[Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    :goto_0
    if-ge v3, v0, :cond_1

    .line 84
    iget-object v1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {v1}, Lcom/living/emo/bean/Notice;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/living/emo/bean/Notice$DataBean;

    .line 85
    invoke-virtual {v1}, Lcom/living/emo/bean/Notice$DataBean;->isHasnew()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mBGABadgeRadioButtons:[Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    aget-object v1, v1, v3

    const-string v2, "NEW"

    invoke-virtual {v1, v2}, Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;->showTextBadge(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initEvents()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mRadiobox:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/living/emo/fragment/NotificationsFragment$1;

    invoke-direct {v1, p0}, Lcom/living/emo/fragment/NotificationsFragment$1;-><init>(Lcom/living/emo/fragment/NotificationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f090215

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mRadiobox:Landroid/widget/RadioGroup;

    const v0, 0x7f090217

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    iput-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotices:Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1}, Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;->setChecked(Z)V

    const v0, 0x7f090219

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    iput-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mUpdates:Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    const v0, 0x7f090216

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    iput-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mEvents:Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    const v0, 0x7f090218

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    iput-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mRecommends:Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    const v0, 0x7f090271

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mArticleTitle:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    .line 165
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    const v0, 0x7f090367

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mWebView:Landroid/webkit/WebView;

    const v0, 0x7f09021d

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mWebBox:Landroid/widget/LinearLayout;

    .line 168
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mWebView:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 170
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 171
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 172
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/16 v3, 0xd

    .line 173
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 174
    invoke-virtual {p1, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 175
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/living/emo/fragment/NotificationsFragment$2;

    invoke-direct {v3, p0}, Lcom/living/emo/fragment/NotificationsFragment$2;-><init>(Lcom/living/emo/fragment/NotificationsFragment;)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 181
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt p1, v3, :cond_0

    .line 182
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mArticleTitle:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/living/emo/fragment/NotificationsFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 185
    new-instance p1, Lcom/living/emo/adapter/NotificationsAdapter;

    iget-object v3, p0, Lcom/living/emo/fragment/NotificationsFragment;->mArticleTitle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, v3}, Lcom/living/emo/adapter/NotificationsAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotificationsAdapter:Lcom/living/emo/adapter/NotificationsAdapter;

    .line 186
    invoke-static {}, Lcom/living/emo/util/NoticesBean;->getInstance()Lcom/living/emo/util/NoticesBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/NoticesBean;->empty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    new-instance p1, Lcom/living/emo/bean/Notice;

    invoke-direct {p1}, Lcom/living/emo/bean/Notice;-><init>()V

    iput-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {}, Lcom/living/emo/util/NoticesBean;->getInstance()Lcom/living/emo/util/NoticesBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/NoticesBean;->getNotice()Lcom/living/emo/bean/Notice;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    .line 191
    :goto_0
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {p1}, Lcom/living/emo/bean/Notice;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/Notice$DataBean;

    invoke-virtual {p1}, Lcom/living/emo/bean/Notice$DataBean;->getArticle()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNoticesData:Ljava/util/List;

    .line 192
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {p1}, Lcom/living/emo/bean/Notice;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/Notice$DataBean;

    invoke-virtual {p1}, Lcom/living/emo/bean/Notice$DataBean;->getArticle()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mUpdatesData:Ljava/util/List;

    .line 193
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {p1}, Lcom/living/emo/bean/Notice;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/Notice$DataBean;

    invoke-virtual {p1}, Lcom/living/emo/bean/Notice$DataBean;->getArticle()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mEventsData:Ljava/util/List;

    .line 194
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {p1}, Lcom/living/emo/bean/Notice;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/Notice$DataBean;

    invoke-virtual {p1}, Lcom/living/emo/bean/Notice$DataBean;->getArticle()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mRecommendsData:Ljava/util/List;

    .line 195
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNoticesData:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/NotificationsFragment;->setData(Ljava/util/List;)V

    .line 196
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mWebBox:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotificationsAdapter:Lcom/living/emo/adapter/NotificationsAdapter;

    iget-object v1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mData:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/living/emo/adapter/NotificationsAdapter;->setData(Ljava/util/List;)V

    .line 198
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 199
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mData:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;

    .line 200
    invoke-virtual {p1}, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/NotificationsFragment;->getArticle(I)V

    .line 202
    :cond_3
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotificationsAdapter:Lcom/living/emo/adapter/NotificationsAdapter;

    new-instance v0, Lcom/living/emo/fragment/-$$Lambda$NotificationsFragment$qFU3w03oGlZGXsUV4nWeXx5YmbI;

    invoke-direct {v0, p0}, Lcom/living/emo/fragment/-$$Lambda$NotificationsFragment$qFU3w03oGlZGXsUV4nWeXx5YmbI;-><init>(Lcom/living/emo/fragment/NotificationsFragment;)V

    invoke-virtual {p1, v0}, Lcom/living/emo/adapter/NotificationsAdapter;->setOnItemChildClickListener(Lcn/bingoogolapple/baseadapter/BGAOnItemChildClickListener;)V

    .line 213
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mArticleTitle:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotificationsAdapter:Lcom/living/emo/adapter/NotificationsAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/Notice$DataBean$ArticleBean;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mData:Ljava/util/List;

    .line 99
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method private showDialog()V
    .locals 2

    .line 218
    invoke-virtual {p0}, Lcom/living/emo/fragment/NotificationsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "loading"

    invoke-static {v0, v1}, Lcom/living/emo/view/WaitDialogView;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearNew(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/living/emo/bean/Notice$DataBean$ArticleBean;",
            ">;)V"
        }
    .end annotation

    .line 273
    iget v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->radioCheckedIndex:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mRecommendsData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 293
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mRecommendsData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {v0}, Lcom/living/emo/bean/Notice;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/bean/Notice$DataBean;

    iget-object v2, p0, Lcom/living/emo/fragment/NotificationsFragment;->mRecommendsData:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/living/emo/bean/Notice$DataBean;->setArticle(Ljava/util/List;)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mEventsData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 288
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mEventsData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 289
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {v0}, Lcom/living/emo/bean/Notice;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/bean/Notice$DataBean;

    iget-object v2, p0, Lcom/living/emo/fragment/NotificationsFragment;->mEventsData:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/living/emo/bean/Notice$DataBean;->setArticle(Ljava/util/List;)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mUpdatesData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 283
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mUpdatesData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 284
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {v0}, Lcom/living/emo/bean/Notice;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/bean/Notice$DataBean;

    iget-object v2, p0, Lcom/living/emo/fragment/NotificationsFragment;->mUpdatesData:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/living/emo/bean/Notice$DataBean;->setArticle(Ljava/util/List;)V

    goto :goto_0

    .line 275
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearNew: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNoticesData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAG"

    invoke-static {v2, v0}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNoticesData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNoticesData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {v0}, Lcom/living/emo/bean/Notice;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/living/emo/bean/Notice$DataBean;

    iget-object v2, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNoticesData:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/living/emo/bean/Notice$DataBean;->setArticle(Ljava/util/List;)V

    :goto_0
    move v0, v1

    move v2, v0

    .line 298
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 299
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;

    invoke-virtual {v3}, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->isIsnew()Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 303
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v2, p1, :cond_6

    .line 304
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {p1}, Lcom/living/emo/bean/Notice;->getData()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->radioCheckedIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/Notice$DataBean;

    invoke-virtual {p1, v1}, Lcom/living/emo/bean/Notice$DataBean;->setHasnew(Z)V

    .line 305
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mBGABadgeRadioButtons:[Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;

    iget v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->radioCheckedIndex:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeRadioButton;->hiddenBadge()V

    .line 307
    :cond_6
    invoke-static {}, Lcom/living/emo/util/NoticesBean;->getInstance()Lcom/living/emo/util/NoticesBean;

    move-result-object p1

    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {p1, v0}, Lcom/living/emo/util/NoticesBean;->setNotice(Lcom/living/emo/bean/Notice;)V

    .line 308
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNoticeSharedPreferences:Lcom/living/emo/util/NoticeSharedPreferences;

    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotice:Lcom/living/emo/bean/Notice;

    invoke-virtual {p1, v0}, Lcom/living/emo/util/NoticeSharedPreferences;->setData(Lcom/living/emo/bean/Notice;)V

    return-void
.end method

.method public synthetic lambda$initViews$0$NotificationsFragment(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initViews: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TAG"

    invoke-static {p2, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotificationsAdapter:Lcom/living/emo/adapter/NotificationsAdapter;

    invoke-virtual {p1}, Lcom/living/emo/adapter/NotificationsAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;

    .line 205
    invoke-virtual {p1}, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->isIsnew()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 206
    invoke-virtual {p1, p2}, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->setIsnew(Z)V

    .line 207
    iget-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotificationsAdapter:Lcom/living/emo/adapter/NotificationsAdapter;

    invoke-virtual {p2}, Lcom/living/emo/adapter/NotificationsAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/living/emo/fragment/NotificationsFragment;->clearNew(Ljava/util/List;)V

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/living/emo/bean/Notice$DataBean$ArticleBean;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/living/emo/fragment/NotificationsFragment;->getArticle(I)V

    .line 210
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotificationsAdapter:Lcom/living/emo/adapter/NotificationsAdapter;

    invoke-virtual {p1, p3}, Lcom/living/emo/adapter/NotificationsAdapter;->setCurrIndex(I)V

    .line 211
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNotificationsAdapter:Lcom/living/emo/adapter/NotificationsAdapter;

    invoke-virtual {p1}, Lcom/living/emo/adapter/NotificationsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected loadRootViewResId()I
    .locals 1

    const v0, 0x7f0c0072

    return v0
.end method

.method public loadWebview(Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "{{content}}"

    if-eqz v1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/living/emo/fragment/NotificationsFragment;->HTML:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->HTML:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p1

    .line 269
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 314
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onDestroyView()V

    .line 315
    invoke-static {}, Lcom/living/emo/view/WaitDialogView;->dismiss()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 154
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onPause()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 258
    invoke-super {p0}, Lcom/living/emo/fragment/AbstractBaseFragment;->onStop()V

    .line 259
    iget-object v0, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNoticeCacheContent:Lcom/living/emo/util/NoticeCacheContent;

    invoke-virtual {v0}, Lcom/living/emo/util/NoticeCacheContent;->save()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/living/emo/fragment/NotificationsFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/living/emo/util/NoticeSharedPreferences;->getInstance(Landroid/content/Context;)Lcom/living/emo/util/NoticeSharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/living/emo/fragment/NotificationsFragment;->mNoticeSharedPreferences:Lcom/living/emo/util/NoticeSharedPreferences;

    .line 69
    invoke-direct {p0, p1}, Lcom/living/emo/fragment/NotificationsFragment;->initViews(Landroid/view/View;)V

    .line 70
    invoke-direct {p0}, Lcom/living/emo/fragment/NotificationsFragment;->initEvents()V

    .line 71
    invoke-direct {p0}, Lcom/living/emo/fragment/NotificationsFragment;->initDatas()V

    return-void
.end method
