.class public Lcom/amazonaws/services/ec2/model/ReservedInstances;
.super Ljava/lang/Object;
.source "ReservedInstances.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZone:Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field private duration:Ljava/lang/Long;

.field private fixedPrice:Ljava/lang/Float;

.field private instanceCount:Ljava/lang/Integer;

.field private instanceTenancy:Ljava/lang/String;

.field private instanceType:Ljava/lang/String;

.field private offeringType:Ljava/lang/String;

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

.field private reservedInstancesId:Ljava/lang/String;

.field private start:Ljava/util/Date;

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

    .line 802
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 838
    :cond_0
    :goto_0
    return v3

    .line 803
    :cond_1
    if-eqz p1, :cond_0

    .line 805
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ReservedInstances;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 806
    check-cast v0, Lcom/amazonaws/services/ec2/model/ReservedInstances;

    .line 808
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ReservedInstances;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 809
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 811
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 813
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getStart()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getStart()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 815
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getStart()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getStart()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getStart()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getDuration()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 817
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getDuration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getDuration()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getUsagePrice()Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getUsagePrice()Ljava/lang/Float;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 819
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getUsagePrice()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getUsagePrice()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getUsagePrice()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getFixedPrice()Ljava/lang/Float;

    move-result-object v1

    if-nez v1, :cond_1d

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getFixedPrice()Ljava/lang/Float;

    move-result-object v4

    if-nez v4, :cond_1e

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 821
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getFixedPrice()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getFixedPrice()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getFixedPrice()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1f

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_20

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 823
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getProductDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_22

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 825
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getProductDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_24

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 827
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_25

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_26

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 829
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_28

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 831
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2a

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 833
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    :cond_e
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getOfferingType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    move v1, v2

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getOfferingType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2c

    move v4, v2

    :goto_1c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 835
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getOfferingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getOfferingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getOfferingType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    :cond_f
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getRecurringCharges()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2d

    move v1, v2

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getRecurringCharges()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2e

    move v4, v2

    :goto_1e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 837
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getRecurringCharges()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getRecurringCharges()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getRecurringCharges()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_10
    move v3, v2

    .line 838
    goto/16 :goto_0

    :cond_11
    move v1, v3

    .line 808
    goto/16 :goto_1

    :cond_12
    move v4, v3

    goto/16 :goto_2

    :cond_13
    move v1, v3

    .line 810
    goto/16 :goto_3

    :cond_14
    move v4, v3

    goto/16 :goto_4

    :cond_15
    move v1, v3

    .line 812
    goto/16 :goto_5

    :cond_16
    move v4, v3

    goto/16 :goto_6

    :cond_17
    move v1, v3

    .line 814
    goto/16 :goto_7

    :cond_18
    move v4, v3

    goto/16 :goto_8

    :cond_19
    move v1, v3

    .line 816
    goto/16 :goto_9

    :cond_1a
    move v4, v3

    goto/16 :goto_a

    :cond_1b
    move v1, v3

    .line 818
    goto/16 :goto_b

    :cond_1c
    move v4, v3

    goto/16 :goto_c

    :cond_1d
    move v1, v3

    .line 820
    goto/16 :goto_d

    :cond_1e
    move v4, v3

    goto/16 :goto_e

    :cond_1f
    move v1, v3

    .line 822
    goto/16 :goto_f

    :cond_20
    move v4, v3

    goto/16 :goto_10

    :cond_21
    move v1, v3

    .line 824
    goto/16 :goto_11

    :cond_22
    move v4, v3

    goto/16 :goto_12

    :cond_23
    move v1, v3

    .line 826
    goto/16 :goto_13

    :cond_24
    move v4, v3

    goto/16 :goto_14

    :cond_25
    move v1, v3

    .line 828
    goto/16 :goto_15

    :cond_26
    move v4, v3

    goto/16 :goto_16

    :cond_27
    move v1, v3

    .line 830
    goto/16 :goto_17

    :cond_28
    move v4, v3

    goto/16 :goto_18

    :cond_29
    move v1, v3

    .line 832
    goto/16 :goto_19

    :cond_2a
    move v4, v3

    goto/16 :goto_1a

    :cond_2b
    move v1, v3

    .line 834
    goto/16 :goto_1b

    :cond_2c
    move v4, v3

    goto/16 :goto_1c

    :cond_2d
    move v1, v3

    .line 836
    goto :goto_1d

    :cond_2e
    move v4, v3

    goto :goto_1e
.end method

.method public getAvailabilityZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->availabilityZone:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->duration:Ljava/lang/Long;

    return-object v0
.end method

.method public getFixedPrice()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->fixedPrice:Ljava/lang/Float;

    return-object v0
.end method

.method public getInstanceCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->instanceCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInstanceTenancy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->instanceTenancy:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->offeringType:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->productDescription:Ljava/lang/String;

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
    .line 684
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->recurringCharges:Ljava/util/List;

    if-nez v0, :cond_0

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->recurringCharges:Ljava/util/List;

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->recurringCharges:Ljava/util/List;

    return-object v0
.end method

.method public getReservedInstancesId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->reservedInstancesId:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/util/Date;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->start:Ljava/util/Date;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->state:Ljava/lang/String;

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
    .line 507
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->tags:Ljava/util/List;

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getUsagePrice()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->usagePrice:Ljava/lang/Float;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 779
    const/16 v1, 0x1f

    .line 780
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 782
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 783
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 784
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 785
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getStart()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 786
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getDuration()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 787
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getUsagePrice()Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 788
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getFixedPrice()Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 789
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 790
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getProductDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 791
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 792
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 793
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 794
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_c
    add-int v0, v4, v2

    .line 795
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getOfferingType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_d
    add-int v0, v4, v2

    .line 796
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getRecurringCharges()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_e

    :goto_e
    add-int v0, v2, v3

    .line 797
    return v0

    .line 782
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 784
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 785
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getStart()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 786
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 787
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getUsagePrice()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 788
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getFixedPrice()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 789
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 790
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getProductDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 791
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 792
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 793
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 794
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 795
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getOfferingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 796
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getRecurringCharges()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_e
.end method

.method public setAvailabilityZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->availabilityZone:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->currencyCode:Ljava/lang/String;

    .line 623
    return-void
.end method

.method public setDuration(Ljava/lang/Long;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/Long;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->duration:Ljava/lang/Long;

    .line 306
    return-void
.end method

.method public setFixedPrice(Ljava/lang/Float;)V
    .locals 0
    .param p1, "fixedPrice"    # Ljava/lang/Float;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->fixedPrice:Ljava/lang/Float;

    .line 374
    return-void
.end method

.method public setInstanceCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "instanceCount"    # Ljava/lang/Integer;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->instanceCount:Ljava/lang/Integer;

    .line 408
    return-void
.end method

.method public setInstanceTenancy(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceTenancy"    # Ljava/lang/String;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->instanceTenancy:Ljava/lang/String;

    .line 585
    return-void
.end method

.method public setInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)V
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->instanceType:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->instanceType:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setOfferingType(Ljava/lang/String;)V
    .locals 0
    .param p1, "offeringType"    # Ljava/lang/String;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->offeringType:Ljava/lang/String;

    .line 659
    return-void
.end method

.method public setProductDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "productDescription"    # Ljava/lang/String;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->productDescription:Ljava/lang/String;

    .line 446
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
    .line 696
    .local p1, "recurringCharges":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/RecurringCharge;>;"
    if-nez p1, :cond_0

    .line 697
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->recurringCharges:Ljava/util/List;

    .line 704
    :goto_0
    return-void

    .line 701
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 702
    .local v0, "recurringChargesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/RecurringCharge;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 703
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->recurringCharges:Ljava/util/List;

    goto :goto_0
.end method

.method public setReservedInstancesId(Ljava/lang/String;)V
    .locals 0
    .param p1, "reservedInstancesId"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->reservedInstancesId:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setStart(Ljava/util/Date;)V
    .locals 0
    .param p1, "start"    # Ljava/util/Date;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->start:Ljava/util/Date;

    .line 272
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->state:Ljava/lang/String;

    .line 482
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
    .line 519
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 520
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->tags:Ljava/util/List;

    .line 527
    :goto_0
    return-void

    .line 524
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 525
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 526
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public setUsagePrice(Ljava/lang/Float;)V
    .locals 0
    .param p1, "usagePrice"    # Ljava/lang/Float;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->usagePrice:Ljava/lang/Float;

    .line 340
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReservedInstancesId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getReservedInstancesId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getStart()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getStart()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getUsagePrice()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsagePrice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getUsagePrice()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getFixedPrice()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FixedPrice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getFixedPrice()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getProductDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getProductDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceTenancy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrencyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getOfferingType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OfferingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getOfferingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getRecurringCharges()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecurringCharges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getRecurringCharges()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    :cond_e
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZone(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 0
    .param p1, "availabilityZone"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->availabilityZone:Ljava/lang/String;

    .line 252
    return-object p0
.end method

.method public withCurrencyCode(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 0
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->currencyCode:Ljava/lang/String;

    .line 639
    return-object p0
.end method

.method public withDuration(Ljava/lang/Long;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 0
    .param p1, "duration"    # Ljava/lang/Long;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->duration:Ljava/lang/Long;

    .line 320
    return-object p0
.end method

.method public withFixedPrice(Ljava/lang/Float;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 0
    .param p1, "fixedPrice"    # Ljava/lang/Float;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->fixedPrice:Ljava/lang/Float;

    .line 388
    return-object p0
.end method

.method public withInstanceCount(Ljava/lang/Integer;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 0
    .param p1, "instanceCount"    # Ljava/lang/Integer;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->instanceCount:Ljava/lang/Integer;

    .line 422
    return-object p0
.end method

.method public withInstanceTenancy(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 0
    .param p1, "instanceTenancy"    # Ljava/lang/String;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->instanceTenancy:Ljava/lang/String;

    .line 599
    return-object p0
.end method

.method public withInstanceType(Lcom/amazonaws/services/ec2/model/InstanceType;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 1
    .param p1, "instanceType"    # Lcom/amazonaws/services/ec2/model/InstanceType;

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->instanceType:Ljava/lang/String;

    .line 219
    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->instanceType:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public withOfferingType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 0
    .param p1, "offeringType"    # Ljava/lang/String;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->offeringType:Ljava/lang/String;

    .line 673
    return-object p0
.end method

.method public withProductDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 0
    .param p1, "productDescription"    # Ljava/lang/String;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->productDescription:Ljava/lang/String;

    .line 462
    return-object p0
.end method

.method public withRecurringCharges(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/RecurringCharge;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ReservedInstances;"
        }
    .end annotation

    .prologue
    .line 735
    .local p1, "recurringCharges":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/RecurringCharge;>;"
    if-nez p1, :cond_0

    .line 736
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->recurringCharges:Ljava/util/List;

    .line 743
    :goto_0
    return-object p0

    .line 738
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 739
    .local v0, "recurringChargesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/RecurringCharge;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 740
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->recurringCharges:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withRecurringCharges([Lcom/amazonaws/services/ec2/model/RecurringCharge;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 6
    .param p1, "recurringCharges"    # [Lcom/amazonaws/services/ec2/model/RecurringCharge;

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getRecurringCharges()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->setRecurringCharges(Ljava/util/Collection;)V

    .line 718
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

    .line 719
    .local v3, "value":Lcom/amazonaws/services/ec2/model/RecurringCharge;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getRecurringCharges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/RecurringCharge;
    :cond_1
    return-object p0
.end method

.method public withReservedInstancesId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 0
    .param p1, "reservedInstancesId"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->reservedInstancesId:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public withStart(Ljava/util/Date;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 0
    .param p1, "start"    # Ljava/util/Date;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->start:Ljava/util/Date;

    .line 286
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->state:Ljava/lang/String;

    .line 496
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ReservedInstances;"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 559
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->tags:Ljava/util/List;

    .line 566
    :goto_0
    return-object p0

    .line 561
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 562
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/ec2/model/Tag;

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->setTags(Ljava/util/Collection;)V

    .line 541
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

    .line 542
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Tag;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ReservedInstances;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 544
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Tag;
    :cond_1
    return-object p0
.end method

.method public withUsagePrice(Ljava/lang/Float;)Lcom/amazonaws/services/ec2/model/ReservedInstances;
    .locals 0
    .param p1, "usagePrice"    # Ljava/lang/Float;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ReservedInstances;->usagePrice:Ljava/lang/Float;

    .line 354
    return-object p0
.end method
