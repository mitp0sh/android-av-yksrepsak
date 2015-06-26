.class public abstract Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;
.super Ljava/io/FilterInputStream;
.source "AbstractRepeatableInputStream.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private bytesReadPastMarkPoint:J

.field private markPoint:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const-wide/16 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->bytesReadPastMarkPoint:J

    .line 38
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->markPoint:J

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized mark(I)V
    .locals 4
    .param p1, "readlimit"    # I

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->markPoint:J

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->bytesReadPastMarkPoint:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->markPoint:J

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->bytesReadPastMarkPoint:J

    .line 53
    sget-object v0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input stream marked at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->markPoint:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
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

    .line 81
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 82
    .local v0, "byteRead":I
    if-eq v0, v1, :cond_0

    .line 83
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->bytesReadPastMarkPoint:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->bytesReadPastMarkPoint:J

    .line 86
    .end local v0    # "byteRead":I
    :goto_0
    return v0

    .restart local v0    # "byteRead":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 93
    .local v0, "count":I
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->bytesReadPastMarkPoint:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->bytesReadPastMarkPoint:J

    .line 94
    return v0
.end method

.method protected abstract reopenWrappedStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized reset()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 62
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->reopenWrappedStream()V

    .line 64
    const-wide/16 v0, 0x0

    .line 65
    .local v0, "skipped":J
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->markPoint:J

    .line 66
    .local v2, "toSkip":J
    :goto_0
    cmp-long v4, v2, v5

    if-lez v4, :cond_0

    .line 67
    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->skip(J)J

    move-result-wide v0

    .line 68
    sub-long/2addr v2, v0

    goto :goto_0

    .line 71
    :cond_0
    sget-object v4, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    sget-object v4, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reseting to mark point "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->markPoint:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " after returning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->bytesReadPastMarkPoint:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 76
    :cond_1
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->bytesReadPastMarkPoint:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 62
    .end local v0    # "skipped":J
    .end local v2    # "toSkip":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 100
    .local v0, "skipped":J
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->bytesReadPastMarkPoint:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/AbstractRepeatableInputStream;->bytesReadPastMarkPoint:J

    .line 101
    return-wide v0
.end method
