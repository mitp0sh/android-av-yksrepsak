.class public Lcom/amazonaws/services/ec2/model/Volume;
.super Ljava/lang/Object;
.source "Volume.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private availabilityZone:Ljava/lang/String;

.field private createTime:Ljava/util/Date;

.field private iops:Ljava/lang/Integer;

.field private size:Ljava/lang/Integer;

.field private snapshotId:Ljava/lang/String;

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

.field private volumeType:Ljava/lang/String;


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

    .line 626
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 652
    :cond_0
    :goto_0
    return v3

    .line 627
    :cond_1
    if-eqz p1, :cond_0

    .line 629
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/Volume;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 630
    check-cast v0, Lcom/amazonaws/services/ec2/model/Volume;

    .line 632
    .local v0, "other":Lcom/amazonaws/services/ec2/model/Volume;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 633
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getSize()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getSize()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 635
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getSize()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 637
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getSnapshotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 639
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getCreateTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getCreateTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 643
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getCreateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getCreateTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getCreateTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getAttachments()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAttachments()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getAttachments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getAttachments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAttachments()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1b

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 647
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1d

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 649
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getIops()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getIops()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1f

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 651
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getIops()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Volume;->getIops()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getIops()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    move v3, v2

    .line 652
    goto/16 :goto_0

    :cond_c
    move v1, v3

    .line 632
    goto/16 :goto_1

    :cond_d
    move v4, v3

    goto/16 :goto_2

    :cond_e
    move v1, v3

    .line 634
    goto/16 :goto_3

    :cond_f
    move v4, v3

    goto/16 :goto_4

    :cond_10
    move v1, v3

    .line 636
    goto/16 :goto_5

    :cond_11
    move v4, v3

    goto/16 :goto_6

    :cond_12
    move v1, v3

    .line 638
    goto/16 :goto_7

    :cond_13
    move v4, v3

    goto/16 :goto_8

    :cond_14
    move v1, v3

    .line 640
    goto/16 :goto_9

    :cond_15
    move v4, v3

    goto/16 :goto_a

    :cond_16
    move v1, v3

    .line 642
    goto/16 :goto_b

    :cond_17
    move v4, v3

    goto/16 :goto_c

    :cond_18
    move v1, v3

    .line 644
    goto/16 :goto_d

    :cond_19
    move v4, v3

    goto/16 :goto_e

    :cond_1a
    move v1, v3

    .line 646
    goto/16 :goto_f

    :cond_1b
    move v4, v3

    goto/16 :goto_10

    :cond_1c
    move v1, v3

    .line 648
    goto :goto_11

    :cond_1d
    move v4, v3

    goto :goto_12

    :cond_1e
    move v1, v3

    .line 650
    goto :goto_13

    :cond_1f
    move v4, v3

    goto :goto_14
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->attachments:Ljava/util/List;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->attachments:Ljava/util/List;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getIops()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->iops:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->size:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSnapshotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->snapshotId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->state:Ljava/lang/String;

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
    .line 401
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->tags:Ljava/util/List;

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getVolumeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->volumeId:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->volumeType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 608
    const/16 v1, 0x1f

    .line 609
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 611
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 612
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getSize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 613
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 614
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 615
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 616
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getCreateTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 617
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAttachments()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 618
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 619
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 620
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getIops()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_9

    :goto_9
    add-int v0, v2, v3

    .line 621
    return v0

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    .line 613
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 614
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 615
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 616
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getCreateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_5

    .line 617
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAttachments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    .line 618
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    .line 619
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    .line 620
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getIops()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_9
.end method

.method public setAttachments(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/VolumeAttachment;>;"
    if-nez p1, :cond_0

    .line 345
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Volume;->attachments:Ljava/util/List;

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 350
    .local v0, "attachmentsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/VolumeAttachment;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->attachments:Ljava/util/List;

    goto :goto_0
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->availabilityZone:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "createTime"    # Ljava/util/Date;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->createTime:Ljava/util/Date;

    .line 307
    return-void
.end method

.method public setIops(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "iops"    # Ljava/lang/Integer;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->iops:Ljava/lang/Integer;

    .line 562
    return-void
.end method

.method public setSize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/Integer;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->size:Ljava/lang/Integer;

    .line 122
    return-void
.end method

.method public setSnapshotId(Ljava/lang/String;)V
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->snapshotId:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setState(Lcom/amazonaws/services/ec2/model/VolumeState;)V
    .locals 1
    .param p1, "state"    # Lcom/amazonaws/services/ec2/model/VolumeState;

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VolumeState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->state:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->state:Ljava/lang/String;

    .line 234
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
    .line 413
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 414
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Volume;->tags:Ljava/util/List;

    .line 421
    :goto_0
    return-void

    .line 418
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 420
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public setVolumeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->volumeId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setVolumeType(Lcom/amazonaws/services/ec2/model/VolumeType;)V
    .locals 1
    .param p1, "volumeType"    # Lcom/amazonaws/services/ec2/model/VolumeType;

    .prologue
    .line 523
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VolumeType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->volumeType:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public setVolumeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "volumeType"    # Ljava/lang/String;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->volumeType:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getSnapshotId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapshotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getSnapshotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getCreateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getCreateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAttachments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attachments: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAttachments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getVolumeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getIops()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Iops: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getIops()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_9
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttachments(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/VolumeAttachment;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Volume;"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/VolumeAttachment;>;"
    if-nez p1, :cond_0

    .line 384
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Volume;->attachments:Ljava/util/List;

    .line 391
    :goto_0
    return-object p0

    .line 386
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 387
    .local v0, "attachmentsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/VolumeAttachment;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->attachments:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAttachments([Lcom/amazonaws/services/ec2/model/VolumeAttachment;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 6
    .param p1, "attachments"    # [Lcom/amazonaws/services/ec2/model/VolumeAttachment;

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAttachments()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Volume;->setAttachments(Ljava/util/Collection;)V

    .line 366
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/VolumeAttachment;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 367
    .local v3, "value":Lcom/amazonaws/services/ec2/model/VolumeAttachment;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getAttachments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/VolumeAttachment;
    :cond_1
    return-object p0
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->availabilityZone:Ljava/lang/String;

    .line 204
    return-object p0
.end method

.method public withCreateTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 0
    .param p1, "createTime"    # Ljava/util/Date;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->createTime:Ljava/util/Date;

    .line 321
    return-object p0
.end method

.method public withIops(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 0
    .param p1, "iops"    # Ljava/lang/Integer;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->iops:Ljava/lang/Integer;

    .line 576
    return-object p0
.end method

.method public withSize(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 0
    .param p1, "size"    # Ljava/lang/Integer;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->size:Ljava/lang/Integer;

    .line 136
    return-object p0
.end method

.method public withSnapshotId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 0
    .param p1, "snapshotId"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->snapshotId:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public withState(Lcom/amazonaws/services/ec2/model/VolumeState;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 1
    .param p1, "state"    # Lcom/amazonaws/services/ec2/model/VolumeState;

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VolumeState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->state:Ljava/lang/String;

    .line 288
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->state:Ljava/lang/String;

    .line 253
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/Volume;"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/Volume;->tags:Ljava/util/List;

    .line 460
    :goto_0
    return-object p0

    .line 455
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 456
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/ec2/model/Tag;

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/Volume;->setTags(Ljava/util/Collection;)V

    .line 435
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

    .line 436
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Tag;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/Volume;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Tag;
    :cond_1
    return-object p0
.end method

.method public withVolumeId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 0
    .param p1, "volumeId"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->volumeId:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public withVolumeType(Lcom/amazonaws/services/ec2/model/VolumeType;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 1
    .param p1, "volumeType"    # Lcom/amazonaws/services/ec2/model/VolumeType;

    .prologue
    .line 542
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/VolumeType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/Volume;->volumeType:Ljava/lang/String;

    .line 543
    return-object p0
.end method

.method public withVolumeType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/Volume;
    .locals 0
    .param p1, "volumeType"    # Ljava/lang/String;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/Volume;->volumeType:Ljava/lang/String;

    .line 508
    return-object p0
.end method
