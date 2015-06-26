.class public final Lke;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb;


# instance fields
.field private a:F

.field private b:Z

.field private c:Lcom/kms/KisShieldView;


# direct methods
.method public constructor <init>(Lcom/kms/KisShieldView;FZ)V
    .locals 1

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput-object p1, p0, Lke;->c:Lcom/kms/KisShieldView;

    .line 683
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lke;->a:F

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lke;->b:Z

    .line 685
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 689
    iget-object v0, p0, Lke;->c:Lcom/kms/KisShieldView;

    invoke-virtual {v0}, Lcom/kms/KisShieldView;->a()V

    .line 690
    iget-object v0, p0, Lke;->c:Lcom/kms/KisShieldView;

    invoke-virtual {v0}, Lcom/kms/KisShieldView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    iget-object v0, p0, Lke;->c:Lcom/kms/KisShieldView;

    invoke-virtual {v0}, Lcom/kms/KisShieldView;->b()V

    .line 699
    :goto_0
    return-void

    .line 693
    :cond_0
    iget v0, p0, Lke;->a:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lke;->c:Lcom/kms/KisShieldView;

    iget v1, p0, Lke;->a:F

    iget-boolean v2, p0, Lke;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/kms/KisShieldView;->setProgress(FZ)V

    goto :goto_0

    .line 696
    :cond_1
    iget-object v0, p0, Lke;->c:Lcom/kms/KisShieldView;

    invoke-static {v0}, Lcom/kms/KisShieldView;->i(Lcom/kms/KisShieldView;)Z

    goto :goto_0
.end method
