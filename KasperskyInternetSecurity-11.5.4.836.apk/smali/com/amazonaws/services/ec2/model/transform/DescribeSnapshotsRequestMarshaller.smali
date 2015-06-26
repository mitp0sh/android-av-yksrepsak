.class public Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotsRequestMarshaller;
.super Ljava/lang/Object;
.source "DescribeSnapshotsRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;)Lcom/amazonaws/Request;
    .locals 23
    .param p1, "describeSnapshotsRequest"    # Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;",
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
    new-instance v11, Lcom/amazonaws/DefaultRequest;

    const-string v21, "AmazonEC2"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v11, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;>;"
    const-string v21, "Action"

    const-string v22, "DescribeSnapshots"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v21, "Version"

    const-string v22, "2013-02-01"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;->getSnapshotIds()Ljava/util/List;

    move-result-object v15

    .line 45
    .local v15, "snapshotIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x1

    .line 47
    .local v16, "snapshotIdsListIndex":I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 48
    .local v17, "snapshotIdsListValue":Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 49
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SnapshotId."

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

    invoke-interface {v11, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 55
    .end local v17    # "snapshotIdsListValue":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;->getOwnerIds()Ljava/util/List;

    move-result-object v8

    .line 56
    .local v8, "ownerIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 58
    .local v9, "ownerIdsListIndex":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 59
    .local v10, "ownerIdsListValue":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 60
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Owner."

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

    invoke-interface {v11, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 66
    .end local v10    # "ownerIdsListValue":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;->getRestorableByUserIds()Ljava/util/List;

    move-result-object v12

    .line 67
    .local v12, "restorableByUserIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 69
    .local v13, "restorableByUserIdsListIndex":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 70
    .local v14, "restorableByUserIdsListValue":Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 71
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RestorableBy."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static {v14}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 77
    .end local v14    # "restorableByUserIdsListValue":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;->getFilters()Ljava/util/List;

    move-result-object v3

    .line 78
    .local v3, "filtersList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    const/4 v4, 0x1

    .line 80
    .local v4, "filtersListIndex":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/ec2/model/Filter;

    .line 81
    .local v5, "filtersListValue":Lcom/amazonaws/services/ec2/model/Filter;
    move-object v2, v5

    .line 82
    .local v2, "filterMember":Lcom/amazonaws/services/ec2/model/Filter;
    if-eqz v2, :cond_9

    .line 83
    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/Filter;->getName()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 84
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Filter."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".Name"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/Filter;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_7
    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/Filter;->getValues()Ljava/util/List;

    move-result-object v18

    .line 88
    .local v18, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v19, 0x1

    .line 90
    .local v19, "valuesListIndex":I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 91
    .local v20, "valuesListValue":Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 92
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Filter."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".Value."

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

    invoke-interface {v11, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 99
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v18    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "valuesListIndex":I
    .end local v20    # "valuesListValue":Ljava/lang/String;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 100
    goto/16 :goto_3

    .line 103
    .end local v2    # "filterMember":Lcom/amazonaws/services/ec2/model/Filter;
    .end local v5    # "filtersListValue":Lcom/amazonaws/services/ec2/model/Filter;
    :cond_a
    return-object v11
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSnapshotsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSnapshotsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
