.class public final Lof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/controls/licensing/LicenseInfoControl;


# direct methods
.method public constructor <init>(Lcom/kms/gui/controls/licensing/LicenseInfoControl;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lof;->a:Lcom/kms/gui/controls/licensing/LicenseInfoControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lof;->a:Lcom/kms/gui/controls/licensing/LicenseInfoControl;

    invoke-virtual {v0}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kms/activation/gui/LicenseInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
