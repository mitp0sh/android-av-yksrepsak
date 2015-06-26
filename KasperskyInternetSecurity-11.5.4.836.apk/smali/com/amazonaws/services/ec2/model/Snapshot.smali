.class public Lcom/amazonaws/services/ec2/model/Snapshot;
.super Ljava/lang/Object;
.source "Snapshot.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private ownerAlias:Ljava/lang/String;

.field private ownerId:Ljava/lang/String;

.field private progress:Ljava/lang/String;

.field private snapshotId:Ljava/lang/String;

.field private startTime:Ljava/util/Date;

.field private state:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private volumeId:Ljava/lang/String;

.field private volumeSize:Ljava/lang/Integer;


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

    .line 555
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 581
    :cond_0
    :goto_0
    return v3

    .line 556
    :cond_1
    if-eqz p1, :cond_0

    .line 558
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/Snapshot;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 559
    check-cast v0, Lcom/amazonaws/services/ec2/model/Snapshot;

    .line 561
    .local v0, "other":Lcom/amazonaws/services/ec2/model/Snapshot;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getStartTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getStartTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getProgress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getProgress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 570
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getProgress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getProgress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getProgress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1b

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 576
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerAlias()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerAlias()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1d

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 578
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerAlias()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1f

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 580
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    move v3, v2

    .line 581
    goto/16 :goto_0

    :cond_c
    move v1, v3

    .line 561
    goto/16 :goto_1

    :cond_d
    move v4, v3

    goto/16 :goto_2

    :cond_e
    move v1, v3

    .line 563
    goto/16 :goto_3

    :cond_f
    move v4, v3

    goto/16 :goto_4

    :cond_10
    move v1, v3

    .line 565
    goto/16 :goto_5

    :cond_11
    move v4, v3

    goto/16 :goto_6

    :cond_12
    move v1, v3

    .line 567
    goto/16 :goto_7

    :cond_13
    move v4, v3

    goto/16 :goto_8

    :cond_14
    move v1, v3

    .line 569
    goto/16 :goto_9

    :cond_15
    move v4, v3

    goto/16 :goto_a

    :cond_16
    move v1, v3

    .line 571
    goto/16 :goto_b

    :cond_17
    move v4, v3

    goto/16 :goto_c

    :cond_18
    move v1, v3

    .line 573
    goto/16 :goto_d

    :cond_19
    move v4, v3

    goto/16 :goto_e

    :cond_1a
    move v1, v3

    .line 575
    goto/16 :goto_f

    :cond_1b
    move v4, v3

    goto/16 :goto_10

    :cond_1c
    move v1, v3

    .line 577
    goto :goto_11

    :cond_1d
    move v4, v3

    goto :goto_12

    :cond_1e
    move v1, v3

    .line 579
    goto :goto_13

    :cond_1f
    move v4, v3

    goto :goto_14
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->ownerAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->ownerId:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->progress:Ljava/lang/String;

    return-object v0
.end method

.method public getSnapshotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->snapshotId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->tags:Ljava/util/List;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getVolumeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->volumeId:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->volumeSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 537
    const/16 v1, 0x1f

    .line 538
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 540
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 541
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 542
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 543
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getStartTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 544
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getProgress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 545
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 546
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 547
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 548
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerAlias()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 549
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_9

    :goto_9
    add-int v0, v2, v3

    .line 550
    return v0

    .line 540
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 542
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 543
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_3

    .line 544
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getProgress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 545
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 546
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 547
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_7

    .line 548
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    .line 549
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_9
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->description:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setOwnerAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerAlias"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->ownerAlias:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setOwnerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerId"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->ownerId:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setProgress(Ljava/lang/String;)V
    .locals 0
    .param p1, "progress"    # Ljava/lang/String;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->progress:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setSnapshotId(Ljava/lang/String;)V
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->snapshotId:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->startTime:Ljava/util/Date;

    .line 246
    return-void
.end method

.method public setState(Lcom/amazonaws/services/ec2/model/SnapshotState;)V
    .locals 1
    .param p1, "state"    # Lcom/amazonaws/services/ec2/model/SnapshotState;

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/SnapshotState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->state:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->state:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 460
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->tags:Ljava/util/List;

    .line 467
    :goto_0
    return-void

    .line 464
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 465
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 466
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public setVolumeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->volumeId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setVolumeSize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "volumeSize"    # Ljava/lang/Integer;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->volumeSize:Ljava/lang/Integer;

    .line 382
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapshotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getProgress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getProgress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OwnerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerAlias()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OwnerAlias: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getOwnerAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_9
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Snapshot;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->description:Ljava/lang/String;

    .line 362
    return-object p0
.end method

.method public withOwnerAlias(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Snapshot;
    .locals 0
    .param p1, "ownerAlias"    # Ljava/lang/String;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->ownerAlias:Ljava/lang/String;

    .line 436
    return-object p0
.end method

.method public withOwnerId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Snapshot;
    .locals 0
    .param p1, "ownerId"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->ownerId:Ljava/lang/String;

    .line 328
    return-object p0
.end method

.method public withProgress(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Snapshot;
    .locals 0
    .param p1, "progress"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->progress:Ljava/lang/String;

    .line 294
    return-object p0
.end method

.method public withSnapshotId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Snapshot;
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->snapshotId:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public withStartTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/Snapshot;
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->startTime:Ljava/util/Date;

    .line 260
    return-object p0
.end method

.method public withState(Lcom/amazonaws/services/ec2/model/SnapshotState;)Lcom/amazonaws/services/ec2/model/Snapshot;
    .locals 1
    .param p1, "state"    # Lcom/amazonaws/services/ec2/model/SnapshotState;

    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/SnapshotState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->state:Ljava/lang/String;

    .line 227
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Snapshot;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->state:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Snapshot;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Snapshot;"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->tags:Ljava/util/List;

    .line 506
    :goto_0
    return-object p0

    .line 501
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 502
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 503
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/Snapshot;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/ec2/model/Tag;

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Snapshot;->setTags(Ljava/util/Collection;)V

    .line 481
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/Tag;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 482
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Tag;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Snapshot;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Tag;
    :cond_1
    return-object p0
.end method

.method public withVolumeId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Snapshot;
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->volumeId:Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public withVolumeSize(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/Snapshot;
    .locals 0
    .param p1, "volumeSize"    # Ljava/lang/Integer;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Snapshot;->volumeSize:Ljava/lang/Integer;

    .line 396
    return-object p0
.end method
