.class public Lcom/amazonaws/services/ec2/model/transform/RunInstancesRequestMarshaller;
.super Ljava/lang/Object;
.source "RunInstancesRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)Lcom/amazonaws/Request;
    .locals 33
    .param p1, "runInstancesRequest"    # Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/RunInstancesRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v31, Lcom/amazonaws/AmazonClientException;

    const-string v32, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v31 .. v32}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 39
    :cond_0
    new-instance v24, Lcom/amazonaws/DefaultRequest;

    const-string v31, "AmazonEC2"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v24, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/RunInstancesRequest;>;"
    const-string v31, "Action"

    const-string v32, "RunInstances"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v31, "Version"

    const-string v32, "2013-02-01"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_1

    .line 44
    const-string v31, "ImageId"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getImageId()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v31

    if-eqz v31, :cond_2

    .line 47
    const-string v31, "MinCount"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMinCount()Ljava/lang/Integer;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v31

    if-eqz v31, :cond_3

    .line 50
    const-string v31, "MaxCount"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getMaxCount()Ljava/lang/Integer;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_4

    .line 53
    const-string v31, "KeyName"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKeyName()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroups()Ljava/util/List;

    move-result-object v28

    .line 57
    .local v28, "securityGroupsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v29, 0x1

    .line 59
    .local v29, "securityGroupsListIndex":I
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 60
    .local v30, "securityGroupsListValue":Ljava/lang/String;
    if-eqz v30, :cond_5

    .line 61
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "SecurityGroup."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v30}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_5
    add-int/lit8 v29, v29, 0x1

    goto :goto_0

    .line 67
    .end local v30    # "securityGroupsListValue":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSecurityGroupIds()Ljava/util/List;

    move-result-object v25

    .line 68
    .local v25, "securityGroupIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v26, 0x1

    .line 70
    .local v26, "securityGroupIdsListIndex":I
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 71
    .local v27, "securityGroupIdsListValue":Ljava/lang/String;
    if-eqz v27, :cond_7

    .line 72
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "SecurityGroupId."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v27 .. v27}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_7
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 77
    .end local v27    # "securityGroupIdsListValue":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_9

    .line 78
    const-string v31, "UserData"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getUserData()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_a

    .line 81
    const-string v31, "InstanceType"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v19

    .line 84
    .local v19, "placementPlacement":Lcom/amazonaws/services/ec2/model/Placement;
    if-eqz v19, :cond_d

    .line 85
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/Placement;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_b

    .line 86
    const-string v31, "Placement.AvailabilityZone"

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/Placement;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/Placement;->getGroupName()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_c

    .line 89
    const-string v31, "Placement.GroupName"

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/Placement;->getGroupName()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/Placement;->getTenancy()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_d

    .line 92
    const-string v31, "Placement.Tenancy"

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/Placement;->getTenancy()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_e

    .line 96
    const-string v31, "KernelId"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getKernelId()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_f

    .line 99
    const-string v31, "RamdiskId"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getRamdiskId()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v4

    .line 103
    .local v4, "blockDeviceMappingsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    const/4 v5, 0x1

    .line 105
    .local v5, "blockDeviceMappingsListIndex":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    .line 106
    .local v6, "blockDeviceMappingsListValue":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    move-object v3, v6

    .line 107
    .local v3, "blockDeviceMappingMember":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    if-eqz v3, :cond_17

    .line 108
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_10

    .line 109
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "BlockDeviceMapping."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".VirtualName"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_10
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_11

    .line 112
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "BlockDeviceMapping."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".DeviceName"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_11
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsBlockDevice;

    move-result-object v7

    .line 115
    .local v7, "ebsBlockDeviceEbs":Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    if-eqz v7, :cond_16

    .line 116
    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_12

    .line 117
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "BlockDeviceMapping."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".Ebs.SnapshotId"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_12
    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v31

    if-eqz v31, :cond_13

    .line 120
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "BlockDeviceMapping."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".Ebs.VolumeSize"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_13
    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v31

    if-eqz v31, :cond_14

    .line 123
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "BlockDeviceMapping."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".Ebs.DeleteOnTermination"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_14
    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_15

    .line 126
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "BlockDeviceMapping."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".Ebs.VolumeType"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_15
    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v31

    if-eqz v31, :cond_16

    .line 129
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "BlockDeviceMapping."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".Ebs.Iops"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_16
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_17

    .line 133
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "BlockDeviceMapping."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".NoDevice"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v7    # "ebsBlockDeviceEbs":Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    :cond_17
    add-int/lit8 v5, v5, 0x1

    .line 138
    goto/16 :goto_2

    .line 139
    .end local v3    # "blockDeviceMappingMember":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    .end local v6    # "blockDeviceMappingsListValue":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v31

    if-eqz v31, :cond_19

    .line 140
    const-string v31, "Monitoring.Enabled"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_1a

    .line 143
    const-string v31, "SubnetId"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getSubnetId()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v31

    if-eqz v31, :cond_1b

    .line 146
    const-string v31, "DisableApiTermination"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_1c

    .line 149
    const-string v31, "InstanceInitiatedShutdownBehavior"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getLicense()Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;

    move-result-object v14

    .line 152
    .local v14, "instanceLicenseSpecificationLicense":Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;
    if-eqz v14, :cond_1d

    .line 153
    invoke-virtual {v14}, Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;->getPool()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_1d

    .line 154
    const-string v31, "License.Pool"

    invoke-virtual {v14}, Lcom/amazonaws/services/ec2/model/InstanceLicenseSpecification;->getPool()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_1e

    .line 158
    const-string v31, "PrivateIpAddress"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_1f

    .line 161
    const-string v31, "ClientToken"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_20

    .line 164
    const-string v31, "AdditionalInfo"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v16

    .line 168
    .local v16, "networkInterfacesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;>;"
    const/16 v17, 0x1

    .line 170
    .local v17, "networkInterfacesListIndex":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;

    .line 171
    .local v18, "networkInterfacesListValue":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    move-object/from16 v15, v18

    .line 172
    .local v15, "instanceNetworkInterfaceSpecificationMember":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    if-eqz v15, :cond_2c

    .line 173
    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_21

    .line 174
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NetworkInterface."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".NetworkInterfaceId"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_21
    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v31

    if-eqz v31, :cond_22

    .line 177
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NetworkInterface."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".DeviceIndex"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_22
    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_23

    .line 180
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NetworkInterface."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".SubnetId"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_23
    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_24

    .line 183
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NetworkInterface."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".Description"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_24
    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_25

    .line 186
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NetworkInterface."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".PrivateIpAddress"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_25
    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v8

    .line 190
    .local v8, "groupsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 192
    .local v9, "groupsListIndex":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_27

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 193
    .local v10, "groupsListValue":Ljava/lang/String;
    if-eqz v10, :cond_26

    .line 194
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NetworkInterface."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".SecurityGroupId."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_26
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 199
    .end local v10    # "groupsListValue":Ljava/lang/String;
    :cond_27
    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v31

    if-eqz v31, :cond_28

    .line 200
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NetworkInterface."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".DeleteOnTermination"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_28
    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v21

    .line 204
    .local v21, "privateIpAddressesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;>;"
    const/16 v22, 0x1

    .line 206
    .local v22, "privateIpAddressesListIndex":I
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;

    .line 207
    .local v23, "privateIpAddressesListValue":Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    move-object/from16 v20, v23

    .line 208
    .local v20, "privateIpAddressSpecificationMember":Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    if-eqz v20, :cond_2a

    .line 209
    invoke-virtual/range {v20 .. v20}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_29

    .line 210
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NetworkInterface."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".PrivateIpAddresses."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".PrivateIpAddress"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v20 .. v20}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_29
    invoke-virtual/range {v20 .. v20}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v31

    if-eqz v31, :cond_2a

    .line 213
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NetworkInterface."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".PrivateIpAddresses."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".Primary"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v20 .. v20}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_2a
    add-int/lit8 v22, v22, 0x1

    .line 218
    goto/16 :goto_5

    .line 219
    .end local v20    # "privateIpAddressSpecificationMember":Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    .end local v23    # "privateIpAddressesListValue":Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    :cond_2b
    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v31

    if-eqz v31, :cond_2c

    .line 220
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NetworkInterface."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ".SecondaryPrivateIpAddressCount"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual {v15}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .end local v8    # "groupsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "groupsListIndex":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v21    # "privateIpAddressesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;>;"
    .end local v22    # "privateIpAddressesListIndex":I
    :cond_2c
    add-int/lit8 v17, v17, 0x1

    .line 225
    goto/16 :goto_3

    .line 226
    .end local v15    # "instanceNetworkInterfaceSpecificationMember":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .end local v18    # "networkInterfacesListValue":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v13

    .line 227
    .local v13, "iamInstanceProfileSpecificationIamInstanceProfile":Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;
    if-eqz v13, :cond_2f

    .line 228
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->getArn()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_2e

    .line 229
    const-string v31, "IamInstanceProfile.Arn"

    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->getArn()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_2e
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->getName()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_2f

    .line 232
    const-string v31, "IamInstanceProfile.Name"

    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->getName()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v31

    if-eqz v31, :cond_30

    .line 236
    const-string v31, "EbsOptimized"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_30
    return-object v24
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/RunInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RunInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
