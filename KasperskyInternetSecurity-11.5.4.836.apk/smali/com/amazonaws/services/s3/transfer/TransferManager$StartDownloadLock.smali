.class final Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;
.super Ljava/lang/Object;
.source "TransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/transfer/TransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartDownloadLock"
.end annotation


# instance fields
.field private volatile downloadReady:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;->downloadReady:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/transfer/TransferManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazonaws/services/s3/transfer/TransferManager$1;

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;->downloadReady:Z

    return v0
.end method

.method static synthetic access$102(Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;
    .param p1, "x1"    # Z

    .prologue
    .line 647
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/transfer/TransferManager$StartDownloadLock;->downloadReady:Z

    return p1
.end method
