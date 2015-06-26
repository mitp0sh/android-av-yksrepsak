.class public Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;
.super Ljava/io/FilterInputStream;
.source "MD5DigestCalculatingInputStream.java"


# instance fields
.field private digest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digest:Ljava/security/MessageDigest;

    .line 36
    return-void
.end method


# virtual methods
.method public getMd5Digest()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 69
    .local v0, "ch":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digest:Ljava/security/MessageDigest;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update(B)V

    .line 72
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
    .line 80
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 81
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 84
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
    .line 50
    monitor-enter p0

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method
