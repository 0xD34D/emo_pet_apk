.class Lcom/living/emo/fragment/PreferenceFragment$2;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Lcom/living/emo/blebean/parse/BlePreferenceResponseParse$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/PreferenceFragment;->onMessageEvent(Lcom/living/emo/event/JsonEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/PreferenceFragment;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment$2;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(IIIII)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/living/emo/fragment/PreferenceFragment$2;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    iget-object v0, v0, Lcom/living/emo/fragment/PreferenceFragment;->mVolumeSeekBar:Lcom/jaygoo/widget/RangeSeekBar;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/jaygoo/widget/RangeSeekBar;->setProgress(F)V

    if-nez p2, :cond_0

    .line 245
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment$2;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/PreferenceFragment;->access$500(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment$2;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/PreferenceFragment;->access$600(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->toggle()V

    :goto_0
    if-nez p3, :cond_1

    .line 252
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment$2;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/PreferenceFragment;->access$700(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_1

    .line 255
    :cond_1
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment$2;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/PreferenceFragment;->access$800(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->toggle()V

    :goto_1
    if-nez p4, :cond_2

    .line 259
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment$2;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/PreferenceFragment;->access$900(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_2

    .line 262
    :cond_2
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment$2;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/PreferenceFragment;->access$1000(Lcom/living/emo/fragment/PreferenceFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->toggle()V

    :goto_2
    if-nez p5, :cond_3

    .line 266
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment$2;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    iget-object p1, p1, Lcom/living/emo/fragment/PreferenceFragment;->mSoundOff:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->toggle()V

    goto :goto_3

    .line 269
    :cond_3
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment$2;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    iget-object p1, p1, Lcom/living/emo/fragment/PreferenceFragment;->mSoundOn:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->toggle()V

    .line 271
    :goto_3
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment$2;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    sget-object p2, Lcom/living/emo/fragment/PreferenceFragment$State;->MAIN:Lcom/living/emo/fragment/PreferenceFragment$State;

    invoke-static {p1, p2}, Lcom/living/emo/fragment/PreferenceFragment;->access$1100(Lcom/living/emo/fragment/PreferenceFragment;Lcom/living/emo/fragment/PreferenceFragment$State;)V

    .line 272
    iget-object p1, p0, Lcom/living/emo/fragment/PreferenceFragment$2;->this$0:Lcom/living/emo/fragment/PreferenceFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/living/emo/fragment/PreferenceFragment;->access$1202(Lcom/living/emo/fragment/PreferenceFragment;Z)Z

    return-void
.end method
