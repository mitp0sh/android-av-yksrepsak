.class public Lcom/amazonaws/services/ec2/model/transform/ImportInstanceRequestMarshaller;
.super Ljava/lang/Object;
.source "ImportInstanceRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;)Lcom/amazonaws/Request;
    .locals 22
    .param p1, "importInstanceRequest"    # Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v20, Lcom/amazonaws/AmazonClientException;

    const-string v21, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v20 .. v21}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 39
    :cond_0
    new-instance v15, Lcom/amazonaws/DefaultRequest;

    const-string v20, "AmazonEC2"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v15, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;>;"
    const-string v20, "Action"

    const-string v21, "ImportInstance"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v20, "Version"

    const-string v21, "2013-02-01"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDescription()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 44
    const-string v20, "Description"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDescription()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;

    move-result-object v13

    .line 47
    .local v13, "importInstanceLaunchSpecificationLaunchSpecification":Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;
    if-eqz v13, :cond_18

    .line 48
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2

    .line 49
    const-string v20, "LaunchSpecification.Architecture"

    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getArchitecture()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_2
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v16

    .line 53
    .local v16, "securityGroupsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x1

    .line 55
    .local v17, "securityGroupsListIndex":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 56
    .local v18, "securityGroupsListValue":Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 57
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LaunchSpecification.SecurityGroup."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 62
    .end local v18    # "securityGroupsListValue":Ljava/lang/String;
    :cond_4
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 63
    const-string v20, "LaunchSpecification.AdditionalInfo"

    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_5
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 66
    const-string v20, "LaunchSpecification.UserData"

    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_6
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_7

    .line 69
    const-string v20, "LaunchSpecification.InstanceType"

    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_7
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/Placement;

    move-result-object v14

    .line 72
    .local v14, "placementPlacement":Lcom/amazonaws/services/ec2/model/Placement;
    if-eqz v14, :cond_a

    .line 73
    invoke-virtual {v14}, Lcom/amazonaws/services/ec2/model/Placement;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_8

    .line 74
    const-string v20, "LaunchSpecification.Placement.AvailabilityZone"

    invoke-virtual {v14}, Lcom/amazonaws/services/ec2/model/Placement;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_8
    invoke-virtual {v14}, Lcom/amazonaws/services/ec2/model/Placement;->getGroupName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 77
    const-string v20, "LaunchSpecification.Placement.GroupName"

    invoke-virtual {v14}, Lcom/amazonaws/services/ec2/model/Placement;->getGroupName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_9
    invoke-virtual {v14}, Lcom/amazonaws/services/ec2/model/Placement;->getTenancy()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_a

    .line 80
    const-string v20, "LaunchSpecification.Placement.Tenancy"

    invoke-virtual {v14}, Lcom/amazonaws/services/ec2/model/Placement;->getTenancy()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_a
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v3

    .line 85
    .local v3, "blockDeviceMappingsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    const/4 v4, 0x1

    .line 87
    .local v4, "blockDeviceMappingsListIndex":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    .line 88
    .local v5, "blockDeviceMappingsListValue":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    move-object v2, v5

    .line 89
    .local v2, "blockDeviceMappingMember":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    if-eqz v2, :cond_12

    .line 90
    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_b

    .line 91
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".VirtualName"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_b
    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_c

    .line 94
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".DeviceName"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_c
    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsBlockDevice;

    move-result-object v11

    .line 97
    .local v11, "ebsBlockDeviceEbs":Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    if-eqz v11, :cond_11

    .line 98
    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_d

    .line 99
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".Ebs.SnapshotId"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_d
    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v20

    if-eqz v20, :cond_e

    .line 102
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".Ebs.VolumeSize"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_e
    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v20

    if-eqz v20, :cond_f

    .line 105
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".Ebs.DeleteOnTermination"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_f
    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_10

    .line 108
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".Ebs.VolumeType"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_10
    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v20

    if-eqz v20, :cond_11

    .line 111
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".Ebs.Iops"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_11
    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_12

    .line 115
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".NoDevice"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v11    # "ebsBlockDeviceEbs":Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 120
    goto/16 :goto_1

    .line 121
    .end local v2    # "blockDeviceMappingMember":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    .end local v5    # "blockDeviceMappingsListValue":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    :cond_13
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v20

    if-eqz v20, :cond_14

    .line 122
    const-string v20, "LaunchSpecification.Monitoring"

    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isMonitoring()Ljava/lang/Boolean;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_14
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_15

    .line 125
    const-string v20, "LaunchSpecification.SubnetId"

    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_15
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v20

    if-eqz v20, :cond_16

    .line 128
    const-string v20, "LaunchSpecification.DisableApiTermination"

    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->isDisableApiTermination()Ljava/lang/Boolean;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_16
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_17

    .line 131
    const-string v20, "LaunchSpecification.InstanceInitiatedShutdownBehavior"

    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getInstanceInitiatedShutdownBehavior()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_17
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_18

    .line 134
    const-string v20, "LaunchSpecification.PrivateIpAddress"

    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/ImportInstanceLaunchSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v3    # "blockDeviceMappingsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    .end local v4    # "blockDeviceMappingsListIndex":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "placementPlacement":Lcom/amazonaws/services/ec2/model/Placement;
    .end local v16    # "securityGroupsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "securityGroupsListIndex":I
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getDiskImages()Ljava/util/List;

    move-result-object v8

    .line 139
    .local v8, "diskImagesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/DiskImage;>;"
    const/4 v9, 0x1

    .line 141
    .local v9, "diskImagesListIndex":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazonaws/services/ec2/model/DiskImage;

    .line 142
    .local v10, "diskImagesListValue":Lcom/amazonaws/services/ec2/model/DiskImage;
    move-object v7, v10

    .line 143
    .local v7, "diskImageMember":Lcom/amazonaws/services/ec2/model/DiskImage;
    if-eqz v7, :cond_1d

    .line 144
    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/DiskImage;->getImage()Lcom/amazonaws/services/ec2/model/DiskImageDetail;

    move-result-object v6

    .line 145
    .local v6, "diskImageDetailImage":Lcom/amazonaws/services/ec2/model/DiskImageDetail;
    if-eqz v6, :cond_1b

    .line 146
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getFormat()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_19

    .line 147
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DiskImage."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".Image.Format"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getFormat()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_19
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getBytes()Ljava/lang/Long;

    move-result-object v20

    if-eqz v20, :cond_1a

    .line 150
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DiskImage."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".Image.Bytes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getBytes()Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromLong(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1a
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getImportManifestUrl()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_1b

    .line 153
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DiskImage."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".Image.ImportManifestUrl"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/DiskImageDetail;->getImportManifestUrl()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1b
    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/DiskImage;->getDescription()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_1c

    .line 157
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DiskImage."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".Description"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/DiskImage;->getDescription()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1c
    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/DiskImage;->getVolume()Lcom/amazonaws/services/ec2/model/VolumeDetail;

    move-result-object v19

    .line 160
    .local v19, "volumeDetailVolume":Lcom/amazonaws/services/ec2/model/VolumeDetail;
    if-eqz v19, :cond_1d

    .line 161
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/VolumeDetail;->getSize()Ljava/lang/Long;

    move-result-object v20

    if-eqz v20, :cond_1d

    .line 162
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DiskImage."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".Volume.Size"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/VolumeDetail;->getSize()Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromLong(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v6    # "diskImageDetailImage":Lcom/amazonaws/services/ec2/model/DiskImageDetail;
    .end local v19    # "volumeDetailVolume":Lcom/amazonaws/services/ec2/model/VolumeDetail;
    :cond_1d
    add-int/lit8 v9, v9, 0x1

    .line 168
    goto/16 :goto_2

    .line 169
    .end local v7    # "diskImageMember":Lcom/amazonaws/services/ec2/model/DiskImage;
    .end local v10    # "diskImagesListValue":Lcom/amazonaws/services/ec2/model/DiskImage;
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getPlatform()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_1f

    .line 170
    const-string v20, "Platform"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;->getPlatform()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_1f
    return-object v15
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/ImportInstanceRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ImportInstanceRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
