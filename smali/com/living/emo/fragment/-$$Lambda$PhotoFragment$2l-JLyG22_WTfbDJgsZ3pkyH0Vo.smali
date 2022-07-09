.class public final synthetic Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$2l-JLyG22_WTfbDJgsZ3pkyH0Vo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/living/emo/adapter/PhotoListAdapter$OnClickItemListener;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/fragment/PhotoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/fragment/PhotoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$2l-JLyG22_WTfbDJgsZ3pkyH0Vo;->f$0:Lcom/living/emo/fragment/PhotoFragment;

    return-void
.end method


# virtual methods
.method public final onClickItem(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lcom/living/emo/fragment/-$$Lambda$PhotoFragment$2l-JLyG22_WTfbDJgsZ3pkyH0Vo;->f$0:Lcom/living/emo/fragment/PhotoFragment;

    invoke-virtual {v0, p1}, Lcom/living/emo/fragment/PhotoFragment;->lambda$initView$0$PhotoFragment(Ljava/io/File;)V

    return-void
.end method
