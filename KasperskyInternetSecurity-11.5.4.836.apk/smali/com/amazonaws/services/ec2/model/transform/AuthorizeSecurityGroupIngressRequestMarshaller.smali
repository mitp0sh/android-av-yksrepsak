.class public Lcom/amazonaws/services/ec2/model/transform/AuthorizeSecurityGroupIngressRequestMarshaller;
.super Ljava/lang/Object;
.source "AuthorizeSecurityGroupIngressRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)Lcom/amazonaws/Request;
    .locals 17
    .param p1, "authorizeSecurityGroupIngressRequest"    # Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v15, Lcom/amazonaws/AmazonClientException;

    const-string v16, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v15 .. v16}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 39
    :cond_0
    new-instance v10, Lcom/amazonaws/DefaultRequest;

    const-string v15, "AmazonEC2"

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v15}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v10, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;>;"
    const-string v15, "Action"

    const-string v16, "AuthorizeSecurityGroupIngress"

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v15, "Version"

    const-string v16, "2013-02-01"

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 44
    const-string v15, "GroupName"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 47
    const-string v15, "GroupId"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getGroupId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 50
    const-string v15, "SourceSecurityGroupName"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 53
    const-string v15, "SourceSecurityGroupOwnerId"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getSourceSecurityGroupOwnerId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 56
    const-string v15, "IpProtocol"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpProtocol()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 59
    const-string v15, "FromPort"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getFromPort()Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 62
    const-string v15, "ToPort"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getToPort()Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 65
    const-string v15, "CidrIp"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getCidrIp()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;->getIpPermissions()Ljava/util/List;

    move-result-object v4

    .line 69
    .local v4, "ipPermissionsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/IpPermission;>;"
    const/4 v5, 0x1

    .line 71
    .local v5, "ipPermissionsListIndex":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazonaws/services/ec2/model/IpPermission;

    .line 72
    .local v6, "ipPermissionsListValue":Lcom/amazonaws/services/ec2/model/IpPermission;
    move-object v3, v6

    .line 73
    .local v3, "ipPermissionMember":Lcom/amazonaws/services/ec2/model/IpPermission;
    if-eqz v3, :cond_11

    .line 74
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpProtocol()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 75
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IpPermissions."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".IpProtocol"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpProtocol()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_9
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/IpPermission;->getFromPort()Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 78
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IpPermissions."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".FromPort"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/IpPermission;->getFromPort()Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_a
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/IpPermission;->getToPort()Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 81
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IpPermissions."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".ToPort"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/IpPermission;->getToPort()Ljava/lang/Integer;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_b
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/IpPermission;->getUserIdGroupPairs()Ljava/util/List;

    move-result-object v12

    .line 85
    .local v12, "userIdGroupPairsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/UserIdGroupPair;>;"
    const/4 v13, 0x1

    .line 87
    .local v13, "userIdGroupPairsListIndex":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/amazonaws/services/ec2/model/UserIdGroupPair;

    .line 88
    .local v14, "userIdGroupPairsListValue":Lcom/amazonaws/services/ec2/model/UserIdGroupPair;
    move-object v11, v14

    .line 89
    .local v11, "userIdGroupPairMember":Lcom/amazonaws/services/ec2/model/UserIdGroupPair;
    if-eqz v11, :cond_e

    .line 90
    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/UserIdGroupPair;->getUserId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 91
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IpPermissions."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".Groups."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".UserId"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/UserIdGroupPair;->getUserId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_c
    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/UserIdGroupPair;->getGroupName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_d

    .line 94
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IpPermissions."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".Groups."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".GroupName"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/UserIdGroupPair;->getGroupName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_d
    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/UserIdGroupPair;->getGroupId()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_e

    .line 97
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IpPermissions."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".Groups."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".GroupId"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Lcom/amazonaws/services/ec2/model/UserIdGroupPair;->getGroupId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_e
    add-int/lit8 v13, v13, 0x1

    .line 102
    goto/16 :goto_1

    .line 104
    .end local v11    # "userIdGroupPairMember":Lcom/amazonaws/services/ec2/model/UserIdGroupPair;
    .end local v14    # "userIdGroupPairsListValue":Lcom/amazonaws/services/ec2/model/UserIdGroupPair;
    :cond_f
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/IpPermission;->getIpRanges()Ljava/util/List;

    move-result-object v7

    .line 105
    .local v7, "ipRangesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 107
    .local v8, "ipRangesListIndex":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 108
    .local v9, "ipRangesListValue":Ljava/lang/String;
    if-eqz v9, :cond_10

    .line 109
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IpPermissions."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".IpRanges."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".CidrIp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 116
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "ipRangesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "ipRangesListIndex":I
    .end local v9    # "ipRangesListValue":Ljava/lang/String;
    .end local v12    # "userIdGroupPairsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/UserIdGroupPair;>;"
    .end local v13    # "userIdGroupPairsListIndex":I
    :cond_11
    add-int/lit8 v5, v5, 0x1

    .line 117
    goto/16 :goto_0

    .line 120
    .end local v3    # "ipPermissionMember":Lcom/amazonaws/services/ec2/model/IpPermission;
    .end local v6    # "ipPermissionsListValue":Lcom/amazonaws/services/ec2/model/IpPermission;
    :cond_12
    return-object v10
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/AuthorizeSecurityGroupIngressRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/AuthorizeSecurityGroupIngressRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
