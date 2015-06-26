.class final LqL;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/Object;

.field private synthetic c:LqK;


# direct methods
.method constructor <init>(LqK;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, LqL;->c:LqK;

    iput-object p2, p0, LqL;->a:Ljava/lang/String;

    iput-object p3, p0, LqL;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 40
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    iget-object v1, p0, LqL;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 41
    iget-object v0, p0, LqL;->c:LqK;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, LqK;->a(LqK;Landroid/os/Looper;)Landroid/os/Looper;

    .line 42
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 43
    iget-object v1, p0, LqL;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, LqL;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const-string v0, "KMS"

    const-string v1, "exit from the loop!!!"

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
