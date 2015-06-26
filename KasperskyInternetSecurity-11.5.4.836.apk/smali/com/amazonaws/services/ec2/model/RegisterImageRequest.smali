.class public Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "RegisterImageRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private architecture:Ljava/lang/String;

.field private blockDeviceMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private imageLocation:Ljava/lang/String;

.field private kernelId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private ramdiskId:Ljava/lang/String;

.field private rootDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageLocation"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->imageLocation:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 514
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 536
    :cond_0
    :goto_0
    return v3

    .line 515
    :cond_1
    if-eqz p1, :cond_0

    .line 517
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 518
    check-cast v0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;

    .line 520
    .local v0, "other":Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 521
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 523
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 525
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 527
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 529
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_17

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_19

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    move v3, v2

    .line 536
    goto/16 :goto_0

    :cond_a
    move v1, v3

    .line 520
    goto/16 :goto_1

    :cond_b
    move v4, v3

    goto/16 :goto_2

    :cond_c
    move v1, v3

    .line 522
    goto/16 :goto_3

    :cond_d
    move v4, v3

    goto/16 :goto_4

    :cond_e
    move v1, v3

    .line 524
    goto/16 :goto_5

    :cond_f
    move v4, v3

    goto/16 :goto_6

    :cond_10
    move v1, v3

    .line 526
    goto/16 :goto_7

    :cond_11
    move v4, v3

    goto/16 :goto_8

    :cond_12
    move v1, v3

    .line 528
    goto/16 :goto_9

    :cond_13
    move v4, v3

    goto/16 :goto_a

    :cond_14
    move v1, v3

    .line 530
    goto/16 :goto_b

    :cond_15
    move v4, v3

    goto/16 :goto_c

    :cond_16
    move v1, v3

    .line 532
    goto :goto_d

    :cond_17
    move v4, v3

    goto :goto_e

    :cond_18
    move v1, v3

    .line 534
    goto :goto_f

    :cond_19
    move v4, v3

    goto :goto_10
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->architecture:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockDeviceMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->imageLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->kernelId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRamdiskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->ramdiskId:Ljava/lang/String;

    return-object v0
.end method

.method public getRootDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->rootDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 498
    const/16 v1, 0x1f

    .line 499
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 501
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 502
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 503
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 504
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 505
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 506
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 507
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 508
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    :goto_7
    add-int v0, v2, v3

    .line 509
    return v0

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 503
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 504
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 505
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 506
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 507
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 508
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_7
.end method

.method public setArchitecture(Ljava/lang/String;)V
    .locals 0
    .param p1, "architecture"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->architecture:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setBlockDeviceMappings(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 415
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    .line 422
    :goto_0
    return-void

    .line 419
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 420
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 421
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->description:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setImageLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageLocation"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->imageLocation:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setKernelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->kernelId:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->name:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setRamdiskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->ramdiskId:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setRootDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootDeviceName"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->rootDeviceName:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getImageLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Architecture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RamdiskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RootDeviceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getRootDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_7
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withArchitecture(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0
    .param p1, "architecture"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->architecture:Ljava/lang/String;

    .line 263
    return-object p0
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/RegisterImageRequest;"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 462
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    .line 469
    :goto_0
    return-object p0

    .line 464
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 465
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 466
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 6
    .param p1, "blockDeviceMappings"    # [Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->setBlockDeviceMappings(Ljava/util/Collection;)V

    .line 440
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 441
    .local v3, "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    :cond_1
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->description:Ljava/lang/String;

    .line 223
    return-object p0
.end method

.method public withImageLocation(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0
    .param p1, "imageLocation"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->imageLocation:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public withKernelId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->kernelId:Ljava/lang/String;

    .line 297
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->name:Ljava/lang/String;

    .line 189
    return-object p0
.end method

.method public withRamdiskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->ramdiskId:Ljava/lang/String;

    .line 349
    return-object p0
.end method

.method public withRootDeviceName(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/RegisterImageRequest;
    .locals 0
    .param p1, "rootDeviceName"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/RegisterImageRequest;->rootDeviceName:Ljava/lang/String;

    .line 383
    return-object p0
.end method
