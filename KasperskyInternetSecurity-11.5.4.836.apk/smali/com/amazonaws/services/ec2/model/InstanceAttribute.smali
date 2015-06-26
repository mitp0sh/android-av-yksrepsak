.class public Lcom/amazonaws/services/ec2/model/InstanceAttribute;
.super Ljava/lang/Object;
.source "InstanceAttribute.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private blockDeviceMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;",
            ">;"
        }
    .end annotation
.end field

.field private disableApiTermination:Ljava/lang/Boolean;

.field private ebsOptimized:Ljava/lang/Boolean;

.field private instanceId:Ljava/lang/String;

.field private instanceInitiatedShutdownBehavior:Ljava/lang/String;

.field private instanceType:Ljava/lang/String;

.field private kernelId:Ljava/lang/String;

.field private productCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;"
        }
    .end annotation
.end field

.field private ramdiskId:Ljava/lang/String;

.field private rootDeviceName:Ljava/lang/String;

.field private userData:Ljava/lang/String;


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

    .line 619
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 647
    :cond_0
    :goto_0
    return v3

    .line 620
    :cond_1
    if-eqz p1, :cond_0

    .line 622
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/InstanceAttribute;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 623
    check-cast v0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;

    .line 625
    .local v0, "other":Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 626
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 628
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 630
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 632
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getUserData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 634
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getUserData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 636
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 638
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRootDeviceName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 640
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRootDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1d

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1e

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 642
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1f

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_20

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 644
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_21

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_22

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 646
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_c
    move v3, v2

    .line 647
    goto/16 :goto_0

    :cond_d
    move v1, v3

    .line 625
    goto/16 :goto_1

    :cond_e
    move v4, v3

    goto/16 :goto_2

    :cond_f
    move v1, v3

    .line 627
    goto/16 :goto_3

    :cond_10
    move v4, v3

    goto/16 :goto_4

    :cond_11
    move v1, v3

    .line 629
    goto/16 :goto_5

    :cond_12
    move v4, v3

    goto/16 :goto_6

    :cond_13
    move v1, v3

    .line 631
    goto/16 :goto_7

    :cond_14
    move v4, v3

    goto/16 :goto_8

    :cond_15
    move v1, v3

    .line 633
    goto/16 :goto_9

    :cond_16
    move v4, v3

    goto/16 :goto_a

    :cond_17
    move v1, v3

    .line 635
    goto/16 :goto_b

    :cond_18
    move v4, v3

    goto/16 :goto_c

    :cond_19
    move v1, v3

    .line 637
    goto/16 :goto_d

    :cond_1a
    move v4, v3

    goto/16 :goto_e

    :cond_1b
    move v1, v3

    .line 639
    goto/16 :goto_f

    :cond_1c
    move v4, v3

    goto/16 :goto_10

    :cond_1d
    move v1, v3

    .line 641
    goto/16 :goto_11

    :cond_1e
    move v4, v3

    goto/16 :goto_12

    :cond_1f
    move v1, v3

    .line 643
    goto :goto_13

    :cond_20
    move v4, v3

    goto :goto_14

    :cond_21
    move v1, v3

    .line 645
    goto :goto_15

    :cond_22
    move v4, v3

    goto :goto_16
.end method

.method public getBlockDeviceMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->blockDeviceMappings:Ljava/util/List;

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getDisableApiTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->disableApiTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceInitiatedShutdownBehavior()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->kernelId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->productCodes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->productCodes:Ljava/util/List;

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->productCodes:Ljava/util/List;

    return-object v0
.end method

.method public getRamdiskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->ramdiskId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->rootDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->userData:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 600
    const/16 v1, 0x1f

    .line 601
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 603
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 604
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 605
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 606
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 607
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getUserData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 608
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 609
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 610
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 611
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 612
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 613
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_a

    :goto_a
    add-int v0, v2, v3

    .line 614
    return v0

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 605
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 606
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 607
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 608
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_5

    .line 609
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 610
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 611
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    .line 612
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    .line 613
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_a
.end method

.method public isDisableApiTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->disableApiTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setBlockDeviceMappings(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 406
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->blockDeviceMappings:Ljava/util/List;

    .line 413
    :goto_0
    return-void

    .line 410
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 411
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 412
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setDisableApiTermination(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "disableApiTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->disableApiTermination:Ljava/lang/Boolean;

    .line 277
    return-void
.end method

.method public setEbsOptimized(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->ebsOptimized:Ljava/lang/Boolean;

    .line 544
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->instanceId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setInstanceInitiatedShutdownBehavior(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceInitiatedShutdownBehavior"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->instanceType:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setKernelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->kernelId:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setProductCodes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    if-nez p1, :cond_0

    .line 479
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->productCodes:Ljava/util/List;

    .line 486
    :goto_0
    return-void

    .line 483
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 484
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 485
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public setRamdiskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->ramdiskId:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setRootDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootDeviceName"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->rootDeviceName:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->userData:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RamdiskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableApiTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceInitiatedShutdownBehavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RootDeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductCodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EbsOptimized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->isEbsOptimized()Ljava/lang/Boolean;

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
    :cond_a
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/InstanceAttribute;"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 449
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->blockDeviceMappings:Ljava/util/List;

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
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 453
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    .locals 6
    .param p1, "blockDeviceMappings"    # [Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->setBlockDeviceMappings(Ljava/util/Collection;)V

    .line 429
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 430
    .local v3, "value":Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMapping;
    :cond_1
    return-object p0
.end method

.method public withDisableApiTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    .locals 0
    .param p1, "disableApiTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->disableApiTermination:Ljava/lang/Boolean;

    .line 293
    return-object p0
.end method

.method public withEbsOptimized(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->ebsOptimized:Ljava/lang/Boolean;

    .line 558
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->instanceId:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public withInstanceInitiatedShutdownBehavior(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    .locals 0
    .param p1, "instanceInitiatedShutdownBehavior"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    .line 344
    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->instanceType:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public withKernelId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->kernelId:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public withProductCodes(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/InstanceAttribute;"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    if-nez p1, :cond_0

    .line 518
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->productCodes:Ljava/util/List;

    .line 525
    :goto_0
    return-object p0

    .line 520
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 521
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 522
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withProductCodes([Lcom/amazonaws/services/ec2/model/ProductCode;)Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    .locals 6
    .param p1, "productCodes"    # [Lcom/amazonaws/services/ec2/model/ProductCode;

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->setProductCodes(Ljava/util/Collection;)V

    .line 500
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/ProductCode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 501
    .local v3, "value":Lcom/amazonaws/services/ec2/model/ProductCode;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/ProductCode;
    :cond_1
    return-object p0
.end method

.method public withRamdiskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->ramdiskId:Ljava/lang/String;

    .line 219
    return-object p0
.end method

.method public withRootDeviceName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    .locals 0
    .param p1, "rootDeviceName"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->rootDeviceName:Ljava/lang/String;

    .line 378
    return-object p0
.end method

.method public withUserData(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/InstanceAttribute;
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/InstanceAttribute;->userData:Ljava/lang/String;

    .line 253
    return-object p0
.end method
