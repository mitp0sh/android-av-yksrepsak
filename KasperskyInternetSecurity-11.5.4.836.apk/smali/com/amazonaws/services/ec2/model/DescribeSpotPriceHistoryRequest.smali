.class public Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DescribeSpotPriceHistoryRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZone:Ljava/lang/String;

.field private endTime:Ljava/util/Date;

.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private instanceTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxResults:Ljava/lang/Integer;

.field private nextToken:Ljava/lang/String;

.field private productDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 533
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 555
    :cond_0
    :goto_0
    return v3

    .line 534
    :cond_1
    if-eqz p1, :cond_0

    .line 536
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 537
    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;

    .line 539
    .local v0, "other":Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getStartTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 540
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getEndTime()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 542
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getEndTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getInstanceTypes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getInstanceTypes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 544
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getInstanceTypes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getInstanceTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getInstanceTypes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getProductDescriptions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getProductDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 546
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getProductDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getProductDescriptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getProductDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 548
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 552
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    move v3, v2

    .line 555
    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 539
    goto/16 :goto_1

    :cond_b
    move v4, v3

    goto/16 :goto_2

    :cond_c
    move v1, v3

    .line 541
    goto/16 :goto_3

    :cond_d
    move v4, v3

    goto/16 :goto_4

    :cond_e
    move v1, v3

    .line 543
    goto/16 :goto_5

    :cond_f
    move v4, v3

    goto/16 :goto_6

    :cond_10
    move v1, v3

    .line 545
    goto/16 :goto_7

    :cond_11
    move v4, v3

    goto/16 :goto_8

    :cond_12
    move v1, v3

    .line 547
    goto/16 :goto_9

    :cond_13
    move v4, v3

    goto/16 :goto_a

    :cond_14
    move v1, v3

    .line 549
    goto/16 :goto_b

    :cond_15
    move v4, v3

    goto/16 :goto_c

    :cond_16
    move v1, v3

    .line 551
    goto :goto_d

    :cond_17
    move v4, v3

    goto :goto_e

    :cond_18
    move v1, v3

    .line 553
    goto :goto_f

    :cond_19
    move v4, v3

    goto :goto_10
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->endTime:Ljava/util/Date;

    return-object v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->filters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->filters:Ljava/util/List;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->instanceTypes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->instanceTypes:Ljava/util/List;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->instanceTypes:Ljava/util/List;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->maxResults:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->productDescriptions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->productDescriptions:Ljava/util/List;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->productDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 517
    const/16 v1, 0x1f

    .line 518
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 520
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getStartTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 521
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getEndTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 522
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getInstanceTypes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 523
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getProductDescriptions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 524
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getFilters()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 525
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 526
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 527
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    :goto_7
    add-int v0, v2, v3

    .line 528
    return v0

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_0

    .line 521
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_1

    .line 522
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getInstanceTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 523
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getProductDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    .line 524
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    .line 525
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 526
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_6

    .line 527
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_7
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->availabilityZone:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setEndTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->endTime:Ljava/util/Date;

    .line 132
    return-void
.end method

.method public setFilters(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "filters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Filter;>;"
    if-nez p1, :cond_0

    .line 324
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->filters:Ljava/util/List;

    .line 331
    :goto_0
    return-void

    .line 328
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    .local v0, "filtersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 330
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->filters:Ljava/util/List;

    goto :goto_0
.end method

.method public setInstanceTypes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "instanceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->instanceTypes:Ljava/util/List;

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v0, "instanceTypesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->instanceTypes:Ljava/util/List;

    goto :goto_0
.end method

.method public setMaxResults(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxResults"    # Ljava/lang/Integer;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->maxResults:Ljava/lang/Integer;

    .line 439
    return-void
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->nextToken:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public setProductDescriptions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "productDescriptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->productDescriptions:Ljava/util/List;

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    .local v0, "productDescriptionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->productDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->startTime:Ljava/util/Date;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getInstanceTypes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceTypes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getInstanceTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getProductDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductDescriptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getProductDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getFilters()Ljava/util/List;

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
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getNextToken()Ljava/lang/String;

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
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->availabilityZone:Ljava/lang/String;

    .line 419
    return-object p0
.end method

.method public withEndTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    .locals 0
    .param p1, "endTime"    # Ljava/util/Date;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->endTime:Ljava/util/Date;

    .line 146
    return-object p0
.end method

.method public withFilters(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Filter;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "filters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Filter;>;"
    if-nez p1, :cond_0

    .line 379
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->filters:Ljava/util/List;

    .line 386
    :goto_0
    return-object p0

    .line 381
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    .local v0, "filtersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 383
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->filters:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withFilters([Lcom/amazonaws/services/ec2/model/Filter;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    .locals 6
    .param p1, "filters"    # [Lcom/amazonaws/services/ec2/model/Filter;

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->setFilters(Ljava/util/Collection;)V

    .line 353
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/Filter;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 354
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Filter;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Filter;
    :cond_1
    return-object p0
.end method

.method public withInstanceTypes(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "instanceTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->instanceTypes:Ljava/util/List;

    .line 216
    :goto_0
    return-object p0

    .line 211
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .local v0, "instanceTypesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->instanceTypes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withInstanceTypes([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    .locals 6
    .param p1, "instanceTypes"    # [Ljava/lang/String;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getInstanceTypes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->setInstanceTypes(Ljava/util/Collection;)V

    .line 191
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 192
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getInstanceTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withMaxResults(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    .locals 0
    .param p1, "maxResults"    # Ljava/lang/Integer;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->maxResults:Ljava/lang/Integer;

    .line 453
    return-object p0
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->nextToken:Ljava/lang/String;

    .line 487
    return-object p0
.end method

.method public withProductDescriptions(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "productDescriptions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 278
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->productDescriptions:Ljava/util/List;

    .line 285
    :goto_0
    return-object p0

    .line 280
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v0, "productDescriptionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->productDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withProductDescriptions([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    .locals 6
    .param p1, "productDescriptions"    # [Ljava/lang/String;

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getProductDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->setProductDescriptions(Ljava/util/Collection;)V

    .line 260
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 261
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getProductDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withStartTime(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    .locals 0
    .param p1, "startTime"    # Ljava/util/Date;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->startTime:Ljava/util/Date;

    .line 112
    return-object p0
.end method
