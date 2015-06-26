.class public Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
.super Ljava/lang/Object;
.source "QueueBufferConfig.java"


# static fields
.field public static final LONGPOLL_WAIT_TIMEOUT_SECONDS_DEFAULT:I = 0x14

.field private static final LONG_POLL_DEFAULT:Z = true

.field public static final MAX_BATCH_OPEN_MS_DEFAULT:J = 0xc8L

.field public static final MAX_BATCH_SIZE_BYTES:J = 0xffffL

.field public static final MAX_BATCH_SIZE_BYTES_DEFAULT:J = 0xffffL

.field public static final MAX_BATCH_SIZE_DEFAULT:I = 0xa

.field public static final MAX_DONE_RECEIVE_BATCHES_DEFAULT:I = 0xa

.field public static final MAX_INFLIGHT_OUTBOUND_BATCHES_DEFAULT:I = 0x5

.field public static final MAX_INFLIGHT_RECEIVE_BATCHES_DEFAULT:I = 0xa

.field public static final VISIBILITY_TIMEOUT_SECONDS_DEFAULT:I = -0x1


# instance fields
.field private longPoll:Z

.field private longPollWaitTimeoutSeconds:I

.field private maxBatchOpenMs:J

.field private maxBatchSize:I

.field private maxBatchSizeBytes:J

.field private maxDoneReceiveBatches:I

.field private maxInflightOutboundBatches:I

.field private maxInflightReceiveBatches:I

.field private visibilityTimeoutSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/16 v4, 0xa

    .line 150
    const-wide/16 v1, 0xc8

    const/4 v3, 0x5

    const/4 v6, 0x1

    const-wide/32 v7, 0xffff

    const/4 v9, -0x1

    const/16 v10, 0x14

    move-object v0, p0

    move v5, v4

    move v11, v4

    invoke-direct/range {v0 .. v11}, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;-><init>(JIIIZJIII)V

    .line 160
    return-void
.end method

.method public constructor <init>(JIIIZJIII)V
    .locals 0
    .param p1, "maxBatchOpenMs"    # J
    .param p3, "maxInflightOutboundBatches"    # I
    .param p4, "maxInflightReceiveBatches"    # I
    .param p5, "maxDoneReceiveBatches"    # I
    .param p6, "paramLongPoll"    # Z
    .param p7, "maxBatchSizeBytes"    # J
    .param p9, "visibilityTimeout"    # I
    .param p10, "longPollTimeout"    # I
    .param p11, "maxBatch"    # I

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-wide p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchOpenMs:J

    .line 139
    iput p3, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightOutboundBatches:I

    .line 140
    iput p4, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightReceiveBatches:I

    .line 141
    iput p5, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxDoneReceiveBatches:I

    .line 142
    iput-boolean p6, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPoll:Z

    .line 143
    iput-wide p7, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSizeBytes:J

    .line 144
    iput p9, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->visibilityTimeoutSeconds:I

    .line 145
    iput p10, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPollWaitTimeoutSeconds:I

    .line 146
    iput p11, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSize:I

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;)V
    .locals 2
    .param p1, "other"    # Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iget-boolean v0, p1, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPoll:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPoll:Z

    .line 165
    iget v0, p1, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPollWaitTimeoutSeconds:I

    iput v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPollWaitTimeoutSeconds:I

    .line 166
    iget-wide v0, p1, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchOpenMs:J

    iput-wide v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchOpenMs:J

    .line 167
    iget v0, p1, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSize:I

    iput v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSize:I

    .line 168
    iget-wide v0, p1, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSizeBytes:J

    iput-wide v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSizeBytes:J

    .line 169
    iget v0, p1, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxDoneReceiveBatches:I

    iput v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxDoneReceiveBatches:I

    .line 170
    iget v0, p1, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightOutboundBatches:I

    iput v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightOutboundBatches:I

    .line 171
    iget v0, p1, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightReceiveBatches:I

    iput v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightReceiveBatches:I

    .line 172
    iget v0, p1, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->visibilityTimeoutSeconds:I

    iput v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->visibilityTimeoutSeconds:I

    .line 173
    return-void
.end method


# virtual methods
.method public getLongPollWaitTimeoutSeconds()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPollWaitTimeoutSeconds:I

    return v0
.end method

.method public getMaxBatchOpenMs()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchOpenMs:J

    return-wide v0
.end method

.method public getMaxBatchSize()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSize:I

    return v0
.end method

.method public getMaxBatchSizeBytes()J
    .locals 2

    .prologue
    .line 344
    iget-wide v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSizeBytes:J

    return-wide v0
.end method

.method public getMaxDoneReceiveBatches()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxDoneReceiveBatches:I

    return v0
.end method

.method public getMaxInflightOutboundBatches()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightOutboundBatches:I

    return v0
.end method

.method public getMaxInflightReceiveBatches()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightReceiveBatches:I

    return v0
.end method

.method public getVisibilityTimeoutSeconds()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->visibilityTimeoutSeconds:I

    return v0
.end method

.method public isLongPoll()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPoll:Z

    return v0
.end method

.method public setLongPoll(Z)V
    .locals 0
    .param p1, "longPoll"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPoll:Z

    .line 234
    return-void
.end method

.method public setLongPollWaitTimeoutSeconds(I)V
    .locals 0
    .param p1, "longPollWaitTimeoutSeconds"    # I

    .prologue
    .line 397
    iput p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPollWaitTimeoutSeconds:I

    .line 398
    return-void
.end method

.method public setMaxBatchOpenMs(J)V
    .locals 0
    .param p1, "maxBatchOpenMs"    # J

    .prologue
    .line 211
    iput-wide p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchOpenMs:J

    .line 212
    return-void
.end method

.method public setMaxBatchSize(I)V
    .locals 0
    .param p1, "maxBatchSize"    # I

    .prologue
    .line 431
    iput p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSize:I

    .line 432
    return-void
.end method

.method public setMaxBatchSizeBytes(J)V
    .locals 0
    .param p1, "maxBatchSizeBytes"    # J

    .prologue
    .line 354
    iput-wide p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSizeBytes:J

    .line 355
    return-void
.end method

.method public setMaxDoneReceiveBatches(I)V
    .locals 0
    .param p1, "maxDoneReceiveBatches"    # I

    .prologue
    .line 329
    iput p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxDoneReceiveBatches:I

    .line 330
    return-void
.end method

.method public setMaxInflightOutboundBatches(I)V
    .locals 0
    .param p1, "maxInflightOutboundBatches"    # I

    .prologue
    .line 258
    iput p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightOutboundBatches:I

    .line 259
    return-void
.end method

.method public setMaxInflightReceiveBatches(I)V
    .locals 0
    .param p1, "maxInflightReceiveBatches"    # I

    .prologue
    .line 282
    iput p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightReceiveBatches:I

    .line 283
    return-void
.end method

.method public setVisibilityTimeoutSeconds(I)V
    .locals 0
    .param p1, "visibilityTimeoutSeconds"    # I

    .prologue
    .line 381
    iput p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->visibilityTimeoutSeconds:I

    .line 382
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueueBufferConfig [maxBatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBatchOpenMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchOpenMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longPoll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxInflightOutboundBatches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightOutboundBatches:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxInflightReceiveBatches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightReceiveBatches:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxDoneReceiveBatches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxDoneReceiveBatches:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBatchSizeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSizeBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", visibilityTimeoutSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->visibilityTimeoutSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longPollWaitTimeoutSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPollWaitTimeoutSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method validate()V
    .locals 2

    .prologue
    .line 451
    iget v0, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->visibilityTimeoutSeconds:I

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Visibility timeout value may not be equal to zero "

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    return-void
.end method

.method public withLongPoll(Z)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 0
    .param p1, "longPoll"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPoll:Z

    .line 238
    return-object p0
.end method

.method public withLongPollWaitTimeoutSeconds(I)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 0
    .param p1, "longPollWaitTimeoutSeconds"    # I

    .prologue
    .line 412
    iput p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->longPollWaitTimeoutSeconds:I

    .line 413
    return-object p0
.end method

.method public withMaxBatchOpenMs(J)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 0
    .param p1, "maxBatchOpenMs"    # J

    .prologue
    .line 215
    iput-wide p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchOpenMs:J

    .line 216
    return-object p0
.end method

.method public withMaxBatchSize(I)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 0
    .param p1, "maxBatchSize"    # I

    .prologue
    .line 439
    iput p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSize:I

    .line 440
    return-object p0
.end method

.method public withMaxBatchSizeBytes(J)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 0
    .param p1, "maxBatchSizeBytes"    # J

    .prologue
    .line 358
    iput-wide p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxBatchSizeBytes:J

    .line 359
    return-object p0
.end method

.method public withMaxDoneReceiveBatches(I)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 0
    .param p1, "maxDoneReceiveBatches"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxDoneReceiveBatches:I

    .line 334
    return-object p0
.end method

.method public withMaxInflightOutboundBatches(I)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 0
    .param p1, "maxInflightOutboundBatches"    # I

    .prologue
    .line 262
    iput p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightOutboundBatches:I

    .line 263
    return-object p0
.end method

.method public withMaxInflightReceiveBatches(I)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 0
    .param p1, "maxInflightReceiveBatches"    # I

    .prologue
    .line 286
    iput p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->maxInflightReceiveBatches:I

    .line 287
    return-object p0
.end method

.method public withVisibilityTimeoutSeconds(I)Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;
    .locals 0
    .param p1, "visibilityTimeoutSeconds"    # I

    .prologue
    .line 385
    iput p1, p0, Lcom/amazonaws/services/sqs/buffered/QueueBufferConfig;->visibilityTimeoutSeconds:I

    .line 386
    return-object p0
.end method
