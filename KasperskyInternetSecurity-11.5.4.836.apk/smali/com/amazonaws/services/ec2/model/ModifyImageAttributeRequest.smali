.class public Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ModifyImageAttributeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attribute:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private imageId:Ljava/lang/String;

.field private launchPermission:Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

.field private operationType:Ljava/lang/String;

.field private productCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->imageId:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->attribute:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 624
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 648
    :cond_0
    :goto_0
    return v3

    .line 625
    :cond_1
    if-eqz p1, :cond_0

    .line 627
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 628
    check-cast v0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;

    .line 630
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 631
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 633
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 635
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 637
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 639
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getProductCodes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 643
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getLaunchPermission()Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getLaunchPermission()Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getLaunchPermission()Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getLaunchPermission()Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getLaunchPermission()Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 647
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_a
    move v3, v2

    .line 648
    goto/16 :goto_0

    :cond_b
    move v1, v3

    .line 630
    goto/16 :goto_1

    :cond_c
    move v4, v3

    goto/16 :goto_2

    :cond_d
    move v1, v3

    .line 632
    goto/16 :goto_3

    :cond_e
    move v4, v3

    goto/16 :goto_4

    :cond_f
    move v1, v3

    .line 634
    goto/16 :goto_5

    :cond_10
    move v4, v3

    goto/16 :goto_6

    :cond_11
    move v1, v3

    .line 636
    goto/16 :goto_7

    :cond_12
    move v4, v3

    goto/16 :goto_8

    :cond_13
    move v1, v3

    .line 638
    goto/16 :goto_9

    :cond_14
    move v4, v3

    goto/16 :goto_a

    :cond_15
    move v1, v3

    .line 640
    goto/16 :goto_b

    :cond_16
    move v4, v3

    goto/16 :goto_c

    :cond_17
    move v1, v3

    .line 642
    goto/16 :goto_d

    :cond_18
    move v4, v3

    goto/16 :goto_e

    :cond_19
    move v1, v3

    .line 644
    goto :goto_f

    :cond_1a
    move v4, v3

    goto :goto_10

    :cond_1b
    move v1, v3

    .line 646
    goto :goto_11

    :cond_1c
    move v4, v3

    goto :goto_12
.end method

.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->attribute:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchPermission()Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->launchPermission:Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->operationType:Ljava/lang/String;

    return-object v0
.end method

.method public getProductCodes()Ljava/util/List;
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
    .line 404
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->productCodes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->productCodes:Ljava/util/List;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->productCodes:Ljava/util/List;

    return-object v0
.end method

.method public getUserGroups()Ljava/util/List;
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
    .line 315
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userGroups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userGroups:Ljava/util/List;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userGroups:Ljava/util/List;

    return-object v0
.end method

.method public getUserIds()Ljava/util/List;
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
    .line 228
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userIds:Ljava/util/List;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userIds:Ljava/util/List;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userIds:Ljava/util/List;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 607
    const/16 v1, 0x1f

    .line 608
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 610
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 611
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 612
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 613
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 614
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 615
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getProductCodes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 616
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 617
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getLaunchPermission()Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 618
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    :goto_8
    add-int v0, v2, v3

    .line 619
    return v0

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 612
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 613
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    .line 614
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    .line 615
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getProductCodes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    .line 616
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 617
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getLaunchPermission()Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;->hashCode()I

    move-result v2

    goto :goto_7

    .line 618
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_8
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->attribute:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->description:Ljava/lang/String;

    .line 562
    return-void
.end method

.method public setImageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->imageId:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setLaunchPermission(Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;)V
    .locals 0
    .param p1, "launchPermission"    # Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->launchPermission:Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    .line 528
    return-void
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "operationType"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->operationType:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setProductCodes(Ljava/util/Collection;)V
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
    .line 418
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 419
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->productCodes:Ljava/util/List;

    .line 426
    :goto_0
    return-void

    .line 423
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 424
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 425
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public setUserGroups(Ljava/util/Collection;)V
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
    .line 333
    .local p1, "userGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 334
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userGroups:Ljava/util/List;

    .line 341
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    .local v0, "userGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 340
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public setUserIds(Ljava/util/Collection;)V
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
    .line 244
    .local p1, "userIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userIds:Ljava/util/List;

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .local v0, "userIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userIds:Ljava/util/List;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->value:Ljava/lang/String;

    .line 492
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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getImageId()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OperationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getOperationType()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserIds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserGroups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getProductCodes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProductCodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getProductCodes()Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getLaunchPermission()Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchPermission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getLaunchPermission()Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getDescription()Ljava/lang/String;

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
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttribute(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->attribute:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->description:Ljava/lang/String;

    .line 576
    return-object p0
.end method

.method public withImageId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .locals 0
    .param p1, "imageId"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->imageId:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public withLaunchPermission(Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;)Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .locals 0
    .param p1, "launchPermission"    # Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->launchPermission:Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    .line 542
    return-object p0
.end method

.method public withOperationType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .locals 0
    .param p1, "operationType"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->operationType:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public withProductCodes(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "productCodes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 462
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->productCodes:Ljava/util/List;

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
    .local v0, "productCodesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 466
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->productCodes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withProductCodes([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .locals 6
    .param p1, "productCodes"    # [Ljava/lang/String;

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getProductCodes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->setProductCodes(Ljava/util/Collection;)V

    .line 442
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

    .line 443
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getProductCodes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withUserGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "userGroups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 385
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userGroups:Ljava/util/List;

    .line 392
    :goto_0
    return-object p0

    .line 387
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    .local v0, "userGroupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userGroups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withUserGroups([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .locals 6
    .param p1, "userGroups"    # [Ljava/lang/String;

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->setUserGroups(Ljava/util/Collection;)V

    .line 361
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

    .line 362
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withUserIds(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "userIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 292
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userIds:Ljava/util/List;

    .line 299
    :goto_0
    return-object p0

    .line 294
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    .local v0, "userIdsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->userIds:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withUserIds([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .locals 6
    .param p1, "userIds"    # [Ljava/lang/String;

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->setUserIds(Ljava/util/Collection;)V

    .line 270
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

    .line 271
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withValue(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->value:Ljava/lang/String;

    .line 508
    return-object p0
.end method
