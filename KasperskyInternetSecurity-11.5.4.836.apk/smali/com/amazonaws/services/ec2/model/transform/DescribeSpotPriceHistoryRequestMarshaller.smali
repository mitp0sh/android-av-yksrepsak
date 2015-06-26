.class public Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryRequestMarshaller;
.super Ljava/lang/Object;
.source "DescribeSpotPriceHistoryRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;)Lcom/amazonaws/Request;
    .locals 20
    .param p1, "describeSpotPriceHistoryRequest"    # Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;",
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
    .local v14, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;>;"
    const-string v18, "Action"

    const-string v19, "DescribeSpotPriceHistory"

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
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getStartTime()Ljava/util/Date;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 44
    const-string v18, "StartTime"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getStartTime()Ljava/util/Date;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getEndTime()Ljava/util/Date;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 47
    const-string v18, "EndTime"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getEndTime()Ljava/util/Date;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getInstanceTypes()Ljava/util/List;

    move-result-object v8

    .line 51
    .local v8, "instanceTypesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 53
    .local v9, "instanceTypesListIndex":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 54
    .local v10, "instanceTypesListValue":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 55
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InstanceType."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 61
    .end local v10    # "instanceTypesListValue":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getProductDescriptions()Ljava/util/List;

    move-result-object v11

    .line 62
    .local v11, "productDescriptionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 64
    .local v12, "productDescriptionsListIndex":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 65
    .local v13, "productDescriptionsListValue":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 66
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ProductDescription."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 72
    .end local v13    # "productDescriptionsListValue":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getFilters()Ljava/util/List;

    move-result-object v3

    .line 73
    .local v3, "filtersList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    const/4 v4, 0x1

    .line 75
    .local v4, "filtersListIndex":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/ec2/model/Filter;

    .line 76
    .local v5, "filtersListValue":Lcom/amazonaws/services/ec2/model/Filter;
    move-object v2, v5

    .line 77
    .local v2, "filterMember":Lcom/amazonaws/services/ec2/model/Filter;
    if-eqz v2, :cond_9

    .line 78
    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/Filter;->getName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 79
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Filter."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".Name"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/Filter;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_7
    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/Filter;->getValues()Ljava/util/List;

    move-result-object v15

    .line 83
    .local v15, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x1

    .line 85
    .local v16, "valuesListIndex":I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 86
    .local v17, "valuesListValue":Ljava/lang/String;
    if-eqz v17, :cond_8

    .line 87
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Filter."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".Value."

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

    .line 90
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 94
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v15    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "valuesListIndex":I
    .end local v17    # "valuesListValue":Ljava/lang/String;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 95
    goto/16 :goto_2

    .line 96
    .end local v2    # "filterMember":Lcom/amazonaws/services/ec2/model/Filter;
    .end local v5    # "filtersListValue":Lcom/amazonaws/services/ec2/model/Filter;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_b

    .line 97
    const-string v18, "AvailabilityZone"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_c

    .line 100
    const-string v18, "MaxResults"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_d

    .line 103
    const-string v18, "NextToken"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeSpotPriceHistoryRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeSpotPriceHistoryRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
