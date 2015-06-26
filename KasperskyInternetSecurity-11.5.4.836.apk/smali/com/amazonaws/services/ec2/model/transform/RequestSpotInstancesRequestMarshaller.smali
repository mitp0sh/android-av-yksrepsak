.class public Lcom/amazonaws/services/ec2/model/transform/RequestSpotInstancesRequestMarshaller;
.super Ljava/lang/Object;
.source "RequestSpotInstancesRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;)Lcom/amazonaws/Request;
    .locals 34
    .param p1, "requestSpotInstancesRequest"    # Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v32, Lcom/amazonaws/AmazonClientException;

    const-string v33, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v32 .. v33}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 39
    :cond_0
    new-instance v27, Lcom/amazonaws/DefaultRequest;

    const-string v32, "AmazonEC2"

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v27, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;>;"
    const-string v32, "Action"

    const-string v33, "RequestSpotInstances"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v32, "Version"

    const-string v33, "2013-02-01"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_1

    .line 44
    const-string v32, "SpotPrice"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getSpotPrice()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v32

    if-eqz v32, :cond_2

    .line 47
    const-string v32, "InstanceCount"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getInstanceCount()Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_3

    .line 50
    const-string v32, "Type"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getType()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v32

    if-eqz v32, :cond_4

    .line 53
    const-string v32, "ValidFrom"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidFrom()Ljava/util/Date;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v32

    if-eqz v32, :cond_5

    .line 56
    const-string v32, "ValidUntil"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getValidUntil()Ljava/util/Date;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_6

    .line 59
    const-string v32, "LaunchGroup"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchGroup()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_7

    .line 62
    const-string v32, "AvailabilityZoneGroup"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getAvailabilityZoneGroup()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v19

    .line 65
    .local v19, "launchSpecificationLaunchSpecification":Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    if-eqz v19, :cond_30

    .line 66
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getImageId()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_8

    .line 67
    const-string v32, "LaunchSpecification.ImageId"

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getImageId()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_8
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKeyName()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_9

    .line 70
    const-string v32, "LaunchSpecification.KeyName"

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKeyName()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v3

    .line 74
    .local v3, "allSecurityGroupsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    const/4 v4, 0x1

    .line 76
    .local v4, "allSecurityGroupsListIndex":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    .line 77
    .local v5, "allSecurityGroupsListValue":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    move-object v11, v5

    .line 78
    .local v11, "groupIdentifierMember":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    if-eqz v11, :cond_b

    .line 79
    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_a

    .line 80
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.GroupSet."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".GroupName"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_a
    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_b

    .line 83
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.GroupSet."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".GroupId"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 88
    goto :goto_0

    .line 90
    .end local v5    # "allSecurityGroupsListValue":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    .end local v11    # "groupIdentifierMember":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSecurityGroups()Ljava/util/List;

    move-result-object v28

    .line 91
    .local v28, "securityGroupsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v29, 0x1

    .line 93
    .local v29, "securityGroupsListIndex":I
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 94
    .local v30, "securityGroupsListValue":Ljava/lang/String;
    if-eqz v30, :cond_d

    .line 95
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.SecurityGroup."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v30 .. v30}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_d
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 100
    .end local v30    # "securityGroupsListValue":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_f

    .line 101
    const-string v32, "LaunchSpecification.UserData"

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getUserData()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_f
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAddressingType()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_10

    .line 104
    const-string v32, "LaunchSpecification.AddressingType"

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAddressingType()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_10
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_11

    .line 107
    const-string v32, "LaunchSpecification.InstanceType"

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getInstanceType()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_11
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getPlacement()Lcom/amazonaws/services/ec2/model/SpotPlacement;

    move-result-object v31

    .line 110
    .local v31, "spotPlacementPlacement":Lcom/amazonaws/services/ec2/model/SpotPlacement;
    if-eqz v31, :cond_13

    .line 111
    invoke-virtual/range {v31 .. v31}, Lcom/amazonaws/services/ec2/model/SpotPlacement;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_12

    .line 112
    const-string v32, "LaunchSpecification.Placement.AvailabilityZone"

    invoke-virtual/range {v31 .. v31}, Lcom/amazonaws/services/ec2/model/SpotPlacement;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_12
    invoke-virtual/range {v31 .. v31}, Lcom/amazonaws/services/ec2/model/SpotPlacement;->getGroupName()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_13

    .line 115
    const-string v32, "LaunchSpecification.Placement.GroupName"

    invoke-virtual/range {v31 .. v31}, Lcom/amazonaws/services/ec2/model/SpotPlacement;->getGroupName()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_13
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKernelId()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_14

    .line 119
    const-string v32, "LaunchSpecification.KernelId"

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getKernelId()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_14
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getRamdiskId()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_15

    .line 122
    const-string v32, "LaunchSpecification.RamdiskId"

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getRamdiskId()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_15
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getBlockDeviceMappings()Ljava/util/List;

    move-result-object v7

    .line 126
    .local v7, "blockDeviceMappingsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    const/4 v8, 0x1

    .line 128
    .local v8, "blockDeviceMappingsListIndex":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;

    .line 129
    .local v9, "blockDeviceMappingsListValue":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    move-object v6, v9

    .line 130
    .local v6, "blockDeviceMappingMember":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    if-eqz v6, :cond_1d

    .line 131
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_16

    .line 132
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".VirtualName"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getVirtualName()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_16
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_17

    .line 135
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".DeviceName"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getDeviceName()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_17
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getEbs()Lcom/amazonaws/services/ec2/model/EbsBlockDevice;

    move-result-object v10

    .line 138
    .local v10, "ebsBlockDeviceEbs":Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    if-eqz v10, :cond_1c

    .line 139
    invoke-virtual {v10}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_18

    .line 140
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".Ebs.SnapshotId"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v10}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getSnapshotId()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_18
    invoke-virtual {v10}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v32

    if-eqz v32, :cond_19

    .line 143
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".Ebs.VolumeSize"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v10}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeSize()Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_19
    invoke-virtual {v10}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v32

    if-eqz v32, :cond_1a

    .line 146
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".Ebs.DeleteOnTermination"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v10}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1a
    invoke-virtual {v10}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_1b

    .line 149
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".Ebs.VolumeType"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v10}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getVolumeType()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1b
    invoke-virtual {v10}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v32

    if-eqz v32, :cond_1c

    .line 152
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".Ebs.Iops"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v10}, Lcom/amazonaws/services/ec2/model/EbsBlockDevice;->getIops()Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_1c
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_1d

    .line 156
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.BlockDeviceMapping."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".NoDevice"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;->getNoDevice()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v10    # "ebsBlockDeviceEbs":Lcom/amazonaws/services/ec2/model/EbsBlockDevice;
    :cond_1d
    add-int/lit8 v8, v8, 0x1

    .line 161
    goto/16 :goto_2

    .line 162
    .end local v6    # "blockDeviceMappingMember":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    .end local v9    # "blockDeviceMappingsListValue":Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;
    :cond_1e
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isMonitoringEnabled()Ljava/lang/Boolean;

    move-result-object v32

    if-eqz v32, :cond_1f

    .line 163
    const-string v32, "LaunchSpecification.Monitoring.Enabled"

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isMonitoringEnabled()Ljava/lang/Boolean;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1f
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_20

    .line 166
    const-string v32, "LaunchSpecification.SubnetId"

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_20
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getNetworkInterfaces()Ljava/util/List;

    move-result-object v20

    .line 170
    .local v20, "networkInterfacesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;>;"
    const/16 v21, 0x1

    .line 172
    .local v21, "networkInterfacesListIndex":I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v15    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;

    .line 173
    .local v22, "networkInterfacesListValue":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    move-object/from16 v18, v22

    .line 174
    .local v18, "instanceNetworkInterfaceSpecificationMember":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    if-eqz v18, :cond_2c

    .line 175
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_21

    .line 176
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.NetworkInterfaceSet."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".NetworkInterfaceId"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getNetworkInterfaceId()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_21
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v32

    if-eqz v32, :cond_22

    .line 179
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.NetworkInterfaceSet."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".DeviceIndex"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDeviceIndex()Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_22
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_23

    .line 182
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.NetworkInterfaceSet."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".SubnetId"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSubnetId()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_23
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_24

    .line 185
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.NetworkInterfaceSet."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".Description"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getDescription()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_24
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_25

    .line 188
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.NetworkInterfaceSet."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".PrivateIpAddress"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_25
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getGroups()Ljava/util/List;

    move-result-object v12

    .line 192
    .local v12, "groupsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 194
    .local v13, "groupsListIndex":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_27

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 195
    .local v14, "groupsListValue":Ljava/lang/String;
    if-eqz v14, :cond_26

    .line 196
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.NetworkInterfaceSet."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".SecurityGroupId."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static {v14}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_26
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 201
    .end local v14    # "groupsListValue":Ljava/lang/String;
    :cond_27
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v32

    if-eqz v32, :cond_28

    .line 202
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.NetworkInterfaceSet."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".DeleteOnTermination"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->isDeleteOnTermination()Ljava/lang/Boolean;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_28
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getPrivateIpAddresses()Ljava/util/List;

    move-result-object v24

    .line 206
    .local v24, "privateIpAddressesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;>;"
    const/16 v25, 0x1

    .line 208
    .local v25, "privateIpAddressesListIndex":I
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;

    .line 209
    .local v26, "privateIpAddressesListValue":Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    move-object/from16 v23, v26

    .line 210
    .local v23, "privateIpAddressSpecificationMember":Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    if-eqz v23, :cond_2a

    .line 211
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_29

    .line 212
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.NetworkInterfaceSet."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".PrivateIpAddresses."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".PrivateIpAddress"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->getPrivateIpAddress()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_29
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v32

    if-eqz v32, :cond_2a

    .line 215
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.NetworkInterfaceSet."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".PrivateIpAddresses."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".Primary"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;->isPrimary()Ljava/lang/Boolean;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_2a
    add-int/lit8 v25, v25, 0x1

    .line 220
    goto/16 :goto_5

    .line 221
    .end local v23    # "privateIpAddressSpecificationMember":Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    .end local v26    # "privateIpAddressesListValue":Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;
    :cond_2b
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v32

    if-eqz v32, :cond_2c

    .line 222
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "LaunchSpecification.NetworkInterfaceSet."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".SecondaryPrivateIpAddressCount"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;->getSecondaryPrivateIpAddressCount()Ljava/lang/Integer;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v12    # "groupsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "groupsListIndex":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v24    # "privateIpAddressesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/PrivateIpAddressSpecification;>;"
    .end local v25    # "privateIpAddressesListIndex":I
    :cond_2c
    add-int/lit8 v21, v21, 0x1

    .line 227
    goto/16 :goto_3

    .line 228
    .end local v18    # "instanceNetworkInterfaceSpecificationMember":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    .end local v22    # "networkInterfacesListValue":Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;
    :cond_2d
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getIamInstanceProfile()Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;

    move-result-object v17

    .line 229
    .local v17, "iamInstanceProfileSpecificationIamInstanceProfile":Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;
    if-eqz v17, :cond_2f

    .line 230
    invoke-virtual/range {v17 .. v17}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->getArn()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_2e

    .line 231
    const-string v32, "LaunchSpecification.IamInstanceProfile.Arn"

    invoke-virtual/range {v17 .. v17}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->getArn()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_2e
    invoke-virtual/range {v17 .. v17}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->getName()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_2f

    .line 234
    const-string v32, "LaunchSpecification.IamInstanceProfile.Name"

    invoke-virtual/range {v17 .. v17}, Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_2f
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v32

    if-eqz v32, :cond_30

    .line 238
    const-string v32, "LaunchSpecification.EbsOptimized"

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->isEbsOptimized()Ljava/lang/Boolean;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v3    # "allSecurityGroupsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/GroupIdentifier;>;"
    .end local v4    # "allSecurityGroupsListIndex":I
    .end local v7    # "blockDeviceMappingsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/BlockDeviceMapping;>;"
    .end local v8    # "blockDeviceMappingsListIndex":I
    .end local v17    # "iamInstanceProfileSpecificationIamInstanceProfile":Lcom/amazonaws/services/ec2/model/IamInstanceProfileSpecification;
    .end local v20    # "networkInterfacesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/InstanceNetworkInterfaceSpecification;>;"
    .end local v21    # "networkInterfacesListIndex":I
    .end local v28    # "securityGroupsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "securityGroupsListIndex":I
    .end local v31    # "spotPlacementPlacement":Lcom/amazonaws/services/ec2/model/SpotPlacement;
    :cond_30
    return-object v27
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/RequestSpotInstancesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
