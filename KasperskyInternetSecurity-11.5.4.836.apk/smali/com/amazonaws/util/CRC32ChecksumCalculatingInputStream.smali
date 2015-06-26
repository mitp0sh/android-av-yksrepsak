.class public Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;
.super Ljava/io/FilterInputStream;
.source "CRC32ChecksumCalculatingInputStream.java"


# instance fields
.field private crc32:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->crc32:Ljava/util/zip/CRC32;

    .line 34
    return-void
.end method


# virtual methods
.method public getCRC32Checksum()J
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 57
    .local v0, "ch":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 60
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 69
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 72
    :cond_0
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 48
    iget-object v0, p0, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
