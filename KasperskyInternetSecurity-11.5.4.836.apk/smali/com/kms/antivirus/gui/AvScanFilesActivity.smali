.class public Lcom/kms/antivirus/gui/AvScanFilesActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/4 v1, 0x2

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 26
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    invoke-interface {v0}, Lgz;->a()LgE;

    move-result-object v9

    .line 30
    if-nez v9, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->finish()V

    .line 83
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 41
    if-eqz v10, :cond_9

    .line 42
    const-string v0, "SCAN_PATH"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 43
    const-string v0, "SCAN_MODE"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 44
    const-string v3, "com.kms.AvScanFilesActivity.nosdcard"

    invoke-virtual {v10, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 45
    const-string v3, "com.kms.AvScanFilesActivity.scansysmem"

    invoke-virtual {v10, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object v8, v7

    move v7, v5

    move v5, v3

    .line 47
    :goto_1
    if-ne v0, v4, :cond_1

    .line 48
    if-nez v8, :cond_4

    move v0, v1

    .line 55
    :cond_1
    :goto_2
    invoke-static {}, Lmx;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 56
    invoke-static {}, Lmx;->c()I

    move-result v0

    .line 68
    :cond_2
    :goto_3
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_6

    .line 69
    invoke-static {}, Lmx;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    const-string v0, "/"

    invoke-static {v9, v1, v0, v2, v5}, Lmx;->a(LgE;ILjava/lang/String;ZZ)Ljava/lang/Thread;

    .line 82
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->finish()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 51
    goto :goto_2

    .line 60
    :cond_5
    if-eqz v10, :cond_8

    .line 61
    const-string v3, "ResetUserAction"

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 62
    :goto_5
    if-eqz v3, :cond_2

    .line 63
    invoke-static {v4, v6}, Lmx;->a(IZ)V

    .line 64
    invoke-virtual {p0, v4}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->setResult(I)V

    goto :goto_3

    .line 72
    :cond_6
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    .line 73
    invoke-static {}, Lmx;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    const/16 v0, 0x8

    const-string v1, "/"

    invoke-static {v9, v0, v1, v2, v5}, Lmx;->a(LgE;ILjava/lang/String;ZZ)Ljava/lang/Thread;

    goto :goto_4

    .line 77
    :cond_7
    invoke-static {}, Lmx;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    invoke-static {v9, v2, v8, v7, v5}, Lmx;->a(LgE;ILjava/lang/String;ZZ)Ljava/lang/Thread;

    goto :goto_4

    :cond_8
    move v3, v2

    goto :goto_5

    :cond_9
    move v5, v6

    move v7, v6

    move-object v8, v0

    move v0, v4

    goto :goto_1
.end method
