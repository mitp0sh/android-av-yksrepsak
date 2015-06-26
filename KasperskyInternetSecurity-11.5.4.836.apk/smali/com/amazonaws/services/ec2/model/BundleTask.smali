.class public Lcom/amazonaws/services/ec2/model/BundleTask;
.super Ljava/lang/Object;
.source "BundleTask.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bundleId:Ljava/lang/String;

.field private bundleTaskError:Lcom/amazonaws/services/ec2/model/BundleTaskError;

.field private instanceId:Ljava/lang/String;

.field private progress:Ljava/lang/String;

.field private startTime:Ljava/util/Date;

.field private state:Ljava/lang/String;

.field private storage:Lcom/amazonaws/services/ec2/model/Storage;

.field private updateTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 379
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 401
    :cond_0
    :goto_0
    return v3

    .line 380
    :cond_1
    if-eqz p1, :cond_0

    .line 382
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/BundleTask;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 383
    check-cast v0, Lcom/amazonaws/services/ec2/model/BundleTask;

    .line 385
    .local v0, "other":Lcom/amazonaws/services/ec2/model/BundleTask;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 388
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 392
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 394
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/Storage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 398
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 400
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/BundleTaskError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    move v3, v2

    .line 401
    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 385
    goto/16 :goto_1

    :cond_b
    move v4, v3

    goto/16 :goto_2

    :cond_c
    move v1, v3

    .line 387
    goto/16 :goto_3

    :cond_d
    move v4, v3

    goto/16 :goto_4

    :cond_e
    move v1, v3

    .line 389
    goto/16 :goto_5

    :cond_f
    move v4, v3

    goto/16 :goto_6

    :cond_10
    move v1, v3

    .line 391
    goto/16 :goto_7

    :cond_11
    move v4, v3

    goto/16 :goto_8

    :cond_12
    move v1, v3

    .line 393
    goto/16 :goto_9

    :cond_13
    move v4, v3

    goto/16 :goto_a

    :cond_14
    move v1, v3

    .line 395
    goto/16 :goto_b

    :cond_15
    move v4, v3

    goto/16 :goto_c

    :cond_16
    move v1, v3

    .line 397
    goto :goto_d

    :cond_17
    move v4, v3

    goto :goto_e

    :cond_18
    move v1, v3

    .line 399
    goto :goto_f

    :cond_19
    move v4, v3

    goto :goto_10
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->bundleId:Ljava/lang/String;

    return-object v0
.end method

.method public getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->bundleTaskError:Lcom/amazonaws/services/ec2/model/BundleTaskError;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->progress:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStorage()Lcom/amazonaws/services/ec2/model/Storage;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->storage:Lcom/amazonaws/services/ec2/model/Storage;

    return-object v0
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->updateTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 363
    const/16 v1, 0x1f

    .line 364
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 366
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 367
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 368
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 369
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 370
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 371
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 372
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 373
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v4

    if-nez v4, :cond_7

    :goto_7
    add-int v0, v2, v3

    .line 374
    return v0

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 368
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 369
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_3

    .line 370
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_4

    .line 371
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/Storage;->hashCode()I

    move-result v2

    goto :goto_5

    .line 372
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 373
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/BundleTaskError;->hashCode()I

    move-result v3

    goto :goto_7
.end method

.method public setBundleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleId"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->bundleId:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setBundleTaskError(Lcom/amazonaws/services/ec2/model/BundleTaskError;)V
    .locals 0
    .param p1, "bundleTaskError"    # Lcom/amazonaws/services/ec2/model/BundleTaskError;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->bundleTaskError:Lcom/amazonaws/services/ec2/model/BundleTaskError;

    .line 319
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->instanceId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setProgress(Ljava/lang/String;)V
    .locals 0
    .param p1, "progress"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->progress:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->startTime:Ljava/util/Date;

    .line 183
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->state:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setStorage(Lcom/amazonaws/services/ec2/model/Storage;)V
    .locals 0
    .param p1, "storage"    # Lcom/amazonaws/services/ec2/model/Storage;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->storage:Lcom/amazonaws/services/ec2/model/Storage;

    .line 251
    return-void
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "updateTime"    # Ljava/util/Date;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->updateTime:Ljava/util/Date;

    .line 217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BundleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getUpdateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getStorage()Lcom/amazonaws/services/ec2/model/Storage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getProgress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BundleTaskError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/BundleTask;->getBundleTaskError()Lcom/amazonaws/services/ec2/model/BundleTaskError;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withBundleId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0
    .param p1, "bundleId"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->bundleId:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public withBundleTaskError(Lcom/amazonaws/services/ec2/model/BundleTaskError;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0
    .param p1, "bundleTaskError"    # Lcom/amazonaws/services/ec2/model/BundleTaskError;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->bundleTaskError:Lcom/amazonaws/services/ec2/model/BundleTaskError;

    .line 333
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->instanceId:Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public withProgress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0
    .param p1, "progress"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->progress:Ljava/lang/String;

    .line 299
    return-object p0
.end method

.method public withStartTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->startTime:Ljava/util/Date;

    .line 197
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->state:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public withStorage(Lcom/amazonaws/services/ec2/model/Storage;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0
    .param p1, "storage"    # Lcom/amazonaws/services/ec2/model/Storage;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->storage:Lcom/amazonaws/services/ec2/model/Storage;

    .line 265
    return-object p0
.end method

.method public withUpdateTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 0
    .param p1, "updateTime"    # Ljava/util/Date;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/BundleTask;->updateTime:Ljava/util/Date;

    .line 231
    return-object p0
.end method
