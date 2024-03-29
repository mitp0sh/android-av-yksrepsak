.class Lcom/google/tagmanager/HitSendingThreadImpl;
.super Ljava/lang/Thread;
.source "HitSendingThreadImpl.java"

# interfaces
.implements Lcom/google/tagmanager/HitSendingThread;


# static fields
.field private static sInstance:Lcom/google/tagmanager/HitSendingThreadImpl;


# instance fields
.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mDisabled:Z

.field private volatile mUrlStore:Lcom/google/tagmanager/HitStore;

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 37
    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 21
    iput-boolean v1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mDisabled:Z

    .line 22
    iput-boolean v1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mClosed:Z

    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mContext:Landroid/content/Context;

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/google/tagmanager/HitSendingThreadImpl;->start()V

    .line 44
    return-void

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/HitStore;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "store"    # Lcom/google/tagmanager/HitStore;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 48
    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 21
    iput-boolean v1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mDisabled:Z

    .line 22
    iput-boolean v1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mClosed:Z

    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mContext:Landroid/content/Context;

    .line 54
    :goto_0
    iput-object p2, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mUrlStore:Lcom/google/tagmanager/HitStore;

    .line 55
    invoke-virtual {p0}, Lcom/google/tagmanager/HitSendingThreadImpl;->start()V

    .line 56
    return-void

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/tagmanager/HitSendingThreadImpl;)Lcom/google/tagmanager/HitStore;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/HitSendingThreadImpl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mUrlStore:Lcom/google/tagmanager/HitStore;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/tagmanager/HitSendingThreadImpl;Lcom/google/tagmanager/HitStore;)Lcom/google/tagmanager/HitStore;
    .locals 0
    .param p0, "x0"    # Lcom/google/tagmanager/HitSendingThreadImpl;
    .param p1, "x1"    # Lcom/google/tagmanager/HitStore;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mUrlStore:Lcom/google/tagmanager/HitStore;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/tagmanager/HitSendingThreadImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/tagmanager/HitSendingThreadImpl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/google/tagmanager/HitSendingThreadImpl;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/google/tagmanager/HitSendingThreadImpl;->sInstance:Lcom/google/tagmanager/HitSendingThreadImpl;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/google/tagmanager/HitSendingThreadImpl;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/HitSendingThreadImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/tagmanager/HitSendingThreadImpl;->sInstance:Lcom/google/tagmanager/HitSendingThreadImpl;

    .line 32
    :cond_0
    sget-object v0, Lcom/google/tagmanager/HitSendingThreadImpl;->sInstance:Lcom/google/tagmanager/HitSendingThreadImpl;

    return-object v0
.end method

.method private printStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 98
    .local v1, "stream":Ljava/io/PrintStream;
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 100
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method


# virtual methods
.method close()V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mClosed:Z

    .line 131
    invoke-virtual {p0}, Lcom/google/tagmanager/HitSendingThreadImpl;->interrupt()V

    .line 132
    return-void
.end method

.method getQueueSize()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method getStore()Lcom/google/tagmanager/HitStore;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mUrlStore:Lcom/google/tagmanager/HitStore;

    return-object v0
.end method

.method isDisabled()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mDisabled:Z

    return v0
.end method

.method public queueToThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 105
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mClosed:Z

    if-nez v3, :cond_1

    .line 111
    :try_start_0
    iget-object v3, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 112
    .local v1, "r":Ljava/lang/Runnable;
    iget-boolean v3, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mDisabled:Z

    if-nez v3, :cond_0

    .line 113
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 115
    .end local v1    # "r":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 118
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 119
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on GAThread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/google/tagmanager/HitSendingThreadImpl;->printStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 122
    const-string v3, "Google Analytics is shutting down."

    invoke-static {v3}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 123
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/tagmanager/HitSendingThreadImpl;->mDisabled:Z

    goto :goto_0

    .line 126
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public sendHit(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/tagmanager/HitSendingThreadImpl;->sendHit(Ljava/lang/String;J)V

    .line 66
    return-void
.end method

.method sendHit(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "hitTime"    # J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 70
    move-object v2, p0

    .line 71
    .local v2, "thread":Lcom/google/tagmanager/HitSendingThread;
    new-instance v0, Lcom/google/tagmanager/HitSendingThreadImpl$1;

    move-object v1, p0

    move-wide v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/HitSendingThreadImpl$1;-><init>(Lcom/google/tagmanager/HitSendingThreadImpl;Lcom/google/tagmanager/HitSendingThread;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/HitSendingThreadImpl;->queueToThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
