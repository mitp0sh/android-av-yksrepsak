.class public Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ModifyInstanceAttributeRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attribute:Ljava/lang/String;

.field private blockDeviceMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;",
            ">;"
        }
    .end annotation
.end field

.field private disableApiTermination:Ljava/lang/Boolean;

.field private ebsOptimized:Ljava/lang/Boolean;

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private instanceId:Ljava/lang/String;

.field private instanceInitiatedShutdownBehavior:Ljava/lang/String;

.field private instanceType:Ljava/lang/String;

.field private kernel:Ljava/lang/String;

.field private ramdisk:Ljava/lang/String;

.field private sourceDestCheck:Ljava/lang/Boolean;

.field private userData:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/ec2/model/InstanceAttributeName;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "attribute"    # Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->instanceId:Ljava/lang/String;

    .line 148
    invoke-virtual {p2}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->attribute:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->instanceId:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->attribute:Ljava/lang/String;

    .line 128
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 881
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 913
    :cond_0
    :goto_0
    return v3

    .line 882
    :cond_1
    if-eqz p1, :cond_0

    .line 884
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 885
    check-cast v0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;

    .line 887
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 888
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 890
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 892
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 894
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 896
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 898
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 899
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 900
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getKernel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getKernel()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1e

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 902
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getKernel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getKernel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getKernel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getRamdisk()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getRamdisk()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_20

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 904
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getRamdisk()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getRamdisk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getRamdisk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getUserData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_22

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 906
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getUserData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_24

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 908
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getGroups()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_25

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_26

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 910
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getGroups()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_27

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_28

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 912
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_e
    move v3, v2

    .line 913
    goto/16 :goto_0

    :cond_f
    move v1, v3

    .line 887
    goto/16 :goto_1

    :cond_10
    move v4, v3

    goto/16 :goto_2

    :cond_11
    move v1, v3

    .line 889
    goto/16 :goto_3

    :cond_12
    move v4, v3

    goto/16 :goto_4

    :cond_13
    move v1, v3

    .line 891
    goto/16 :goto_5

    :cond_14
    move v4, v3

    goto/16 :goto_6

    :cond_15
    move v1, v3

    .line 893
    goto/16 :goto_7

    :cond_16
    move v4, v3

    goto/16 :goto_8

    :cond_17
    move v1, v3

    .line 895
    goto/16 :goto_9

    :cond_18
    move v4, v3

    goto/16 :goto_a

    :cond_19
    move v1, v3

    .line 897
    goto/16 :goto_b

    :cond_1a
    move v4, v3

    goto/16 :goto_c

    :cond_1b
    move v1, v3

    .line 899
    goto/16 :goto_d

    :cond_1c
    move v4, v3

    goto/16 :goto_e

    :cond_1d
    move v1, v3

    .line 901
    goto/16 :goto_f

    :cond_1e
    move v4, v3

    goto/16 :goto_10

    :cond_1f
    move v1, v3

    .line 903
    goto/16 :goto_11

    :cond_20
    move v4, v3

    goto/16 :goto_12

    :cond_21
    move v1, v3

    .line 905
    goto/16 :goto_13

    :cond_22
    move v4, v3

    goto/16 :goto_14

    :cond_23
    move v1, v3

    .line 907
    goto/16 :goto_15

    :cond_24
    move v4, v3

    goto/16 :goto_16

    :cond_25
    move v1, v3

    .line 909
    goto/16 :goto_17

    :cond_26
    move v4, v3

    goto/16 :goto_18

    :cond_27
    move v1, v3

    .line 911
    goto :goto_19

    :cond_28
    move v4, v3

    goto :goto_1a
.end method

.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->attribute:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockDeviceMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->blockDeviceMappings:Ljava/util/List;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->blockDeviceMappings:Ljava/util/List;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->blockDeviceMappings:Ljava/util/List;

    return-object v0
.end method

.method public getDisableApiTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->disableApiTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
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
    .line 724
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->groups:Ljava/util/List;

    if-nez v0, :cond_0

    .line 725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->groups:Ljava/util/List;

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceInitiatedShutdownBehavior()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->instanceType:Ljava/lang/String;

    return-object v0
.end method

.method public getKernel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->kernel:Ljava/lang/String;

    return-object v0
.end method

.method public getRamdisk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->ramdisk:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceDestCheck()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->sourceDestCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->userData:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 860
    const/16 v1, 0x1f

    .line 861
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 863
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 864
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 865
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 866
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 867
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 868
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 869
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 870
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getKernel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 871
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getRamdisk()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 872
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getUserData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 873
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 874
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getGroups()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 875
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_c

    :goto_c
    add-int v0, v2, v3

    .line 876
    return v0

    .line 863
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 864
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 865
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 866
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 867
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 868
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 869
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 870
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getKernel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 871
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getRamdisk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 872
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 873
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 874
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 875
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto/16 :goto_c
.end method

.method public isDisableApiTermination()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->disableApiTermination:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEbsOptimized()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->ebsOptimized:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSourceDestCheck()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->sourceDestCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAttribute(Lcom/amazonaws/services/ec2/model/InstanceAttributeName;)V
    .locals 1
    .param p1, "attribute"    # Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->attribute:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->attribute:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setBlockDeviceMappings(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;>;"
    if-nez p1, :cond_0

    .line 404
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->blockDeviceMappings:Ljava/util/List;

    .line 411
    :goto_0
    return-void

    .line 408
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 409
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 410
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public setDisableApiTermination(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "disableApiTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->disableApiTermination:Ljava/lang/Boolean;

    .line 520
    return-void
.end method

.method public setEbsOptimized(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->ebsOptimized:Ljava/lang/Boolean;

    .line 802
    return-void
.end method

.method public setGroups(Ljava/util/Collection;)V
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
    .line 736
    .local p1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 737
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->groups:Ljava/util/List;

    .line 744
    :goto_0
    return-void

    .line 741
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 742
    .local v0, "groupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 743
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->groups:Ljava/util/List;

    goto :goto_0
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->instanceId:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setInstanceInitiatedShutdownBehavior(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceInitiatedShutdownBehavior"    # Ljava/lang/String;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    .line 699
    return-void
.end method

.method public setInstanceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->instanceType:Ljava/lang/String;

    .line 563
    return-void
.end method

.method public setKernel(Ljava/lang/String;)V
    .locals 0
    .param p1, "kernel"    # Ljava/lang/String;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->kernel:Ljava/lang/String;

    .line 597
    return-void
.end method

.method public setRamdisk(Ljava/lang/String;)V
    .locals 0
    .param p1, "ramdisk"    # Ljava/lang/String;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->ramdisk:Ljava/lang/String;

    .line 631
    return-void
.end method

.method public setSourceDestCheck(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sourceDestCheck"    # Ljava/lang/Boolean;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->sourceDestCheck:Ljava/lang/Boolean;

    .line 477
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->userData:Ljava/lang/String;

    .line 665
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->value:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockDeviceMappings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SourceDestCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableApiTermination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getKernel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kernel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getKernel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getRamdisk()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ramdisk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getRamdisk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getUserData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceInitiatedShutdownBehavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Groups: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getGroups()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EbsOptimized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    :cond_c
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttribute(Lcom/amazonaws/services/ec2/model/InstanceAttributeName;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 1
    .param p1, "attribute"    # Lcom/amazonaws/services/ec2/model/InstanceAttributeName;

    .prologue
    .line 314
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/InstanceAttributeName;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->attribute:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public withAttribute(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->attribute:Ljava/lang/String;

    .line 260
    return-object p0
.end method

.method public withBlockDeviceMappings(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "blockDeviceMappings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;>;"
    if-nez p1, :cond_0

    .line 451
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->blockDeviceMappings:Ljava/util/List;

    .line 458
    :goto_0
    return-object p0

    .line 453
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 454
    .local v0, "blockDeviceMappingsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->blockDeviceMappings:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withBlockDeviceMappings([Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 6
    .param p1, "blockDeviceMappings"    # [Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->setBlockDeviceMappings(Ljava/util/Collection;)V

    .line 429
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 430
    .local v3, "value":Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;
    :cond_1
    return-object p0
.end method

.method public withDisableApiTermination(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 0
    .param p1, "disableApiTermination"    # Ljava/lang/Boolean;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->disableApiTermination:Ljava/lang/Boolean;

    .line 534
    return-object p0
.end method

.method public withEbsOptimized(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 0
    .param p1, "ebsOptimized"    # Ljava/lang/Boolean;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->ebsOptimized:Ljava/lang/Boolean;

    .line 816
    return-object p0
.end method

.method public withGroups(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;"
        }
    .end annotation

    .prologue
    .line 775
    .local p1, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 776
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->groups:Ljava/util/List;

    .line 783
    :goto_0
    return-object p0

    .line 778
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 779
    .local v0, "groupsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 780
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->groups:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withGroups([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 6
    .param p1, "groups"    # [Ljava/lang/String;

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getGroups()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->setGroups(Ljava/util/Collection;)V

    .line 758
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

    .line 759
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 761
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->instanceId:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public withInstanceInitiatedShutdownBehavior(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 0
    .param p1, "instanceInitiatedShutdownBehavior"    # Ljava/lang/String;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->instanceInitiatedShutdownBehavior:Ljava/lang/String;

    .line 713
    return-object p0
.end method

.method public withInstanceType(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 0
    .param p1, "instanceType"    # Ljava/lang/String;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->instanceType:Ljava/lang/String;

    .line 577
    return-object p0
.end method

.method public withKernel(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 0
    .param p1, "kernel"    # Ljava/lang/String;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->kernel:Ljava/lang/String;

    .line 611
    return-object p0
.end method

.method public withRamdisk(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 0
    .param p1, "ramdisk"    # Ljava/lang/String;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->ramdisk:Ljava/lang/String;

    .line 645
    return-object p0
.end method

.method public withSourceDestCheck(Ljava/lang/Boolean;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 0
    .param p1, "sourceDestCheck"    # Ljava/lang/Boolean;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->sourceDestCheck:Ljava/lang/Boolean;

    .line 491
    return-object p0
.end method

.method public withUserData(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->userData:Ljava/lang/String;

    .line 679
    return-object p0
.end method

.method public withValue(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->value:Ljava/lang/String;

    .line 372
    return-object p0
.end method
