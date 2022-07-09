.class public final synthetic Lcom/living/emo/adapter/-$$Lambda$PhotoListAdapter$rA-rdbcenopvHq98ocaYh9UMSjY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/living/emo/adapter/PhotoListAdapter;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/living/emo/adapter/PhotoListAdapter;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/living/emo/adapter/-$$Lambda$PhotoListAdapter$rA-rdbcenopvHq98ocaYh9UMSjY;->f$0:Lcom/living/emo/adapter/PhotoListAdapter;

    iput-object p2, p0, Lcom/living/emo/adapter/-$$Lambda$PhotoListAdapter$rA-rdbcenopvHq98ocaYh9UMSjY;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/living/emo/adapter/-$$Lambda$PhotoListAdapter$rA-rdbcenopvHq98ocaYh9UMSjY;->f$0:Lcom/living/emo/adapter/PhotoListAdapter;

    iget-object v1, p0, Lcom/living/emo/adapter/-$$Lambda$PhotoListAdapter$rA-rdbcenopvHq98ocaYh9UMSjY;->f$1:Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lcom/living/emo/adapter/PhotoListAdapter;->lambda$onBindViewHolder$0$PhotoListAdapter(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method
