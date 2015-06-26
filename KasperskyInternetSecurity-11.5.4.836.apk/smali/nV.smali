.class final LnV;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:LnT;


# direct methods
.method constructor <init>(LnT;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, LnV;->a:LnT;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 79
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 80
    const/4 v0, 0x0

    .line 81
    if-eqz v1, :cond_0

    .line 82
    const-string v0, "total"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    :cond_0
    iget-object v1, p0, LnV;->a:LnT;

    invoke-static {v1}, LnT;->a(LnT;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-eq v0, v3, :cond_1

    .line 86
    iget-object v1, p0, LnV;->a:LnT;

    invoke-static {v1}, LnT;->b(LnT;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 88
    :cond_1
    iget-object v1, p0, LnV;->a:LnT;

    invoke-static {v1}, LnT;->c(LnT;)I

    move-result v1

    if-ge v0, v1, :cond_2

    if-ne v0, v3, :cond_3

    .line 92
    :cond_2
    :try_start_0
    iget-object v0, p0, LnV;->a:LnT;

    invoke-static {v0}, LnT;->b(LnT;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :goto_0
    :try_start_1
    iget-object v0, p0, LnV;->a:LnT;

    invoke-static {v0}, LnT;->d(LnT;)LnW;

    move-result-object v0

    invoke-virtual {v0}, LnW;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :goto_1
    iget-object v0, p0, LnV;->a:LnT;

    invoke-static {v0}, LnT;->e(LnT;)LnX;

    move-result-object v0

    invoke-interface {v0}, LnX;->d()V

    .line 104
    :cond_3
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
