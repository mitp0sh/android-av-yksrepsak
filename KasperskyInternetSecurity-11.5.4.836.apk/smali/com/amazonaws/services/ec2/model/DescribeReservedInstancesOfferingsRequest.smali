.class public Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DescribeReservedInstancesOfferingsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZone:Ljava/lang/String;

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

.field private instanceTenancy:Ljava/lang/String;

.field private instanceType:Ljava/lang/String;

.field private maxResults:Ljava/lang/Integer;

.field private nextToken:Ljava/lang/String;

.field private offeringType:Ljava/lang/String;

.field private productDescription:Ljava/lang/String;

.field private reservedInstancesOfferingIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
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

    .line 601
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 625
    :cond_0
    :goto_0
    return v3

    .line 602
    :cond_1
    if-eqz p1, :cond_0

    .line 604
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 605
    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;

    .line 607
    .local v0, "other":Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getReservedInstancesOfferingIds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getReservedInstancesOfferingIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 608
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getReservedInstancesOfferingIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getReservedInstancesOfferingIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getReservedInstancesOfferingIds()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 610
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 612
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 614
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 616
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 618
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getOfferingType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getOfferingType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 620
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getOfferingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getOfferingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getOfferingType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 622
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 624
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_a
    move v3, v2

    .line 625
    goto/16 :goto_0

    :cond_b
    move v1, v3

    .line 607
    goto/16 :goto_1

    :cond_c
    move v4, v3

    goto/16 :goto_2

    :cond_d
    move v1, v3

    .line 609
    goto/16 :goto_3

    :cond_e
    move v4, v3

    goto/16 :goto_4

    :cond_f
    move v1, v3

    .line 611
    goto/16 :goto_5

    :cond_10
    move v4, v3

    goto/16 :goto_6

    :cond_11
    move v1, v3

    .line 613
    goto/16 :goto_7

    :cond_12
    move v4, v3

    goto/16 :goto_8

    :cond_13
    move v1, v3

    .line 615
    goto/16 :goto_9

    :cond_14
    move v4, v3

    goto/16 :goto_a

    :cond_15
    move v1, v3

    .line 617
    goto/16 :goto_b

    :cond_16
    move v4, v3

    goto/16 :goto_c

    :cond_17
    move v1, v3

    .line 619
    goto/16 :goto_d

    :cond_18
    move v4, v3

    goto/16 :goto_e

    :cond_19
    move v1, v3

    .line 621
    goto :goto_f

    :cond_1a
    move v4, v3

    goto :goto_10

    :cond_1b
    move v1, v3

    .line 623
    goto :goto_11

    :cond_1c
    move v4, v3

    goto :goto_12
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->availabilityZone:Ljava/lang/String;

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
    .line 323
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->filters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->filters:Ljava/util/List;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceTenancy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->instanceTenancy:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->maxResults:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->offeringType:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->productDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getReservedInstancesOfferingIds()Ljava/util/List;
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
    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->reservedInstancesOfferingIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->reservedInstancesOfferingIds:Ljava/util/List;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->reservedInstancesOfferingIds:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 584
    const/16 v1, 0x1f

    .line 585
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 587
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getReservedInstancesOfferingIds()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 588
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 589
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 590
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 591
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getFilters()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 592
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 593
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getOfferingType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 594
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 595
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_8

    :goto_8
    add-int v0, v2, v3

    .line 596
    return v0

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getReservedInstancesOfferingIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 588
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 589
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 590
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 591
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    .line 592
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 593
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getOfferingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 594
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 595
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_8
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->availabilityZone:Ljava/lang/String;

    .line 256
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
    .line 343
    .local p1, "filters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Filter;>;"
    if-nez p1, :cond_0

    .line 344
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->filters:Ljava/util/List;

    .line 351
    :goto_0
    return-void

    .line 348
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 349
    .local v0, "filtersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 350
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->filters:Ljava/util/List;

    goto :goto_0
.end method

.method public setInstanceTenancy(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceTenancy"    # Ljava/lang/String;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->instanceTenancy:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public setInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)V
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->instanceType:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->instanceType:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setMaxResults(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxResults"    # Ljava/lang/Integer;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->maxResults:Ljava/lang/Integer;

    .line 539
    return-void
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->nextToken:Ljava/lang/String;

    .line 505
    return-void
.end method

.method public setOfferingType(Ljava/lang/String;)V
    .locals 0
    .param p1, "offeringType"    # Ljava/lang/String;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->offeringType:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public setProductDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "productDescription"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->productDescription:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setReservedInstancesOfferingIds(Ljava/util/Collection;)V
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
    .line 103
    .local p1, "reservedInstancesOfferingIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->reservedInstancesOfferingIds:Ljava/util/List;

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .local v0, "reservedInstancesOfferingIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->reservedInstancesOfferingIds:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getReservedInstancesOfferingIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReservedInstancesOfferingIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getReservedInstancesOfferingIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceTenancy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getOfferingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OfferingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getOfferingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_8
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->availabilityZone:Ljava/lang/String;

    .line 270
    return-object p0
.end method

.method public withFilters(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Filter;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "filters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Filter;>;"
    if-nez p1, :cond_0

    .line 399
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->filters:Ljava/util/List;

    .line 406
    :goto_0
    return-object p0

    .line 401
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 402
    .local v0, "filtersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 403
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->filters:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withFilters([Lcom/amazonaws/services/ec2/model/Filter;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .locals 6
    .param p1, "filters"    # [Lcom/amazonaws/services/ec2/model/Filter;

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->setFilters(Ljava/util/Collection;)V

    .line 373
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

    .line 374
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Filter;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Filter;
    :cond_1
    return-object p0
.end method

.method public withInstanceTenancy(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .locals 0
    .param p1, "instanceTenancy"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->instanceTenancy:Ljava/lang/String;

    .line 451
    return-object p0
.end method

.method public withInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->instanceType:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->instanceType:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public withMaxResults(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .locals 0
    .param p1, "maxResults"    # Ljava/lang/Integer;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->maxResults:Ljava/lang/Integer;

    .line 553
    return-object p0
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->nextToken:Ljava/lang/String;

    .line 519
    return-object p0
.end method

.method public withOfferingType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .locals 0
    .param p1, "offeringType"    # Ljava/lang/String;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->offeringType:Ljava/lang/String;

    .line 485
    return-object p0
.end method

.method public withProductDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .locals 0
    .param p1, "productDescription"    # Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->productDescription:Ljava/lang/String;

    .line 304
    return-object p0
.end method

.method public withReservedInstancesOfferingIds(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "reservedInstancesOfferingIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->reservedInstancesOfferingIds:Ljava/util/List;

    .line 154
    :goto_0
    return-object p0

    .line 149
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .local v0, "reservedInstancesOfferingIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->reservedInstancesOfferingIds:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withReservedInstancesOfferingIds([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .locals 6
    .param p1, "reservedInstancesOfferingIds"    # [Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getReservedInstancesOfferingIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->setReservedInstancesOfferingIds(Ljava/util/Collection;)V

    .line 127
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

    .line 128
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getReservedInstancesOfferingIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
