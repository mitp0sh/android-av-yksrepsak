.class public Lcom/amazonaws/services/cloudwatch/model/transform/GetMetricStatisticsRequestMarshaller;
.super Ljava/lang/Object;
.source "GetMetricStatisticsRequestMarshaller.java"

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
        "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;",
        ">;",
        "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;",
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
.method public marshall(Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;)Lcom/amazonaws/Request;
    .locals 11
    .param p1, "getMetricStatisticsRequest"    # Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v9, Lcom/amazonaws/AmazonClientException;

    const-string v10, "Invalid argument passed to marshall(...)"

    invoke-direct {v9, v10}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 39
    :cond_0
    new-instance v5, Lcom/amazonaws/DefaultRequest;

    const-string v9, "AmazonCloudWatch"

    invoke-direct {v5, p1, v9}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v5, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;>;"
    const-string v9, "Action"

    const-string v10, "GetMetricStatistics"

    invoke-interface {v5, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v9, "Version"

    const-string v10, "2010-08-01"

    invoke-interface {v5, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 44
    const-string v9, "Namespace"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 47
    const-string v9, "MetricName"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getMetricName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    .line 51
    .local v1, "dimensionsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    const/4 v2, 0x1

    .line 53
    .local v2, "dimensionsListIndex":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cloudwatch/model/Dimension;

    .line 54
    .local v3, "dimensionsListValue":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    move-object v0, v3

    .line 55
    .local v0, "dimensionMember":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    if-eqz v0, :cond_4

    .line 56
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 57
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dimensions.member."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".Name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 60
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dimensions.member."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".Value"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_0

    .line 66
    .end local v0    # "dimensionMember":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    .end local v3    # "dimensionsListValue":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 67
    const-string v9, "StartTime"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 70
    const-string v9, "EndTime"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 73
    const-string v9, "Period"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getStatistics()Ljava/util/List;

    move-result-object v6

    .line 77
    .local v6, "statisticsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 79
    .local v7, "statisticsListIndex":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 80
    .local v8, "statisticsListValue":Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Statistics.member."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 86
    .end local v8    # "statisticsListValue":Ljava/lang/String;
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getUnit()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 87
    const-string v9, "Unit"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;->getUnit()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_b
    return-object v5
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
    check-cast p1, Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/GetMetricStatisticsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/GetMetricStatisticsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
