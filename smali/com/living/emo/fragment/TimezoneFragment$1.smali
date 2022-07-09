.class Lcom/living/emo/fragment/TimezoneFragment$1;
.super Ljava/lang/Object;
.source "TimezoneFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BleTimezoneResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/TimezoneFragment;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/TimezoneFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/TimezoneFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/living/emo/fragment/TimezoneFragment$1;->this$0:Lcom/living/emo/fragment/TimezoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean$TimezoneBean;)V
    .locals 2

    .line 87
    invoke-virtual {p1}, Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean$TimezoneBean;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object p1, p0, Lcom/living/emo/fragment/TimezoneFragment$1;->this$0:Lcom/living/emo/fragment/TimezoneFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/TimezoneFragment;->access$000(Lcom/living/emo/fragment/TimezoneFragment;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f1000d4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/living/emo/fragment/TimezoneFragment$1;->this$0:Lcom/living/emo/fragment/TimezoneFragment;

    invoke-static {v0}, Lcom/living/emo/fragment/TimezoneFragment;->access$000(Lcom/living/emo/fragment/TimezoneFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/living/emo/blebean/response/TimeZoneResponse$DataBean$TimezoneBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/living/emo/fragment/TimezoneFragment$1;->this$0:Lcom/living/emo/fragment/TimezoneFragment;

    sget-object v0, Lcom/living/emo/fragment/TimezoneFragment$State;->SHOW:Lcom/living/emo/fragment/TimezoneFragment$State;

    invoke-static {p1, v0}, Lcom/living/emo/fragment/TimezoneFragment;->access$100(Lcom/living/emo/fragment/TimezoneFragment;Lcom/living/emo/fragment/TimezoneFragment$State;)V

    return-void
.end method
