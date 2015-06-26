.class public final Lur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbc;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lur;->a:Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lsk;->l()V

    .line 18
    invoke-virtual {v0}, Lsk;->g_()V

    .line 20
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->D()Lbb;

    move-result-object v0

    .line 21
    invoke-interface {v0, p0}, Lbb;->a(Lbc;)V

    .line 22
    invoke-interface {v0}, Lbb;->requestAvailableActivationCodes()V

    .line 23
    return-void
.end method

.method public final a(J)V
    .locals 4

    .prologue
    .line 62
    iget-object v1, p0, Lur;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    iget-object v0, p0, Lur;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 67
    :cond_0
    :try_start_2
    iget-object v0, p0, Lur;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lut;J)V
    .locals 4

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lus;

    const-wide/16 v2, -0x1

    invoke-direct {v1, p0, v2, v3, p1}, Lus;-><init>(Lur;JLut;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    .line 30
    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_0

    .line 33
    invoke-virtual {v0, p1}, Lsk;->a([Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lsk;->g_()V

    .line 36
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 37
    new-instance v1, Lup;

    aget-object v2, p1, v0

    invoke-direct {v1, v2}, Lup;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1}, Lup;->a()V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Lsk;->l()V

    .line 42
    invoke-virtual {v0}, Lsk;->g_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    :cond_1
    iget-object v1, p0, Lur;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_1
    iget-object v0, p0, Lur;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 47
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 48
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lur;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_2
    iget-object v2, p0, Lur;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 47
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method
