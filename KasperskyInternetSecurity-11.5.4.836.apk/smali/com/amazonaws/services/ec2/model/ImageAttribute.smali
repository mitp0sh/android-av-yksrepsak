.class public Lcom/amazonaws/services/ec2/model/ImageAttribute;
.super Ljava/lang/Object;
.source "ImageAttribute.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
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

.field private imageId:Ljava/lang/String;

.field private kernelId:Ljava/lang/String;

.field private launchPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/LaunchPermission;",
            ">;"
        }
    .end annotation
.end field

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

    .line 443
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 463
    :cond_0
    :goto_0
    return v3

    .line 444
    :cond_1
    if-eqz p1, :cond_0

    .line 446
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ImageAttribute;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 447
    check-cast v0, Lcom/amazonaws/services/ec2/model/ImageAttribute;

    .line 449
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ImageAttribute;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getImageId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getLaunchPermissions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getLaunchPermissions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 452
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getLaunchPermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getLaunchPermissions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getLaunchPermissions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 454
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 456
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 458
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 460
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 462
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_8
    move v3, v2

    .line 463
    goto/16 :goto_0

    :cond_9
    move v1, v3

    .line 449
    goto/16 :goto_1

    :cond_a
    move v4, v3

    goto/16 :goto_2

    :cond_b
    move v1, v3

    .line 451
    goto/16 :goto_3

    :cond_c
    move v4, v3

    goto/16 :goto_4

    :cond_d
    move v1, v3

    .line 453
    goto/16 :goto_5

    :cond_e
    move v4, v3

    goto/16 :goto_6

    :cond_f
    move v1, v3

    .line 455
    goto/16 :goto_7

    :cond_10
    move v4, v3

    goto/16 :goto_8

    :cond_11
    move v1, v3

    .line 457
    goto/16 :goto_9

    :cond_12
    move v4, v3

    goto :goto_a

    :cond_13
    move v1, v3

    .line 459
    goto :goto_b

    :cond_14
    move v4, v3

    goto :goto_c

    :cond_15
    move v1, v3

    .line 461
    goto :goto_d

    :cond_16
    move v4, v3

    goto :goto_e
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
    .line 341
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->blockDeviceMappings:Ljava/util/List;

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getKernelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->kernelId:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/LaunchPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->launchPermissions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->launchPermissions:Ljava/util/List;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->launchPermissions:Ljava/util/List;

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
    .line 170
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->productCodes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->productCodes:Ljava/util/List;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->productCodes:Ljava/util/List;

    return-object v0
.end method

.method public getRamdiskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->ramdiskId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 428
    const/16 v1, 0x1f

    .line 429
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 431
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getImageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 432
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getLaunchPermissions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 433
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 434
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 435
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 436
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 437
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_6

    :goto_6
    add-int v0, v2, v3

    .line 438
    return v0

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getLaunchPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 433
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 434
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 435
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 436
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 437
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_6
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
    .line 353
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 354
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->blockDeviceMappings:Ljava/util/List;

    .line 361
    :goto_0
    return-void

    .line 358
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->description:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->imageId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setKernelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->kernelId:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setLaunchPermissions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/LaunchPermission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "launchPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/LaunchPermission;>;"
    if-nez p1, :cond_0

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->launchPermissions:Ljava/util/List;

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v0, "launchPermissionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/LaunchPermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->launchPermissions:Ljava/util/List;

    goto :goto_0
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
    .line 182
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    if-nez p1, :cond_0

    .line 183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->productCodes:Ljava/util/List;

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public setRamdiskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->ramdiskId:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getLaunchPermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchPermissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getLaunchPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductCodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KernelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getKernelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RamdiskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getRamdiskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_6
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ImageAttribute;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ImageAttribute;"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    if-nez p1, :cond_0

    .line 393
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->blockDeviceMappings:Ljava/util/List;

    .line 400
    :goto_0
    return-object p0

    .line 395
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 396
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 397
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;)Lcom/amazonaws/services/ec2/model/ImageAttribute;
    .locals 6
    .param p1, "blockDeviceMappings"    # [Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->setBlockDeviceMappings(Ljava/util/Collection;)V

    .line 375
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

    .line 376
    .local v3, "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    :cond_1
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImageAttribute;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->description:Ljava/lang/String;

    .line 330
    return-object p0
.end method

.method public withImageId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImageAttribute;
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->imageId:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public withKernelId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImageAttribute;
    .locals 0
    .param p1, "kernelId"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->kernelId:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public withLaunchPermissions(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ImageAttribute;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/LaunchPermission;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ImageAttribute;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "launchPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/LaunchPermission;>;"
    if-nez p1, :cond_0

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->launchPermissions:Ljava/util/List;

    .line 160
    :goto_0
    return-object p0

    .line 155
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .local v0, "launchPermissionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/LaunchPermission;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->launchPermissions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withLaunchPermissions([Lcom/amazonaws/services/ec2/model/LaunchPermission;)Lcom/amazonaws/services/ec2/model/ImageAttribute;
    .locals 6
    .param p1, "launchPermissions"    # [Lcom/amazonaws/services/ec2/model/LaunchPermission;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getLaunchPermissions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->setLaunchPermissions(Ljava/util/Collection;)V

    .line 135
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/LaunchPermission;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 136
    .local v3, "value":Lcom/amazonaws/services/ec2/model/LaunchPermission;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getLaunchPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/LaunchPermission;
    :cond_1
    return-object p0
.end method

.method public withProductCodes(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ImageAttribute;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/ProductCode;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ImageAttribute;"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    if-nez p1, :cond_0

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->productCodes:Ljava/util/List;

    .line 229
    :goto_0
    return-object p0

    .line 224
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/ProductCode;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withProductCodes([Lcom/amazonaws/services/ec2/model/ProductCode;)Lcom/amazonaws/services/ec2/model/ImageAttribute;
    .locals 6
    .param p1, "productCodes"    # [Lcom/amazonaws/services/ec2/model/ProductCode;

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->setProductCodes(Ljava/util/Collection;)V

    .line 204
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

    .line 205
    .local v3, "value":Lcom/amazonaws/services/ec2/model/ProductCode;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ImageAttribute;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/ProductCode;
    :cond_1
    return-object p0
.end method

.method public withRamdiskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ImageAttribute;
    .locals 0
    .param p1, "ramdiskId"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ImageAttribute;->ramdiskId:Ljava/lang/String;

    .line 296
    return-object p0
.end method
