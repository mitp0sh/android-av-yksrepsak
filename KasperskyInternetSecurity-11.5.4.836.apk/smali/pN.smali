.class public final LpN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:Lcom/kms/issues/KisIssuesFragment;


# direct methods
.method private constructor <init>(Lcom/kms/issues/KisIssuesFragment;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, LpN;->a:Lcom/kms/issues/KisIssuesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/issues/KisIssuesFragment;B)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1}, LpN;-><init>(Lcom/kms/issues/KisIssuesFragment;)V

    return-void
.end method

.method private a(Lpu;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, LpN;->a:Lcom/kms/issues/KisIssuesFragment;

    invoke-static {v0}, Lcom/kms/issues/KisIssuesFragment;->a(Lcom/kms/issues/KisIssuesFragment;)Lpw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, LpN;->a:Lcom/kms/issues/KisIssuesFragment;

    invoke-static {v0}, Lcom/kms/issues/KisIssuesFragment;->a(Lcom/kms/issues/KisIssuesFragment;)Lpw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpw;->a(Lpu;)V

    .line 243
    :cond_0
    sget-object v1, LpM;->a:[I

    invoke-virtual {p1}, Lpu;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/issues/IssueEventType;

    invoke-virtual {v0}, Lcom/kms/issues/IssueEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    iget-object v0, p0, LpN;->a:Lcom/kms/issues/KisIssuesFragment;

    invoke-static {v0}, Lcom/kms/issues/KisIssuesFragment;->b(Lcom/kms/issues/KisIssuesFragment;)V

    .line 254
    return-void

    .line 247
    :pswitch_0
    invoke-direct {p0, p1}, LpN;->b(Lpu;)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lpu;)V
    .locals 2

    .prologue
    .line 257
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    .line 258
    invoke-virtual {p1}, Lpu;->a()Lps;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Lps;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, LpN;->a:Lcom/kms/issues/KisIssuesFragment;

    iget-object v1, p0, LpN;->a:Lcom/kms/issues/KisIssuesFragment;

    invoke-static {v1}, Lcom/kms/issues/KisIssuesFragment;->a(Lcom/kms/issues/KisIssuesFragment;)Lpw;

    move-result-object v1

    invoke-virtual {v1}, Lpw;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/issues/KisIssuesFragment;->a(Lcom/kms/issues/KisIssuesFragment;Ljava/util/List;)V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 235
    check-cast p1, Lpu;

    invoke-direct {p0, p1}, LpN;->a(Lpu;)V

    return-void
.end method
