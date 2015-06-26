.class public Lcom/amazonaws/services/ec2/model/transform/DescribeTagsRequestMarshaller;
.super Ljava/lang/Object;
.source "DescribeTagsRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;)Lcom/amazonaws/Request;
    .locals 12
    .param p1, "describeTagsRequest"    # Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v10, Lcom/amazonaws/AmazonClientException;

    const-string v11, "Invalid argument passed to marshall(...)"

    invoke-direct {v10, v11}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 39
    :cond_0
    new-instance v6, Lcom/amazonaws/DefaultRequest;

    const-string v10, "AmazonEC2"

    invoke-direct {v6, p1, v10}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v6, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;>;"
    const-string v10, "Action"

    const-string v11, "DescribeTags"

    invoke-interface {v6, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v10, "Version"

    const-string v11, "2013-02-01"

    invoke-interface {v6, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;->getFilters()Ljava/util/List;

    move-result-object v1

    .line 45
    .local v1, "filtersList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    const/4 v2, 0x1

    .line 47
    .local v2, "filtersListIndex":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/ec2/model/Filter;

    .line 48
    .local v3, "filtersListValue":Lcom/amazonaws/services/ec2/model/Filter;
    move-object v0, v3

    .line 49
    .local v0, "filterMember":Lcom/amazonaws/services/ec2/model/Filter;
    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Filter;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 51
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Filter."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".Name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Filter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/Filter;->getValues()Ljava/util/List;

    move-result-object v7

    .line 55
    .local v7, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 57
    .local v8, "valuesListIndex":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 58
    .local v9, "valuesListValue":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 59
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Filter."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".Value."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 66
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "valuesListIndex":I
    .end local v9    # "valuesListValue":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 67
    goto :goto_0

    .line 70
    .end local v0    # "filterMember":Lcom/amazonaws/services/ec2/model/Filter;
    .end local v3    # "filtersListValue":Lcom/amazonaws/services/ec2/model/Filter;
    :cond_4
    return-object v6
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
