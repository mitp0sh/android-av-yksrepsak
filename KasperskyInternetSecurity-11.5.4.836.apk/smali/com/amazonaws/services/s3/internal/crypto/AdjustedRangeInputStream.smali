.class public Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;
.super Ljava/io/InputStream;
.source "AdjustedRangeInputStream.java"


# instance fields
.field private closed:Z

.field private decryptedContents:Ljava/io/InputStream;

.field private virtualAvailable:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 1
    .param p1, "objectContents"    # Ljava/io/InputStream;
    .param p2, "rangeBeginning"    # J
    .param p4, "rangeEnd"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->closed:Z

    .line 44
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->initializeForRead(JJ)V

    .line 45
    return-void
.end method

.method private initializeForRead(JJ)V
    .locals 4
    .param p1, "rangeBeginning"    # J
    .param p3, "rangeEnd"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    sget v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 56
    long-to-int v0, p1

    .line 61
    .local v0, "numBytesToSkip":I
    :goto_0
    if-eqz v0, :cond_1

    .line 64
    :goto_1
    if-lez v0, :cond_1

    .line 65
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 66
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 58
    .end local v0    # "numBytesToSkip":I
    :cond_0
    sget v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    int-to-long v2, v2

    rem-long v2, p1, v2

    long-to-int v1, v2

    .line 59
    .local v1, "offsetIntoBlock":I
    sget v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    add-int v0, v2, v1

    .restart local v0    # "numBytesToSkip":I
    goto :goto_0

    .line 71
    .end local v1    # "offsetIntoBlock":I
    :cond_1
    sub-long v2, p3, p1

    long-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    .line 72
    return-void
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 136
    .local v0, "available":I
    int-to-long v1, v0

    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 141
    .end local v0    # "available":I
    :goto_0
    return v0

    .restart local v0    # "available":I
    :cond_0
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    long-to-int v0, v1

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
    .line 151
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->closed:Z

    .line 153
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 155
    :cond_0
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "result":I
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 82
    const/4 v0, -0x1

    .line 89
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 90
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    .line 96
    :goto_1
    return v0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->close()V

    .line 94
    iput-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    goto :goto_1
.end method

.method public read([BII)I
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 106
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_0

    .line 107
    const/4 v0, -0x1

    .line 120
    .local v0, "numBytesRead":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 121
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    .line 127
    :goto_1
    return v0

    .line 111
    .end local v0    # "numBytesRead":I
    :cond_0
    int-to-long v1, p3

    iget-wide v3, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 114
    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    iget-wide v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    long-to-int p3, v1

    .line 117
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .restart local v0    # "numBytesRead":I
    goto :goto_0

    .line 114
    .end local v0    # "numBytesRead":I
    :cond_2
    const p3, 0x7fffffff

    goto :goto_2

    .line 124
    .restart local v0    # "numBytesRead":I
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->close()V

    .line 125
    iput-wide v5, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    goto :goto_1
.end method
