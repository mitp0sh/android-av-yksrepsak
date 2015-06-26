.class public Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesOfferingsRequestMarshaller;
.super Ljava/lang/Object;
.source "DescribeReservedInstancesOfferingsRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;)Lcom/amazonaws/Request;
    .locals 16
    .param p1, "describeReservedInstancesOfferingsRequest"    # Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;",
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
    new-instance v7, Lcom/amazonaws/DefaultRequest;

    const-string v14, "AmazonEC2"

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v14}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v7, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;>;"
    const-string v14, "Action"

    const-string v15, "DescribeReservedInstancesOfferings"

    invoke-interface {v7, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v14, "Version"

    const-string v15, "2013-02-01"

    invoke-interface {v7, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getReservedInstancesOfferingIds()Ljava/util/List;

    move-result-object v8

    .line 45
    .local v8, "reservedInstancesOfferingIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 47
    .local v9, "reservedInstancesOfferingIdsListIndex":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 48
    .local v10, "reservedInstancesOfferingIdsListValue":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 49
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ReservedInstancesOfferingId."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 54
    .end local v10    # "reservedInstancesOfferingIdsListValue":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 55
    const-string v14, "InstanceType"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceType()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 58
    const-string v14, "AvailabilityZone"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getAvailabilityZone()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 61
    const-string v14, "ProductDescription"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getProductDescription()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getFilters()Ljava/util/List;

    move-result-object v2

    .line 65
    .local v2, "filtersList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Filter;>;"
    const/4 v3, 0x1

    .line 67
    .local v3, "filtersListIndex":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/ec2/model/Filter;

    .line 68
    .local v4, "filtersListValue":Lcom/amazonaws/services/ec2/model/Filter;
    move-object v1, v4

    .line 69
    .local v1, "filterMember":Lcom/amazonaws/services/ec2/model/Filter;
    if-eqz v1, :cond_8

    .line 70
    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/Filter;->getName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 71
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Filter."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".Name"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/Filter;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_6
    invoke-virtual {v1}, Lcom/amazonaws/services/ec2/model/Filter;->getValues()Ljava/util/List;

    move-result-object v11

    .line 75
    .local v11, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 77
    .local v12, "valuesListIndex":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 78
    .local v13, "valuesListValue":Ljava/lang/String;
    if-eqz v13, :cond_7

    .line 79
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Filter."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-interface {v7, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 86
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v11    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "valuesListIndex":I
    .end local v13    # "valuesListValue":Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_1

    .line 88
    .end local v1    # "filterMember":Lcom/amazonaws/services/ec2/model/Filter;
    .end local v4    # "filtersListValue":Lcom/amazonaws/services/ec2/model/Filter;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 89
    const-string v14, "InstanceTenancy"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getInstanceTenancy()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getOfferingType()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 92
    const-string v14, "OfferingType"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getOfferingType()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 95
    const-string v14, "NextToken"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 98
    const-string v14, "MaxResults"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;->getMaxResults()Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v15}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_d
    return-object v7
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/DescribeReservedInstancesOfferingsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DescribeReservedInstancesOfferingsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
