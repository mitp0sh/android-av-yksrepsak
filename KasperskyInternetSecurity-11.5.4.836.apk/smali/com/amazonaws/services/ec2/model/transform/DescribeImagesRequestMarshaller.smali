.class public Lcom/amazonaws/services/ec2/model/transform/DescribeImagesRequestMarshaller;
.super Ljava/lang/Object;
.source "DescribeImagesRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;)Lcom/amazonaws/Request;
    .locals 24
    .param p1, "describeImagesRequest"    # Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v22, Lcom/amazonaws/AmazonClientException;

    const-string v23, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v22 .. v23}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 39
    :cond_0
    new-instance v18, Lcom/amazonaws/DefaultRequest;

    const-string v22, "AmazonEC2"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v18, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;>;"
    const-string v22, "Action"

    const-string v23, "DescribeImages"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v22, "Version"

    const-string v23, "2013-02-01"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;->getImageIds()Ljava/util/List;

    move-result-object v12

    .line 45
    .local v12, "imageIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 47
    .local v13, "imageIdsListIndex":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 48
    .local v14, "imageIdsListValue":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 49
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ImageId."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static {v14}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 55
    .end local v14    # "imageIdsListValue":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;->getOwners()Ljava/util/List;

    move-result-object v15

    .line 56
    .local v15, "ownersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x1

    .line 58
    .local v16, "ownersListIndex":I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 59
    .local v17, "ownersListValue":Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 60
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Owner."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v17 .. v17}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 66
    .end local v17    # "ownersListValue":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;->getExecutableUsers()Ljava/util/List;

    move-result-object v3

    .line 67
    .local v3, "executableUsersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 69
    .local v4, "executableUsersListIndex":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 70
    .local v5, "executableUsersListValue":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 71
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ExecutableBy."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 77
    .end local v5    # "executableUsersListValue":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;->getFilters()Ljava/util/List;

    move-result-object v7

    .line 78
    .local v7, "filtersList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    const/4 v8, 0x1

    .line 80
    .local v8, "filtersListIndex":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazonaws/services/ec2/model/Filter;

    .line 81
    .local v9, "filtersListValue":Lcom/amazonaws/services/ec2/model/Filter;
    move-object v6, v9

    .line 82
    .local v6, "filterMember":Lcom/amazonaws/services/ec2/model/Filter;
    if-eqz v6, :cond_9

    .line 83
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/Filter;->getName()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 84
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Filter."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".Name"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/Filter;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_7
    invoke-virtual {v6}, Lcom/amazonaws/services/ec2/model/Filter;->getValues()Ljava/util/List;

    move-result-object v19

    .line 88
    .local v19, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v20, 0x1

    .line 90
    .local v20, "valuesListIndex":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 91
    .local v21, "valuesListValue":Ljava/lang/String;
    if-eqz v21, :cond_8

    .line 92
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Filter."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".Value."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v21}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 99
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v19    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "valuesListIndex":I
    .end local v21    # "valuesListValue":Ljava/lang/String;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 100
    goto/16 :goto_3

    .line 103
    .end local v6    # "filterMember":Lcom/amazonaws/services/ec2/model/Filter;
    .end local v9    # "filtersListValue":Lcom/amazonaws/services/ec2/model/Filter;
    :cond_a
    return-object v18
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeImagesRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeImagesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
