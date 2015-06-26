.class public Lcom/amazonaws/services/ec2/model/transform/EC2RequestHandler;
.super Lcom/amazonaws/handlers/AbstractRequestHandler;
.source "EC2RequestHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amazonaws/handlers/AbstractRequestHandler;-><init>()V

    return-void
.end method

.method private populateLaunchSpecificationSecurityGroupNames(Lcom/amazonaws/services/ec2/model/LaunchSpecification;)V
    .locals 4
    .param p1, "launchSpecification"    # Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    .prologue
    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v1, "groupNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    .line 122
    .local v0, "group":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v0    # "group":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    :cond_0
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->setSecurityGroups(Ljava/util/Collection;)V

    .line 125
    return-void
.end method

.method private populateReservationSecurityGroupNames(Lcom/amazonaws/services/ec2/model/Reservation;)V
    .locals 4
    .param p1, "reservation"    # Lcom/amazonaws/services/ec2/model/Reservation;

    .prologue
    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "groupNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/Reservation;->getGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    .line 114
    .local v0, "group":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .end local v0    # "group":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    :cond_0
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/ec2/model/Reservation;->setGroupNames(Ljava/util/Collection;)V

    .line 117
    return-void
.end method


# virtual methods
.method public afterResponse(Lcom/amazonaws/Request;Ljava/lang/Object;Lcom/amazonaws/util/TimingInfo;)V
    .locals 6
    .param p2, "response"    # Ljava/lang/Object;
    .param p3, "timingInfo"    # Lcom/amazonaws/util/TimingInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/Object;",
            "Lcom/amazonaws/util/TimingInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    instance-of v5, p2, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;

    if-eqz v5, :cond_0

    move-object v3, p2

    .line 89
    check-cast v3, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;

    .line 90
    .local v3, "result":Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;->getSpotInstanceRequests()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;

    .line 91
    .local v4, "spotInstanceRequest":Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v1

    .line 92
    .local v1, "launchSpecification":Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    invoke-direct {p0, v1}, Lcom/amazonaws/services/ec2/model/transform/EC2RequestHandler;->populateLaunchSpecificationSecurityGroupNames(Lcom/amazonaws/services/ec2/model/LaunchSpecification;)V

    goto :goto_0

    .line 94
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "launchSpecification":Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .end local v3    # "result":Lcom/amazonaws/services/ec2/model/DescribeSpotInstanceRequestsResult;
    .end local v4    # "spotInstanceRequest":Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    :cond_0
    instance-of v5, p2, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;

    if-eqz v5, :cond_1

    move-object v3, p2

    .line 95
    check-cast v3, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;

    .line 96
    .local v3, "result":Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;->getSpotInstanceRequests()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;

    .line 97
    .restart local v4    # "spotInstanceRequest":Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v1

    .line 98
    .restart local v1    # "launchSpecification":Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    invoke-direct {p0, v1}, Lcom/amazonaws/services/ec2/model/transform/EC2RequestHandler;->populateLaunchSpecificationSecurityGroupNames(Lcom/amazonaws/services/ec2/model/LaunchSpecification;)V

    goto :goto_1

    .line 100
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "launchSpecification":Lcom/amazonaws/services/ec2/model/LaunchSpecification;
    .end local v3    # "result":Lcom/amazonaws/services/ec2/model/RequestSpotInstancesResult;
    .end local v4    # "spotInstanceRequest":Lcom/amazonaws/services/ec2/model/SpotInstanceRequest;
    :cond_1
    instance-of v5, p2, Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;

    if-eqz v5, :cond_2

    move-object v3, p2

    .line 101
    check-cast v3, Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;

    .line 102
    .local v3, "result":Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;->getReservations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/ec2/model/Reservation;

    .line 103
    .local v2, "reservation":Lcom/amazonaws/services/ec2/model/Reservation;
    invoke-direct {p0, v2}, Lcom/amazonaws/services/ec2/model/transform/EC2RequestHandler;->populateReservationSecurityGroupNames(Lcom/amazonaws/services/ec2/model/Reservation;)V

    goto :goto_2

    .line 105
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "reservation":Lcom/amazonaws/services/ec2/model/Reservation;
    .end local v3    # "result":Lcom/amazonaws/services/ec2/model/DescribeInstancesResult;
    :cond_2
    instance-of v5, p2, Lcom/amazonaws/services/ec2/model/RunInstancesResult;

    if-eqz v5, :cond_3

    move-object v3, p2

    .line 106
    check-cast v3, Lcom/amazonaws/services/ec2/model/RunInstancesResult;

    .line 107
    .local v3, "result":Lcom/amazonaws/services/ec2/model/RunInstancesResult;
    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/RunInstancesResult;->getReservation()Lcom/amazonaws/services/ec2/model/Reservation;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amazonaws/services/ec2/model/transform/EC2RequestHandler;->populateReservationSecurityGroupNames(Lcom/amazonaws/services/ec2/model/Reservation;)V

    .line 109
    .end local v3    # "result":Lcom/amazonaws/services/ec2/model/RunInstancesResult;
    :cond_3
    return-void
.end method

.method public beforeRequest(Lcom/amazonaws/Request;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v9

    .line 43
    .local v9, "originalRequest":Lcom/amazonaws/AmazonWebServiceRequest;
    instance-of v14, v9, Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;

    if-eqz v14, :cond_1

    move-object v6, v9

    .line 44
    check-cast v6, Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;

    .line 45
    .local v6, "importKeyPairRequest":Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;->getPublicKeyMaterial()Ljava/lang/String;

    move-result-object v11

    .line 46
    .local v11, "publicKeyMaterial":Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-static {v14}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/lang/String;-><init>([B)V

    .line 47
    .local v3, "encodedKeyMaterial":Ljava/lang/String;
    const-string v14, "PublicKeyMaterial"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v3    # "encodedKeyMaterial":Ljava/lang/String;
    .end local v6    # "importKeyPairRequest":Lcom/amazonaws/services/ec2/model/ImportKeyPairRequest;
    .end local v11    # "publicKeyMaterial":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    instance-of v14, v9, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;

    if-eqz v14, :cond_6

    move-object v12, v9

    .line 53
    check-cast v12, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;

    .line 54
    .local v12, "requestSpotInstancesRequest":Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    const/4 v1, 0x1

    .line 55
    .local v1, "count":I
    invoke-virtual {v12}, Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;->getLaunchSpecification()Lcom/amazonaws/services/ec2/model/LaunchSpecification;

    move-result-object v14

    invoke-virtual {v14}, Lcom/amazonaws/services/ec2/model/LaunchSpecification;->getAllSecurityGroups()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/ec2/model/GroupIdentifier;

    .line 56
    .local v4, "group":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 57
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "LaunchSpecification.SecurityGroupId."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/GroupIdentifier;->getGroupId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_1

    .line 62
    .end local v4    # "group":Lcom/amazonaws/services/ec2/model/GroupIdentifier;
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v8, "keysToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 64
    .local v10, "parameter":Ljava/lang/String;
    const-string v14, "LaunchSpecification.GroupSet."

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 66
    .end local v10    # "parameter":Ljava/lang/String;
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 67
    .local v7, "key":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 73
    .end local v1    # "count":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keysToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "requestSpotInstancesRequest":Lcom/amazonaws/services/ec2/model/RequestSpotInstancesRequest;
    :cond_6
    instance-of v14, v9, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;

    if-eqz v14, :cond_0

    move-object v13, v9

    .line 74
    check-cast v13, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;

    .line 75
    .local v13, "runInstancesRequest":Lcom/amazonaws/services/ec2/model/RunInstancesRequest;
    invoke-virtual {v13}, Lcom/amazonaws/services/ec2/model/RunInstancesRequest;->getClientToken()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_0

    .line 76
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v14

    const-string v15, "ClientToken"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
