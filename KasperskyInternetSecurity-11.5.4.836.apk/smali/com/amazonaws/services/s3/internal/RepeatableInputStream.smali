.class public Lcom/amazonaws/services/s3/internal/RepeatableInputStream;
.super Ljava/io/InputStream;
.source "RepeatableInputStream.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private buffer:[B

.field private bufferOffset:I

.field private bufferSize:I

.field private bytesReadPastMark:J

.field private is:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    iput-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->is:Ljava/io/InputStream;

    .line 39
    iput v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    .line 40
    iput v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    .line 42
    iput-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->is:Ljava/io/InputStream;

    .line 60
    iput p2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    .line 61
    iget v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    .line 63
    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Underlying input stream will be repeatable up to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 67
    :cond_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 137
    return-void
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 8
    .param p1, "readlimit"    # I

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input stream marked at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 106
    :cond_0
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    iget v3, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    if-eqz v1, :cond_1

    .line 112
    iget v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    new-array v0, v1, [B

    .line 113
    .local v0, "newBuffer":[B
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    iget v6, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    .line 115
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    iget v3, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v0    # "newBuffer":[B
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    .line 120
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    .line 121
    iget v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 187
    .local v1, "tmp":[B
    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->read([B)I

    move-result v0

    .line 188
    .local v0, "count":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 189
    const/4 v2, 0x0

    aget-byte v0, v1, v2

    .line 191
    .end local v0    # "count":I
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I
    .param p3, "outLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    if-eqz v2, :cond_2

    .line 146
    move v0, p3

    .line 147
    .local v0, "bytesFromBuffer":I
    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    add-int/2addr v2, v0

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 148
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    long-to-int v2, v2

    iget v3, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    sub-int v0, v2, v3

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    iget v3, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    move v1, v0

    .line 179
    .end local v0    # "bytesFromBuffer":I
    :cond_1
    :goto_0
    return v1

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 160
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 165
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget v4, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    .line 166
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    long-to-int v3, v3

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    .line 177
    :goto_1
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    goto :goto_0

    .line 170
    :cond_3
    sget-object v2, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    sget-object v2, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buffer size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been exceeded and the input stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "will not be repeatable until the next mark. Freeing buffer memory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 174
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->buffer:[B

    goto :goto_1
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 79
    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset after reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferOffset:I

    .line 88
    return-void

    .line 84
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input stream cannot be reset as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bytesReadPastMark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes have been written, exceeding the available buffer size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/amazonaws/services/s3/internal/RepeatableInputStream;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
