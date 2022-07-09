.class Lcom/living/emo/activity/HuntActivity$Treasure;
.super Ljava/lang/Object;
.source "HuntActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/living/emo/activity/HuntActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Treasure"
.end annotation


# instance fields
.field private count:I

.field private isShow:I

.field final synthetic this$0:Lcom/living/emo/activity/HuntActivity;

.field private treasure_container:Landroid/widget/RelativeLayout;

.field private treasure_img:I

.field private treasure_txt:I

.field private treasure_txt_con:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/living/emo/activity/HuntActivity;IILandroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 1

    .line 827
    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->this$0:Lcom/living/emo/activity/HuntActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 795
    iput p1, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_img:I

    .line 800
    iput p1, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_txt:I

    const/16 v0, 0x8

    .line 814
    iput v0, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->isShow:I

    .line 819
    iput p1, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->count:I

    .line 828
    iput p2, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_img:I

    .line 829
    iput p3, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_txt:I

    .line 830
    iput-object p4, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_container:Landroid/widget/RelativeLayout;

    .line 831
    iput-object p5, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_txt_con:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 875
    iget v0, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->count:I

    return v0
.end method

.method public getIsShow()I
    .locals 1

    .line 867
    iget v0, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->isShow:I

    return v0
.end method

.method public getTreasure_container()Landroid/widget/RelativeLayout;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_container:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTreasure_img()I
    .locals 1

    .line 835
    iget v0, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_img:I

    return v0
.end method

.method public getTreasure_txt()I
    .locals 1

    .line 843
    iget v0, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_txt:I

    return v0
.end method

.method public getTreasure_txt_con()Landroid/widget/TextView;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_txt_con:Landroid/widget/TextView;

    return-object v0
.end method

.method public incrByCount()V
    .locals 1

    .line 879
    iget v0, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->count:I

    const/4 v0, 0x0

    .line 880
    invoke-virtual {p0, v0}, Lcom/living/emo/activity/HuntActivity$Treasure;->setIsShow(I)V

    return-void
.end method

.method public setIsShow(I)V
    .locals 0

    .line 871
    iput p1, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->isShow:I

    return-void
.end method

.method public setTreasure_container(Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_container:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setTreasure_img(I)V
    .locals 0

    .line 839
    iput p1, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_img:I

    return-void
.end method

.method public setTreasure_txt(I)V
    .locals 0

    .line 847
    iput p1, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_txt:I

    return-void
.end method

.method public setTreasure_txt_con(Landroid/widget/TextView;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/living/emo/activity/HuntActivity$Treasure;->treasure_txt_con:Landroid/widget/TextView;

    return-void
.end method
