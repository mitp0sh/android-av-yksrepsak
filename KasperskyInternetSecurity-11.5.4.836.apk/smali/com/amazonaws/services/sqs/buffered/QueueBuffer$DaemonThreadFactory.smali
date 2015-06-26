.class Lcom/amazonaws/services/sqs/buffered/QueueBuffer$DaemonThreadFactory;
.super Ljava/lang/Object;
.source "QueueBuffer.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/sqs/buffered/QueueBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DaemonThreadFactory"
.end annotation


# static fields
.field static threadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazonaws/services/sqs/buffered/QueueBuffer$DaemonThreadFactory;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/sqs/buffered/QueueBuffer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazonaws/services/sqs/buffered/QueueBuffer$1;

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/amazonaws/services/sqs/buffered/QueueBuffer$DaemonThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    .line 248
    sget-object v2, Lcom/amazonaws/services/sqs/buffered/QueueBuffer$DaemonThreadFactory;->threadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    .line 249
    .local v1, "threadNumber":I
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 250
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQSQueueBufferWorkerThread-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 252
    return-object v0
.end method
