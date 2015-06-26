.class public Lcom/amazonaws/services/ec2/model/transform/ModifyImageAttributeRequestMarshaller;
.super Ljava/lang/Object;
.source "ModifyImageAttributeRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;)Lcom/amazonaws/Request;
    .locals 23
    .param p1, "modifyImageAttributeRequest"    # Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v21, Lcom/amazonaws/AmazonClientException;

    const-string v22, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v21 .. v22}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 39
    :cond_0
    new-instance v14, Lcom/amazonaws/DefaultRequest;

    const-string v21, "AmazonEC2"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v14, v0, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v14, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;>;"
    const-string v21, "Action"

    const-string v22, "ModifyImageAttribute"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v21, "Version"

    const-string v22, "2013-02-01"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_1

    .line 44
    const-string v21, "ImageId"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getImageId()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_2

    .line 47
    const-string v21, "Attribute"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getAttribute()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 50
    const-string v21, "OperationType"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getOperationType()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserIds()Ljava/util/List;

    move-result-object v18

    .line 54
    .local v18, "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v19, 0x1

    .line 56
    .local v19, "userIdsListIndex":I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 57
    .local v20, "userIdsListValue":Ljava/lang/String;
    if-eqz v20, :cond_4

    .line 58
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "UserId."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 64
    .end local v20    # "userIdsListValue":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getUserGroups()Ljava/util/List;

    move-result-object v15

    .line 65
    .local v15, "userGroupsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x1

    .line 67
    .local v16, "userGroupsListIndex":I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 68
    .local v17, "userGroupsListValue":Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 69
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "UserGroup."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v17 .. v17}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 75
    .end local v17    # "userGroupsListValue":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getProductCodes()Ljava/util/List;

    move-result-object v8

    .line 76
    .local v8, "productCodesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 78
    .local v9, "productCodesListIndex":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 79
    .local v10, "productCodesListValue":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 80
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ProductCode."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 85
    .end local v10    # "productCodesListValue":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_a

    .line 86
    const-string v21, "Value"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getValue()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getLaunchPermission()Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;

    move-result-object v7

    .line 89
    .local v7, "launchPermissionModificationsLaunchPermission":Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;
    if-eqz v7, :cond_10

    .line 91
    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;->getAdd()Ljava/util/List;

    move-result-object v2

    .line 92
    .local v2, "addList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/LaunchPermission;>;"
    const/4 v3, 0x1

    .line 94
    .local v3, "addListIndex":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/ec2/model/LaunchPermission;

    .line 95
    .local v4, "addListValue":Lcom/amazonaws/services/ec2/model/LaunchPermission;
    move-object v6, v4

    .line 96
    .local v6, "launchPermissionMember":Lcom/amazonaws/services/ec2/model/LaunchPermission;
    if-eqz v6, :cond_c

    .line 97
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/LaunchPermission;->getUserId()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_b

    .line 98
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "LaunchPermission.Add."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".UserId"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/LaunchPermission;->getUserId()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_b
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/LaunchPermission;->getGroup()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_c

    .line 101
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "LaunchPermission.Add."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".Group"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/LaunchPermission;->getGroup()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 106
    goto :goto_3

    .line 108
    .end local v4    # "addListValue":Lcom/amazonaws/services/ec2/model/LaunchPermission;
    .end local v6    # "launchPermissionMember":Lcom/amazonaws/services/ec2/model/LaunchPermission;
    :cond_d
    invoke-virtual {v7}, Lcom/amazonaws/services/ec2/model/LaunchPermissionModifications;->getRemove()Ljava/util/List;

    move-result-object v11

    .line 109
    .local v11, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/LaunchPermission;>;"
    const/4 v12, 0x1

    .line 111
    .local v12, "removeListIndex":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/amazonaws/services/ec2/model/LaunchPermission;

    .line 112
    .local v13, "removeListValue":Lcom/amazonaws/services/ec2/model/LaunchPermission;
    move-object v6, v13

    .line 113
    .restart local v6    # "launchPermissionMember":Lcom/amazonaws/services/ec2/model/LaunchPermission;
    if-eqz v6, :cond_f

    .line 114
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/LaunchPermission;->getUserId()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_e

    .line 115
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "LaunchPermission.Remove."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".UserId"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/LaunchPermission;->getUserId()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_e
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/LaunchPermission;->getGroup()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_f

    .line 118
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "LaunchPermission.Remove."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".Group"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/LaunchPermission;->getGroup()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_f
    add-int/lit8 v12, v12, 0x1

    .line 123
    goto :goto_4

    .line 125
    .end local v2    # "addList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/LaunchPermission;>;"
    .end local v3    # "addListIndex":I
    .end local v6    # "launchPermissionMember":Lcom/amazonaws/services/ec2/model/LaunchPermission;
    .end local v11    # "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/LaunchPermission;>;"
    .end local v12    # "removeListIndex":I
    .end local v13    # "removeListValue":Lcom/amazonaws/services/ec2/model/LaunchPermission;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getDescription()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_11

    .line 126
    const-string v21, "Description.Value"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;->getDescription()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_11
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/ModifyImageAttributeRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ModifyImageAttributeRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
