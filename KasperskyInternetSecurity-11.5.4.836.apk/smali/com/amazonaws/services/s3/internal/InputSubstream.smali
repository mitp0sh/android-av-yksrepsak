.class public final Lcom/amazonaws/services/s3/internal/InputSubstream;
.super Ljava/io/FilterInputStream;
.source "InputSubstream.java"


# instance fields
.field private final closeSourceStream:Z

.field private currentPosition:J

.field private markedPosition:J

.field private final requestedLength:J

.field private final requestedOffset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJZ)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "closeSourceStream"    # Z

    .prologue
    const-wide/16 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->markedPosition:J

    .line 52
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    .line 53
    iput-wide p4, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedLength:J

    .line 54
    iput-wide p2, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    .line 55
    iput-boolean p6, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->closeSourceStream:Z

    .line 56
    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedLength:J

    .line 110
    .local v0, "bytesRemaining":J
    :goto_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    return v2

    .line 108
    .end local v0    # "bytesRemaining":J
    :cond_0
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedLength:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    sub-long v0, v2, v4

    .restart local v0    # "bytesRemaining":J
    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->closeSourceStream:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 102
    :cond_0
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->markedPosition:J

    .line 87
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 60
    new-array v0, v2, [B

    .line 61
    .local v0, "b":[B
    invoke-virtual {p0, v0, v3, v2}, Lcom/amazonaws/services/s3/internal/InputSubstream;->read([BII)I

    move-result v1

    .line 63
    .local v1, "bytesRead":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 64
    .end local v1    # "bytesRead":I
    :goto_0
    return v1

    .restart local v1    # "bytesRead":I
    :cond_0
    aget-byte v1, v0, v3

    goto :goto_0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    :goto_0
    iget-wide v5, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    iget-wide v7, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 70
    iget-wide v5, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    iget-wide v7, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    sub-long/2addr v5, v7

    invoke-super {p0, v5, v6}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v3

    .line 71
    .local v3, "skippedBytes":J
    iget-wide v5, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    goto :goto_0

    .line 74
    .end local v3    # "skippedBytes":J
    :cond_0
    iget-wide v5, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedLength:J

    iget-wide v7, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    add-long/2addr v5, v7

    iget-wide v7, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    sub-long v1, v5, v7

    .line 75
    .local v1, "bytesRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gtz v5, :cond_1

    const/4 v0, -0x1

    .line 81
    :goto_1
    return v0

    .line 77
    :cond_1
    int-to-long v5, p3

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int p3, v5

    .line 78
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 79
    .local v0, "bytesRead":I
    iget-wide v5, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->markedPosition:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    .line 93
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
