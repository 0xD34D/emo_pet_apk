.class Lcom/living/emo/fragment/NavSetFragment$1;
.super Ljava/lang/Object;
.source "NavSetFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/living/emo/fragment/NavSetFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/living/emo/fragment/NavSetFragment;


# direct methods
.method constructor <init>(Lcom/living/emo/fragment/NavSetFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/living/emo/fragment/NavSetFragment$1;->this$0:Lcom/living/emo/fragment/NavSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 77
    :sswitch_0
    iget-object p1, p0, Lcom/living/emo/fragment/NavSetFragment$1;->this$0:Lcom/living/emo/fragment/NavSetFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NavSetFragment;->access$000(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/WifiSettingFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/fragment/NavSetFragment;->access$100(Lcom/living/emo/fragment/NavSetFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V

    goto :goto_0

    .line 99
    :sswitch_1
    iget-object p1, p0, Lcom/living/emo/fragment/NavSetFragment$1;->this$0:Lcom/living/emo/fragment/NavSetFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NavSetFragment;->access$800(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/VolumeFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/fragment/NavSetFragment;->access$100(Lcom/living/emo/fragment/NavSetFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V

    goto :goto_0

    .line 90
    :sswitch_2
    iget-object p1, p0, Lcom/living/emo/fragment/NavSetFragment$1;->this$0:Lcom/living/emo/fragment/NavSetFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NavSetFragment;->access$500(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/TimezoneFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/fragment/NavSetFragment;->access$100(Lcom/living/emo/fragment/NavSetFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V

    goto :goto_0

    .line 93
    :sswitch_3
    iget-object p1, p0, Lcom/living/emo/fragment/NavSetFragment$1;->this$0:Lcom/living/emo/fragment/NavSetFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NavSetFragment;->access$600(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/ThanksFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/fragment/NavSetFragment;->access$100(Lcom/living/emo/fragment/NavSetFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V

    goto :goto_0

    .line 96
    :sswitch_4
    iget-object p1, p0, Lcom/living/emo/fragment/NavSetFragment$1;->this$0:Lcom/living/emo/fragment/NavSetFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NavSetFragment;->access$700(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/PowerOffFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/fragment/NavSetFragment;->access$100(Lcom/living/emo/fragment/NavSetFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V

    goto :goto_0

    .line 102
    :sswitch_5
    iget-object p1, p0, Lcom/living/emo/fragment/NavSetFragment$1;->this$0:Lcom/living/emo/fragment/NavSetFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NavSetFragment;->access$900(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/PreferenceFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/fragment/NavSetFragment;->access$100(Lcom/living/emo/fragment/NavSetFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V

    goto :goto_0

    .line 83
    :sswitch_6
    iget-object p1, p0, Lcom/living/emo/fragment/NavSetFragment$1;->this$0:Lcom/living/emo/fragment/NavSetFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NavSetFragment;->access$300(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/FrmareSettingFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/fragment/NavSetFragment;->access$100(Lcom/living/emo/fragment/NavSetFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V

    goto :goto_0

    .line 87
    :sswitch_7
    iget-object p1, p0, Lcom/living/emo/fragment/NavSetFragment$1;->this$0:Lcom/living/emo/fragment/NavSetFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NavSetFragment;->access$400(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/CitySettingFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/fragment/NavSetFragment;->access$100(Lcom/living/emo/fragment/NavSetFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V

    goto :goto_0

    .line 80
    :sswitch_8
    iget-object p1, p0, Lcom/living/emo/fragment/NavSetFragment$1;->this$0:Lcom/living/emo/fragment/NavSetFragment;

    invoke-static {p1}, Lcom/living/emo/fragment/NavSetFragment;->access$200(Lcom/living/emo/fragment/NavSetFragment;)Lcom/living/emo/fragment/AlexaSettingFragment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/living/emo/fragment/NavSetFragment;->access$100(Lcom/living/emo/fragment/NavSetFragment;Lcom/living/emo/fragment/AbstractBaseFragment;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0902bd -> :sswitch_8
        0x7f0902bf -> :sswitch_7
        0x7f0902c3 -> :sswitch_6
        0x7f0902c8 -> :sswitch_5
        0x7f0902ca -> :sswitch_4
        0x7f0902cb -> :sswitch_3
        0x7f0902cd -> :sswitch_2
        0x7f0902cf -> :sswitch_1
        0x7f0902d1 -> :sswitch_0
    .end sparse-switch
.end method
