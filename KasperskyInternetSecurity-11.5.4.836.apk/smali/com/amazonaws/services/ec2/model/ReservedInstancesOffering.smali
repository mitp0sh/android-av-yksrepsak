.class public Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
.super Ljava/lang/Object;
.source "ReservedInstancesOffering.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZone:Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field private duration:Ljava/lang/Long;

.field private fixedPrice:Ljava/lang/Float;

.field private instanceTenancy:Ljava/lang/String;

.field private instanceType:Ljava/lang/String;

.field private marketplace:Ljava/lang/Boolean;

.field private offeringType:Ljava/lang/String;

.field private pricingDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/PricingDetail;",
            ">;"
        }
    .end annotation
.end field

.field private productDescription:Ljava/lang/String;

.field private recurringCharges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/RecurringCharge;",
            ">;"
        }
    .end annotation
.end field

.field private reservedInstancesOfferingId:Ljava/lang/String;

.field private usagePrice:Ljava/lang/Float;


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

    .line 716
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 748
    :cond_0
    :goto_0
    return v3

    .line 717
    :cond_1
    if-eqz p1, :cond_0

    .line 719
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 720
    check-cast v0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;

    .line 722
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 723
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 725
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 727
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 728
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getDuration()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 729
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getDuration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getDuration()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getUsagePrice()Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getUsagePrice()Ljava/lang/Float;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 731
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getUsagePrice()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getUsagePrice()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getUsagePrice()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getFixedPrice()Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getFixedPrice()Ljava/lang/Float;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 733
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getFixedPrice()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getFixedPrice()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getFixedPrice()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getProductDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 735
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getProductDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1e

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 737
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_20

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 739
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getOfferingType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getOfferingType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_22

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 741
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getOfferingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getOfferingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getOfferingType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getRecurringCharges()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_23

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getRecurringCharges()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_24

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 743
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getRecurringCharges()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getRecurringCharges()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getRecurringCharges()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->isMarketplace()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_25

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->isMarketplace()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_26

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 745
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->isMarketplace()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->isMarketplace()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->isMarketplace()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getPricingDetails()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_27

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getPricingDetails()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_28

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 747
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getPricingDetails()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getPricingDetails()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getPricingDetails()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_e
    move v3, v2

    .line 748
    goto/16 :goto_0

    :cond_f
    move v1, v3

    .line 722
    goto/16 :goto_1

    :cond_10
    move v4, v3

    goto/16 :goto_2

    :cond_11
    move v1, v3

    .line 724
    goto/16 :goto_3

    :cond_12
    move v4, v3

    goto/16 :goto_4

    :cond_13
    move v1, v3

    .line 726
    goto/16 :goto_5

    :cond_14
    move v4, v3

    goto/16 :goto_6

    :cond_15
    move v1, v3

    .line 728
    goto/16 :goto_7

    :cond_16
    move v4, v3

    goto/16 :goto_8

    :cond_17
    move v1, v3

    .line 730
    goto/16 :goto_9

    :cond_18
    move v4, v3

    goto/16 :goto_a

    :cond_19
    move v1, v3

    .line 732
    goto/16 :goto_b

    :cond_1a
    move v4, v3

    goto/16 :goto_c

    :cond_1b
    move v1, v3

    .line 734
    goto/16 :goto_d

    :cond_1c
    move v4, v3

    goto/16 :goto_e

    :cond_1d
    move v1, v3

    .line 736
    goto/16 :goto_f

    :cond_1e
    move v4, v3

    goto/16 :goto_10

    :cond_1f
    move v1, v3

    .line 738
    goto/16 :goto_11

    :cond_20
    move v4, v3

    goto/16 :goto_12

    :cond_21
    move v1, v3

    .line 740
    goto/16 :goto_13

    :cond_22
    move v4, v3

    goto/16 :goto_14

    :cond_23
    move v1, v3

    .line 742
    goto/16 :goto_15

    :cond_24
    move v4, v3

    goto/16 :goto_16

    :cond_25
    move v1, v3

    .line 744
    goto/16 :goto_17

    :cond_26
    move v4, v3

    goto/16 :goto_18

    :cond_27
    move v1, v3

    .line 746
    goto :goto_19

    :cond_28
    move v4, v3

    goto :goto_1a
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->duration:Ljava/lang/Long;

    return-object v0
.end method

.method public getFixedPrice()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->fixedPrice:Ljava/lang/Float;

    return-object v0
.end method

.method public getInstanceTenancy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->instanceTenancy:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketplace()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->marketplace:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOfferingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->offeringType:Ljava/lang/String;

    return-object v0
.end method

.method public getPricingDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/PricingDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->pricingDetails:Ljava/util/List;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->pricingDetails:Ljava/util/List;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->pricingDetails:Ljava/util/List;

    return-object v0
.end method

.method public getProductDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->productDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurringCharges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/RecurringCharge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->recurringCharges:Ljava/util/List;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->recurringCharges:Ljava/util/List;

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->recurringCharges:Ljava/util/List;

    return-object v0
.end method

.method public getReservedInstancesOfferingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->reservedInstancesOfferingId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsagePrice()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->usagePrice:Ljava/lang/Float;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 695
    const/16 v1, 0x1f

    .line 696
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 698
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 699
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 700
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 701
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getDuration()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 702
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getUsagePrice()Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 703
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getFixedPrice()Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 704
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getProductDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 705
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 706
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 707
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getOfferingType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 708
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getRecurringCharges()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 709
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->isMarketplace()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 710
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getPricingDetails()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_c

    :goto_c
    add-int v0, v2, v3

    .line 711
    return v0

    .line 698
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 699
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 700
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 701
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 702
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getUsagePrice()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 703
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getFixedPrice()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 704
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getProductDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 705
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 706
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 707
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getOfferingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 708
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getRecurringCharges()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 709
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->isMarketplace()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 710
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getPricingDetails()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_c
.end method

.method public isMarketplace()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->marketplace:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->availabilityZone:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->currencyCode:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public setDuration(Ljava/lang/Long;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/Long;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->duration:Ljava/lang/Long;

    .line 255
    return-void
.end method

.method public setFixedPrice(Ljava/lang/Float;)V
    .locals 0
    .param p1, "fixedPrice"    # Ljava/lang/Float;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->fixedPrice:Ljava/lang/Float;

    .line 323
    return-void
.end method

.method public setInstanceTenancy(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceTenancy"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->instanceTenancy:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)V
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->instanceType:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->instanceType:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setMarketplace(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "marketplace"    # Ljava/lang/Boolean;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->marketplace:Ljava/lang/Boolean;

    .line 568
    return-void
.end method

.method public setOfferingType(Ljava/lang/String;)V
    .locals 0
    .param p1, "offeringType"    # Ljava/lang/String;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->offeringType:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public setPricingDetails(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/PricingDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "pricingDetails":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/PricingDetail;>;"
    if-nez p1, :cond_0

    .line 615
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->pricingDetails:Ljava/util/List;

    .line 622
    :goto_0
    return-void

    .line 619
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 620
    .local v0, "pricingDetailsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/PricingDetail;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 621
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->pricingDetails:Ljava/util/List;

    goto :goto_0
.end method

.method public setProductDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "productDescription"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->productDescription:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setRecurringCharges(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/RecurringCharge;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "recurringCharges":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/RecurringCharge;>;"
    if-nez p1, :cond_0

    .line 503
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->recurringCharges:Ljava/util/List;

    .line 510
    :goto_0
    return-void

    .line 507
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    .local v0, "recurringChargesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/RecurringCharge;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 509
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->recurringCharges:Ljava/util/List;

    goto :goto_0
.end method

.method public setReservedInstancesOfferingId(Ljava/lang/String;)V
    .locals 0
    .param p1, "reservedInstancesOfferingId"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->reservedInstancesOfferingId:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setUsagePrice(Ljava/lang/Float;)V
    .locals 0
    .param p1, "usagePrice"    # Ljava/lang/Float;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->usagePrice:Ljava/lang/Float;

    .line 289
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReservedInstancesOfferingId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getReservedInstancesOfferingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getUsagePrice()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsagePrice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getUsagePrice()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getFixedPrice()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FixedPrice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getFixedPrice()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getProductDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceTenancy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrencyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getOfferingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OfferingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getOfferingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getRecurringCharges()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecurringCharges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getRecurringCharges()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->isMarketplace()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marketplace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->isMarketplace()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getPricingDetails()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PricingDetails: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getPricingDetails()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_c
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->availabilityZone:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public withCurrencyCode(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 0
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->currencyCode:Ljava/lang/String;

    .line 445
    return-object p0
.end method

.method public withDuration(Ljava/lang/Long;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 0
    .param p1, "duration"    # Ljava/lang/Long;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->duration:Ljava/lang/Long;

    .line 269
    return-object p0
.end method

.method public withFixedPrice(Ljava/lang/Float;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 0
    .param p1, "fixedPrice"    # Ljava/lang/Float;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->fixedPrice:Ljava/lang/Float;

    .line 337
    return-object p0
.end method

.method public withInstanceTenancy(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 0
    .param p1, "instanceTenancy"    # Ljava/lang/String;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->instanceTenancy:Ljava/lang/String;

    .line 405
    return-object p0
.end method

.method public withInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->instanceType:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->instanceType:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public withMarketplace(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 0
    .param p1, "marketplace"    # Ljava/lang/Boolean;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->marketplace:Ljava/lang/Boolean;

    .line 582
    return-object p0
.end method

.method public withOfferingType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 0
    .param p1, "offeringType"    # Ljava/lang/String;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->offeringType:Ljava/lang/String;

    .line 479
    return-object p0
.end method

.method public withPricingDetails(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/PricingDetail;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;"
        }
    .end annotation

    .prologue
    .line 653
    .local p1, "pricingDetails":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/PricingDetail;>;"
    if-nez p1, :cond_0

    .line 654
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->pricingDetails:Ljava/util/List;

    .line 661
    :goto_0
    return-object p0

    .line 656
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 657
    .local v0, "pricingDetailsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/PricingDetail;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 658
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->pricingDetails:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withPricingDetails([Lcom/amazonaws/services/ec2/model/PricingDetail;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 6
    .param p1, "pricingDetails"    # [Lcom/amazonaws/services/ec2/model/PricingDetail;

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getPricingDetails()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->setPricingDetails(Ljava/util/Collection;)V

    .line 636
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/PricingDetail;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 637
    .local v3, "value":Lcom/amazonaws/services/ec2/model/PricingDetail;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getPricingDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/PricingDetail;
    :cond_1
    return-object p0
.end method

.method public withProductDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 0
    .param p1, "productDescription"    # Ljava/lang/String;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->productDescription:Ljava/lang/String;

    .line 371
    return-object p0
.end method

.method public withRecurringCharges(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/RecurringCharge;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;"
        }
    .end annotation

    .prologue
    .line 541
    .local p1, "recurringCharges":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/RecurringCharge;>;"
    if-nez p1, :cond_0

    .line 542
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->recurringCharges:Ljava/util/List;

    .line 549
    :goto_0
    return-object p0

    .line 544
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
    .local v0, "recurringChargesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/RecurringCharge;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 546
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->recurringCharges:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withRecurringCharges([Lcom/amazonaws/services/ec2/model/RecurringCharge;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 6
    .param p1, "recurringCharges"    # [Lcom/amazonaws/services/ec2/model/RecurringCharge;

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getRecurringCharges()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->setRecurringCharges(Ljava/util/Collection;)V

    .line 524
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/RecurringCharge;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 525
    .local v3, "value":Lcom/amazonaws/services/ec2/model/RecurringCharge;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->getRecurringCharges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 527
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/RecurringCharge;
    :cond_1
    return-object p0
.end method

.method public withReservedInstancesOfferingId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 0
    .param p1, "reservedInstancesOfferingId"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->reservedInstancesOfferingId:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public withUsagePrice(Ljava/lang/Float;)Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;
    .locals 0
    .param p1, "usagePrice"    # Ljava/lang/Float;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstancesOffering;->usagePrice:Ljava/lang/Float;

    .line 303
    return-object p0
.end method
