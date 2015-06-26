.class public Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;
.super Ljava/io/FilterInputStream;
.source "ByteRangeCapturingInputStream.java"


# instance fields
.field private final block:[B

.field private blockPosition:I

.field private final endingPosition:J

.field private markedBlockPosition:I

.field private markedStreamPosition:J

.field private final startingPosition:J

.field private streamPosition:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "startingPosition"    # J
    .param p4, "endingPosition"    # J

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    .line 38
    cmp-long v1, p2, p4

    if-ltz v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid byte range specified: the starting position must be less than the ending position"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    iput-wide p2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->startingPosition:J

    .line 43
    iput-wide p4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->endingPosition:J

    .line 44
    sub-long v1, p4, p2

    long-to-int v0, v1

    .line 45
    .local v0, "blockSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->block:[B

    .line 46
    return-void
.end method


# virtual methods
.method public getBlock()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->block:[B

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 68
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markedStreamPosition:J

    .line 70
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markedBlockPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 54
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 55
    .local v0, "data":I
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 62
    .end local v0    # "data":I
    :goto_0
    return v0

    .line 57
    .restart local v0    # "data":I
    :cond_0
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->startingPosition:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->endingPosition:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->block:[B

    iget v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 61
    :cond_1
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 85
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 86
    .local v0, "bytesRead":I
    if-ne v0, v2, :cond_0

    move v0, v2

    .line 97
    .end local v0    # "bytesRead":I
    :goto_0
    return v0

    .line 88
    .restart local v0    # "bytesRead":I
    :cond_0
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->startingPosition:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->endingPosition:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 90
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->startingPosition:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->endingPosition:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->block:[B

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    .line 89
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    .end local v1    # "i":I
    :cond_2
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 77
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markedStreamPosition:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    .line 79
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markedBlockPosition:I

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
