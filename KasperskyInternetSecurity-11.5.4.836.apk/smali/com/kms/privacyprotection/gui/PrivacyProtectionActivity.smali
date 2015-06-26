.class public Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements LuU;


# instance fields
.field private final a:Lvu;

.field private final b:Lvt;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 30
    new-instance v0, Lvu;

    invoke-direct {v0, p0, v1}, Lvu;-><init>(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;B)V

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a:Lvu;

    .line 33
    new-instance v0, Lvt;

    invoke-direct {v0, p0, v1}, Lvt;-><init>(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;B)V

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->b:Lvt;

    .line 114
    return-void
.end method

.method public static synthetic a(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, LjJ;->n()Landroid/os/Handler;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method

.method private static a(Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, LjJ;->n()Landroid/os/Handler;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method

.method public static synthetic a(Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->c:Z

    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a:Lvu;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->b:Lvt;

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030005

    invoke-virtual {p0, v0, v1}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->a(II)V

    .line 43
    invoke-static {p0}, LoL;->a(Landroid/app/Activity;)V

    .line 44
    invoke-static {p0}, LoL;->b(Landroid/app/Activity;)V

    .line 46
    const v0, 0x7f0b004c

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v2

    invoke-virtual {v2}, Lsm;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const v2, 0x7f0700fd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 53
    :goto_0
    invoke-static {}, Lsr;->f()Lsm;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mode"

    invoke-virtual {v0}, Lsm;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->c:Z

    .line 55
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->c()V

    .line 56
    iget-boolean v0, p0, Lcom/kms/privacyprotection/gui/PrivacyProtectionActivity;->c:Z

    invoke-static {v0}, Lcom/google/android/apps/analytics/easytracking/GA;->n(Z)V

    .line 57
    return-void

    .line 50
    :cond_0
    const v2, 0x7f0700fc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 54
    goto :goto_1
.end method
