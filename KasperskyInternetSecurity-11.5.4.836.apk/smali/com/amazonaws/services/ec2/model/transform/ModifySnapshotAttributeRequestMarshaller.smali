.class public Lcom/amazonaws/services/ec2/model/transform/ModifySnapshotAttributeRequestMarshaller;
.super Ljava/lang/Object;
.source "ModifySnapshotAttributeRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;)Lcom/amazonaws/Request;
    .locals 20
    .param p1, "modifySnapshotAttributeRequest"    # Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v18, Lcom/amazonaws/AmazonClientException;

    const-string v19, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v18 .. v19}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 39
    :cond_0
    new-instance v14, Lcom/amazonaws/DefaultRequest;

    const-string v18, "AmazonEC2"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v14, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;>;"
    const-string v18, "Action"

    const-string v19, "ModifySnapshotAttribute"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v18, "Version"

    const-string v19, "2013-02-01"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 44
    const-string v18, "SnapshotId"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getSnapshotId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 47
    const-string v18, "Attribute"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 50
    const-string v18, "OperationType"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v15

    .line 54
    .local v15, "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x1

    .line 56
    .local v16, "userIdsListIndex":I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 57
    .local v17, "userIdsListValue":Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 58
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UserId."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v17}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 64
    .end local v17    # "userIdsListValue":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getGroupNames()Ljava/util/List;

    move-result-object v7

    .line 65
    .local v7, "groupNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 67
    .local v8, "groupNamesListIndex":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 68
    .local v9, "groupNamesListValue":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 69
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UserGroup."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 74
    .end local v9    # "groupNamesListValue":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;->getCreateVolumePermission()Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;

    move-result-object v6

    .line 75
    .local v6, "createVolumePermissionModificationsCreateVolumePermission":Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;
    if-eqz v6, :cond_d

    .line 77
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getAdd()Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "addList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    const/4 v3, 0x1

    .line 80
    .local v3, "addListIndex":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/ec2/model/CreateVolumePermission;

    .line 81
    .local v4, "addListValue":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    move-object v5, v4

    .line 82
    .local v5, "createVolumePermissionMember":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    if-eqz v5, :cond_9

    .line 83
    invoke-virtual {v5}, Lcom/amazonaws/services/ec2/model/CreateVolumePermission;->getUserId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 84
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CreateVolumePermission.Add."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".UserId"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Lcom/amazonaws/services/ec2/model/CreateVolumePermission;->getUserId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_8
    invoke-virtual {v5}, Lcom/amazonaws/services/ec2/model/CreateVolumePermission;->getGroup()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 87
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CreateVolumePermission.Add."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".Group"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Lcom/amazonaws/services/ec2/model/CreateVolumePermission;->getGroup()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 92
    goto :goto_2

    .line 94
    .end local v4    # "addListValue":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    .end local v5    # "createVolumePermissionMember":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    :cond_a
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/CreateVolumePermissionModifications;->getRemove()Ljava/util/List;

    move-result-object v11

    .line 95
    .local v11, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    const/4 v12, 0x1

    .line 97
    .local v12, "removeListIndex":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/amazonaws/services/ec2/model/CreateVolumePermission;

    .line 98
    .local v13, "removeListValue":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    move-object v5, v13

    .line 99
    .restart local v5    # "createVolumePermissionMember":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    if-eqz v5, :cond_c

    .line 100
    invoke-virtual {v5}, Lcom/amazonaws/services/ec2/model/CreateVolumePermission;->getUserId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_b

    .line 101
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CreateVolumePermission.Remove."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".UserId"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Lcom/amazonaws/services/ec2/model/CreateVolumePermission;->getUserId()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_b
    invoke-virtual {v5}, Lcom/amazonaws/services/ec2/model/CreateVolumePermission;->getGroup()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_c

    .line 104
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CreateVolumePermission.Remove."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".Group"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Lcom/amazonaws/services/ec2/model/CreateVolumePermission;->getGroup()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 109
    goto :goto_3

    .line 113
    .end local v2    # "addList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    .end local v3    # "addListIndex":I
    .end local v5    # "createVolumePermissionMember":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    .end local v11    # "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/CreateVolumePermission;>;"
    .end local v12    # "removeListIndex":I
    .end local v13    # "removeListValue":Lcom/amazonaws/services/ec2/model/CreateVolumePermission;
    :cond_d
    return-object v14
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/ModifySnapshotAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ModifySnapshotAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
