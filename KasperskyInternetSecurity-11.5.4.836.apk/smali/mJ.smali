.class public final LmJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antivirus/gui/AvScanResultActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antivirus/gui/AvScanResultActivity;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, LmJ;->a:Lcom/kms/antivirus/gui/AvScanResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-static {}, Lsr;->n()Lso;

    move-result-object v1

    .line 43
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lso;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 44
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lso;->a(ILjava/lang/Object;)Lss;

    .line 45
    invoke-virtual {v1}, Lso;->g_()V

    .line 47
    :cond_0
    iget-object v0, p0, LmJ;->a:Lcom/kms/antivirus/gui/AvScanResultActivity;

    invoke-virtual {v0}, Lcom/kms/antivirus/gui/AvScanResultActivity;->finish()V

    .line 48
    return-void
.end method
