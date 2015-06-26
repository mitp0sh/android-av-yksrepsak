.class public final LpO;
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
    .line 265
    iput-object p1, p0, LpO;->a:Lcom/kms/issues/KisIssuesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kms/issues/KisIssuesFragment;B)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0, p1}, LpO;-><init>(Lcom/kms/issues/KisIssuesFragment;)V

    return-void
.end method

.method private a(LsZ;)V
    .locals 2

    .prologue
    .line 268
    sget-object v1, LpM;->b:[I

    invoke-virtual {p1}, LsZ;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v0}, Lcom/kms/licensing/LicenseEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 274
    :goto_0
    return-void

    .line 270
    :pswitch_0
    iget-object v0, p0, LpO;->a:Lcom/kms/issues/KisIssuesFragment;

    invoke-static {v0}, Lcom/kms/issues/KisIssuesFragment;->c(Lcom/kms/issues/KisIssuesFragment;)V

    .line 271
    iget-object v0, p0, LpO;->a:Lcom/kms/issues/KisIssuesFragment;

    iget-object v1, p0, LpO;->a:Lcom/kms/issues/KisIssuesFragment;

    invoke-static {v1}, Lcom/kms/issues/KisIssuesFragment;->a(Lcom/kms/issues/KisIssuesFragment;)Lpw;

    move-result-object v1

    invoke-virtual {v1}, Lpw;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kms/issues/KisIssuesFragment;->a(Lcom/kms/issues/KisIssuesFragment;Ljava/util/List;)V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 265
    check-cast p1, LsZ;

    invoke-direct {p0, p1}, LpO;->a(LsZ;)V

    return-void
.end method
