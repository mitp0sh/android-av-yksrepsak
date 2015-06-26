.class public Lcom/kaspersky/kts/antitheft/c2dm/C2DMReceiver;
.super Lcom/google/android/c2dm/C2DMBaseReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "836416529817"

    invoke-direct {p0, v0}, Lcom/google/android/c2dm/C2DMBaseReceiver;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-string v1, "C2DM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v1

    invoke-virtual {v1}, Lsx;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-string v0, "C2DM"

    const-string v1, "Force ucp update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->D()Lbb;

    move-result-object v0

    invoke-interface {v0}, Lbb;->connect()V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {v0}, Lcom/kaspersky/kts/antitheft/remoting/CommandManager;->b(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->s()LcW;

    move-result-object v0

    invoke-virtual {v0}, LcW;->d()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    const-string v0, "C2DM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Messaging registration error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method
