.class public Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
.super Ljava/lang/Object;
.source "ReservedInstancesListing.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private clientToken:Ljava/lang/String;

.field private createDate:Ljava/util/Date;

.field private instanceCounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceCount;",
            ">;"
        }
    .end annotation
.end field

.field private priceSchedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/PriceSchedule;",
            ">;"
        }
    .end annotation
.end field

.field private reservedInstancesId:Ljava/lang/String;

.field private reservedInstancesListingId:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private statusMessage:Ljava/lang/String;

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

.field private updateDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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

    .line 539
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 565
    :cond_0
    :goto_0
    return v3

    .line 540
    :cond_1
    if-eqz p1, :cond_0

    .line 542
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 543
    check-cast v0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;

    .line 545
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesListingId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesListingId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesListingId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesListingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesListingId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 548
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getCreateDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getCreateDate()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getCreateDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getCreateDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getCreateDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getUpdateDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getUpdateDate()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 552
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getUpdateDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getUpdateDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getUpdateDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 556
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getInstanceCounts()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getInstanceCounts()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 558
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getInstanceCounts()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getInstanceCounts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getInstanceCounts()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getPriceSchedules()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1a

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getPriceSchedules()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1b

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 560
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getPriceSchedules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getPriceSchedules()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getPriceSchedules()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1c

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1d

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getClientToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1f

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getClientToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getClientToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    move v3, v2

    .line 565
    goto/16 :goto_0

    :cond_c
    move v1, v3

    .line 545
    goto/16 :goto_1

    :cond_d
    move v4, v3

    goto/16 :goto_2

    :cond_e
    move v1, v3

    .line 547
    goto/16 :goto_3

    :cond_f
    move v4, v3

    goto/16 :goto_4

    :cond_10
    move v1, v3

    .line 549
    goto/16 :goto_5

    :cond_11
    move v4, v3

    goto/16 :goto_6

    :cond_12
    move v1, v3

    .line 551
    goto/16 :goto_7

    :cond_13
    move v4, v3

    goto/16 :goto_8

    :cond_14
    move v1, v3

    .line 553
    goto/16 :goto_9

    :cond_15
    move v4, v3

    goto/16 :goto_a

    :cond_16
    move v1, v3

    .line 555
    goto/16 :goto_b

    :cond_17
    move v4, v3

    goto/16 :goto_c

    :cond_18
    move v1, v3

    .line 557
    goto/16 :goto_d

    :cond_19
    move v4, v3

    goto/16 :goto_e

    :cond_1a
    move v1, v3

    .line 559
    goto/16 :goto_f

    :cond_1b
    move v4, v3

    goto/16 :goto_10

    :cond_1c
    move v1, v3

    .line 561
    goto :goto_11

    :cond_1d
    move v4, v3

    goto :goto_12

    :cond_1e
    move v1, v3

    .line 563
    goto :goto_13

    :cond_1f
    move v4, v3

    goto :goto_14
.end method

.method public getClientToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->createDate:Ljava/util/Date;

    return-object v0
.end method

.method public getInstanceCounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceCount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->instanceCounts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->instanceCounts:Ljava/util/List;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->instanceCounts:Ljava/util/List;

    return-object v0
.end method

.method public getPriceSchedules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/PriceSchedule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->priceSchedules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->priceSchedules:Ljava/util/List;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->priceSchedules:Ljava/util/List;

    return-object v0
.end method

.method public getReservedInstancesId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->reservedInstancesId:Ljava/lang/String;

    return-object v0
.end method

.method public getReservedInstancesListingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->reservedInstancesListingId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->statusMessage:Ljava/lang/String;

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
    .line 397
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->tags:Ljava/util/List;

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->updateDate:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 521
    const/16 v1, 0x1f

    .line 522
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 524
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesListingId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 525
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 526
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getCreateDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 527
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getUpdateDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 528
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 529
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 530
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getInstanceCounts()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 531
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getPriceSchedules()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 532
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 533
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getClientToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    :goto_9
    add-int v0, v2, v3

    .line 534
    return v0

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesListingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 526
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getCreateDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_2

    .line 527
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getUpdateDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_3

    .line 528
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 529
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 530
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getInstanceCounts()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    .line 531
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getPriceSchedules()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    .line 532
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    .line 533
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getClientToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_9
.end method

.method public setClientToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->clientToken:Ljava/lang/String;

    .line 475
    return-void
.end method

.method public setCreateDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "createDate"    # Ljava/util/Date;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->createDate:Ljava/util/Date;

    .line 132
    return-void
.end method

.method public setInstanceCounts(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceCount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "instanceCounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceCount;>;"
    if-nez p1, :cond_0

    .line 272
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->instanceCounts:Ljava/util/List;

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    .local v0, "instanceCountsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceCount;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->instanceCounts:Ljava/util/List;

    goto :goto_0
.end method

.method public setPriceSchedules(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/PriceSchedule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "priceSchedules":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/PriceSchedule;>;"
    if-nez p1, :cond_0

    .line 341
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->priceSchedules:Ljava/util/List;

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    .local v0, "priceSchedulesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/PriceSchedule;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 347
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->priceSchedules:Ljava/util/List;

    goto :goto_0
.end method

.method public setReservedInstancesId(Ljava/lang/String;)V
    .locals 0
    .param p1, "reservedInstancesId"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->reservedInstancesId:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setReservedInstancesListingId(Ljava/lang/String;)V
    .locals 0
    .param p1, "reservedInstancesListingId"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->reservedInstancesListingId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->status:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->statusMessage:Ljava/lang/String;

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
    .line 409
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 410
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->tags:Ljava/util/List;

    .line 417
    :goto_0
    return-void

    .line 414
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 415
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 416
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public setUpdateDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "updateDate"    # Ljava/util/Date;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->updateDate:Ljava/util/Date;

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesListingId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReservedInstancesListingId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesListingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReservedInstancesId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getCreateDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getCreateDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getUpdateDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getUpdateDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getInstanceCounts()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceCounts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getInstanceCounts()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getPriceSchedules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PriceSchedules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getPriceSchedules()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getClientToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_9
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withClientToken(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    .locals 0
    .param p1, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->clientToken:Ljava/lang/String;

    .line 489
    return-object p0
.end method

.method public withCreateDate(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    .locals 0
    .param p1, "createDate"    # Ljava/util/Date;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->createDate:Ljava/util/Date;

    .line 146
    return-object p0
.end method

.method public withInstanceCounts(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceCount;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "instanceCounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceCount;>;"
    if-nez p1, :cond_0

    .line 311
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->instanceCounts:Ljava/util/List;

    .line 318
    :goto_0
    return-object p0

    .line 313
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .local v0, "instanceCountsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceCount;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 315
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->instanceCounts:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withInstanceCounts([Lcom/amazonaws/services/ec2/model/InstanceCount;)Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    .locals 6
    .param p1, "instanceCounts"    # [Lcom/amazonaws/services/ec2/model/InstanceCount;

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getInstanceCounts()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->setInstanceCounts(Ljava/util/Collection;)V

    .line 293
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/InstanceCount;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 294
    .local v3, "value":Lcom/amazonaws/services/ec2/model/InstanceCount;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getInstanceCounts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/InstanceCount;
    :cond_1
    return-object p0
.end method

.method public withPriceSchedules(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/PriceSchedule;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "priceSchedules":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/PriceSchedule;>;"
    if-nez p1, :cond_0

    .line 380
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->priceSchedules:Ljava/util/List;

    .line 387
    :goto_0
    return-object p0

    .line 382
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 383
    .local v0, "priceSchedulesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/PriceSchedule;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 384
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->priceSchedules:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withPriceSchedules([Lcom/amazonaws/services/ec2/model/PriceSchedule;)Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    .locals 6
    .param p1, "priceSchedules"    # [Lcom/amazonaws/services/ec2/model/PriceSchedule;

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getPriceSchedules()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->setPriceSchedules(Ljava/util/Collection;)V

    .line 362
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/PriceSchedule;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 363
    .local v3, "value":Lcom/amazonaws/services/ec2/model/PriceSchedule;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getPriceSchedules()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/PriceSchedule;
    :cond_1
    return-object p0
.end method

.method public withReservedInstancesId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    .locals 0
    .param p1, "reservedInstancesId"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->reservedInstancesId:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public withReservedInstancesListingId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    .locals 0
    .param p1, "reservedInstancesListingId"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->reservedInstancesListingId:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public withStatus(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->status:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public withStatusMessage(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    .locals 0
    .param p1, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->statusMessage:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 449
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->tags:Ljava/util/List;

    .line 456
    :goto_0
    return-object p0

    .line 451
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 452
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 453
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/ec2/model/Tag;

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->setTags(Ljava/util/Collection;)V

    .line 431
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

    .line 432
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Tag;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Tag;
    :cond_1
    return-object p0
.end method

.method public withUpdateDate(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;
    .locals 0
    .param p1, "updateDate"    # Ljava/util/Date;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesListing;->updateDate:Ljava/util/Date;

    .line 180
    return-object p0
.end method
