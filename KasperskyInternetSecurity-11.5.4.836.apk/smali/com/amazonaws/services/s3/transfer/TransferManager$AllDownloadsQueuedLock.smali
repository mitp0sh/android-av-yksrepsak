.class final Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;
.super Ljava/lang/Object;
.source "TransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/transfer/TransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllDownloadsQueuedLock"
.end annotation


# instance fields
.field private volatile allQueued:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->allQueued:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/transfer/TransferManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazonaws/services/s3/transfer/TransferManager$1;

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->allQueued:Z

    return v0
.end method

.method static synthetic access$402(Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;
    .param p1, "x1"    # Z

    .prologue
    .line 643
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$AllDownloadsQueuedLock;->allQueued:Z

    return p1
.end method
