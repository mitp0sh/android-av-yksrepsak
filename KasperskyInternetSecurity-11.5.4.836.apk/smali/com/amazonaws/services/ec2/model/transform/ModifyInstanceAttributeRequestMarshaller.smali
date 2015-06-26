.class public Lcom/amazonaws/services/ec2/model/transform/ModifyInstanceAttributeRequestMarshaller;
.super Ljava/lang/Object;
.source "ModifyInstanceAttributeRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller",
        "<",
        "Lcom/amazonaws/Request",
        "<",
        "Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;)Lcom/amazonaws/Request;
    .locals 12
    .param p1, "modifyInstanceAttributeRequest"    # Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v10, Lcom/amazonaws/AmazonClientException;

    const-string v11, "Invalid argument passed to marshall(...)"

    invoke-direct {v10, v11}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 39
    :cond_0
    new-instance v9, Lcom/amazonaws/DefaultRequest;

    const-string v10, "AmazonEC2"

    invoke-direct {v9, p1, v10}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v9, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;>;"
    const-string v10, "Action"

    const-string v11, "ModifyInstanceAttribute"

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v10, "Version"

    const-string v11, "2013-02-01"

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 44
    const-string v10, "InstanceId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 47
    const-string v10, "Attribute"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 50
    const-string v10, "Value"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, "blockDeviceMappingsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;>;"
    const/4 v1, 0x1

    .line 56
    .local v1, "blockDeviceMappingsListIndex":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;

    .line 57
    .local v2, "blockDeviceMappingsListValue":Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;
    move-object v8, v2

    .line 58
    .local v8, "instanceBlockDeviceMappingSpecificationMember":Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;
    if-eqz v8, :cond_8

    .line 59
    invoke-virtual {v8}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getDeviceName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 60
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BlockDeviceMapping."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".DeviceName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getDeviceName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_4
    invoke-virtual {v8}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getEbs()Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;

    move-result-object v3

    .line 63
    .local v3, "ebsInstanceBlockDeviceSpecificationEbs":Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;
    if-eqz v3, :cond_6

    .line 64
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->getVolumeId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 65
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BlockDeviceMapping."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".Ebs.VolumeId"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->getVolumeId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_5
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 68
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BlockDeviceMapping."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".Ebs.DeleteOnTermination"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_6
    invoke-virtual {v8}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getVirtualName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 72
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BlockDeviceMapping."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".VirtualName"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getVirtualName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_7
    invoke-virtual {v8}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getNoDevice()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 75
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BlockDeviceMapping."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".NoDevice"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;->getNoDevice()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v3    # "ebsInstanceBlockDeviceSpecificationEbs":Lcom/amazonaws/services/ec2/model/EbsInstanceBlockDeviceSpecification;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 80
    goto/16 :goto_0

    .line 81
    .end local v2    # "blockDeviceMappingsListValue":Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;
    .end local v8    # "instanceBlockDeviceMappingSpecificationMember":Lcom/amazonaws/services/ec2/model/InstanceBlockDeviceMappingSpecification;
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 82
    const-string v10, "SourceDestCheck.Value"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isSourceDestCheck()Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 85
    const-string v10, "DisableApiTermination.Value"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_b
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 88
    const-string v10, "InstanceType.Value"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_c
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getKernel()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 91
    const-string v10, "Kernel.Value"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getKernel()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getRamdisk()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 94
    const-string v10, "Ramdisk.Value"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getRamdisk()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getUserData()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 97
    const-string v10, "UserData.Value"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getUserData()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_f
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 100
    const-string v10, "InstanceInitiatedShutdownBehavior.Value"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_10
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->getGroups()Ljava/util/List;

    move-result-object v4

    .line 104
    .local v4, "groupsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 106
    .local v5, "groupsListIndex":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 107
    .local v6, "groupsListValue":Ljava/lang/String;
    if-eqz v6, :cond_11

    .line 108
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GroupId."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 113
    .end local v6    # "groupsListValue":Ljava/lang/String;
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 114
    const-string v10, "EbsOptimized.Value"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_13
    return-object v9
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/ModifyInstanceAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ModifyInstanceAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
