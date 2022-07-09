.class Lcom/living/emo/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/living/emo/interfaces/IResultContrlView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/MainActivity;->initNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/living/emo/interfaces/IResultContrlView<",
        "Lcom/living/emo/bean/Notice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/MainActivity;

.field final synthetic val$instance:Lcom/living/emo/util/NoticesBean;


# direct methods
.method constructor <init>(Lcom/living/emo/MainActivity;Lcom/living/emo/util/NoticesBean;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    iput-object p2, p0, Lcom/living/emo/MainActivity$1;->val$instance:Lcom/living/emo/util/NoticesBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Ljava/lang/Exception;)V
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Lcom/living/emo/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$000(Lcom/living/emo/MainActivity;)Lcom/living/emo/util/NoticeSharedPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/NoticeSharedPreferences;->getData()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 205
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {v0}, Lcom/living/emo/MainActivity;->access$000(Lcom/living/emo/MainActivity;)Lcom/living/emo/util/NoticeSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/NoticeSharedPreferences;->getData()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/living/emo/bean/Notice;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/Notice;

    .line 206
    invoke-virtual {p1}, Lcom/living/emo/bean/Notice;->getErrcode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/living/emo/MainActivity$1;->val$instance:Lcom/living/emo/util/NoticesBean;

    invoke-virtual {v0, p1}, Lcom/living/emo/util/NoticesBean;->setNotice(Lcom/living/emo/bean/Notice;)V

    .line 209
    iget-object p1, p0, Lcom/living/emo/MainActivity$1;->val$instance:Lcom/living/emo/util/NoticesBean;

    invoke-virtual {p1}, Lcom/living/emo/util/NoticesBean;->isMainNew()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$100(Lcom/living/emo/MainActivity;)Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;->isShowBadge()Z

    move-result p1

    if-nez p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$100(Lcom/living/emo/MainActivity;)Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    move-result-object p1

    const-string v0, "NEW"

    invoke-virtual {p1, v0}, Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;->showTextBadge(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$100(Lcom/living/emo/MainActivity;)Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;->hiddenBadge()V

    :cond_1
    :goto_0
    return-void
.end method

.method public success(Lcom/living/emo/bean/Notice;)V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {v0}, Lcom/living/emo/MainActivity;->access$000(Lcom/living/emo/MainActivity;)Lcom/living/emo/util/NoticeSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/NoticeSharedPreferences;->getVersion()I

    move-result v0

    .line 180
    invoke-virtual {p1}, Lcom/living/emo/bean/Notice;->getVersion()I

    move-result v1

    const-string v2, "NEW"

    if-ne v1, v0, :cond_1

    .line 181
    iget-object p1, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$000(Lcom/living/emo/MainActivity;)Lcom/living/emo/util/NoticeSharedPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/living/emo/util/NoticeSharedPreferences;->getData()Ljava/lang/String;

    move-result-object p1

    .line 182
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/living/emo/bean/Notice;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/living/emo/bean/Notice;

    .line 183
    iget-object v0, p0, Lcom/living/emo/MainActivity$1;->val$instance:Lcom/living/emo/util/NoticesBean;

    invoke-virtual {v0, p1}, Lcom/living/emo/util/NoticesBean;->setNotice(Lcom/living/emo/bean/Notice;)V

    .line 184
    iget-object p1, p0, Lcom/living/emo/MainActivity$1;->val$instance:Lcom/living/emo/util/NoticesBean;

    invoke-virtual {p1}, Lcom/living/emo/util/NoticesBean;->isMainNew()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$100(Lcom/living/emo/MainActivity;)Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;->isShowBadge()Z

    move-result p1

    if-nez p1, :cond_2

    .line 186
    iget-object p1, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$100(Lcom/living/emo/MainActivity;)Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;->showTextBadge(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$100(Lcom/living/emo/MainActivity;)Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;->hiddenBadge()V

    goto :goto_0

    .line 192
    :cond_1
    invoke-static {}, Lcom/living/emo/util/NoticeCacheContent;->getInstance()Lcom/living/emo/util/NoticeCacheContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/living/emo/util/NoticeCacheContent;->clear()V

    .line 193
    iget-object v0, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {v0}, Lcom/living/emo/MainActivity;->access$000(Lcom/living/emo/MainActivity;)Lcom/living/emo/util/NoticeSharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/bean/Notice;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/living/emo/util/NoticeSharedPreferences;->setVersion(I)V

    .line 194
    iget-object v0, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {v0}, Lcom/living/emo/MainActivity;->access$000(Lcom/living/emo/MainActivity;)Lcom/living/emo/util/NoticeSharedPreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/living/emo/util/NoticeSharedPreferences;->setData(Lcom/living/emo/bean/Notice;)V

    .line 195
    iget-object v0, p0, Lcom/living/emo/MainActivity$1;->val$instance:Lcom/living/emo/util/NoticesBean;

    invoke-virtual {v0, p1}, Lcom/living/emo/util/NoticesBean;->setNotice(Lcom/living/emo/bean/Notice;)V

    .line 196
    iget-object p1, p0, Lcom/living/emo/MainActivity$1;->this$0:Lcom/living/emo/MainActivity;

    invoke-static {p1}, Lcom/living/emo/MainActivity;->access$100(Lcom/living/emo/MainActivity;)Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/bingoogolapple/badgeview/BGABadgeLinearLayout;->showTextBadge(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .line 176
    check-cast p1, Lcom/living/emo/bean/Notice;

    invoke-virtual {p0, p1}, Lcom/living/emo/MainActivity$1;->success(Lcom/living/emo/bean/Notice;)V

    return-void
.end method
