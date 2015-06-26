.class public Lcom/amazonaws/services/ec2/model/transform/DescribeConversionTasksRequestMarshaller;
.super Ljava/lang/Object;
.source "DescribeConversionTasksRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;)Lcom/amazonaws/Request;
    .locals 16
    .param p1, "describeConversionTasksRequest"    # Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v14, Lcom/amazonaws/AmazonClientException;

    const-string v15, "Invalid argument passed to marshall(...)"

    invoke-direct {v14, v15}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 39
    :cond_0
    new-instance v10, Lcom/amazonaws/DefaultRequest;

    const-string v14, "AmazonEC2"

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v14}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v10, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;>;"
    const-string v14, "Action"

    const-string v15, "DescribeConversionTasks"

    invoke-interface {v10, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v14, "Version"

    const-string v15, "2013-02-01"

    invoke-interface {v10, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;->getFilters()Ljava/util/List;

    move-result-object v5

    .line 45
    .local v5, "filtersList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    const/4 v6, 0x1

    .line 47
    .local v6, "filtersListIndex":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazonaws/services/ec2/model/Filter;

    .line 48
    .local v7, "filtersListValue":Lcom/amazonaws/services/ec2/model/Filter;
    move-object v4, v7

    .line 49
    .local v4, "filterMember":Lcom/amazonaws/services/ec2/model/Filter;
    if-eqz v4, :cond_3

    .line 50
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/Filter;->getName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 51
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Filter."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".Name"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/Filter;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-virtual {v4}, Lcom/amazonaws/services/ec2/model/Filter;->getValues()Ljava/util/List;

    move-result-object v11

    .line 55
    .local v11, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 57
    .local v12, "valuesListIndex":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 58
    .local v13, "valuesListValue":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 59
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Filter."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".Value."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 66
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "valuesListIndex":I
    .end local v13    # "valuesListValue":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 67
    goto :goto_0

    .line 69
    .end local v4    # "filterMember":Lcom/amazonaws/services/ec2/model/Filter;
    .end local v7    # "filtersListValue":Lcom/amazonaws/services/ec2/model/Filter;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;->getConversionTaskIds()Ljava/util/List;

    move-result-object v1

    .line 70
    .local v1, "conversionTaskIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 72
    .local v2, "conversionTaskIdsListIndex":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    .local v3, "conversionTaskIdsListValue":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 74
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ConversionTaskId."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 81
    .end local v3    # "conversionTaskIdsListValue":Ljava/lang/String;
    :cond_6
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeConversionTasksRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeConversionTasksRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
