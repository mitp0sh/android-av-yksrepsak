.class final LqM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:LqK;


# direct methods
.method constructor <init>(LqK;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, LqM;->b:LqK;

    iput-object p2, p0, LqM;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 55
    const-wide/16 v0, 0xdac

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    const-string v0, "KMS"

    const-string v1, "force exit from the loop."

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, LqM;->b:LqK;

    invoke-static {v0}, LqK;->a(LqK;)Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 64
    :try_start_1
    iget-object v1, p0, LqM;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    :try_start_2
    iget-object v0, p0, LqM;->a:Ljava/lang/Object;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 66
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 79
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 69
    :catch_1
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
