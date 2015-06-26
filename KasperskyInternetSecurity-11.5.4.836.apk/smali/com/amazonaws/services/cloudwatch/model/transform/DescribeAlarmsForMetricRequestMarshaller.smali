.class public Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsForMetricRequestMarshaller;
.super Ljava/lang/Object;
.source "DescribeAlarmsForMetricRequestMarshaller.java"

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
        "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;",
        ">;",
        "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;",
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
.method public marshall(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;)Lcom/amazonaws/Request;
    .locals 8
    .param p1, "describeAlarmsForMetricRequest"    # Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    const-string v7, "Invalid argument passed to marshall(...)"

    invoke-direct {v6, v7}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 39
    :cond_0
    new-instance v5, Lcom/amazonaws/DefaultRequest;

    const-string v6, "AmazonCloudWatch"

    invoke-direct {v5, p1, v6}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v5, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;>;"
    const-string v6, "Action"

    const-string v7, "DescribeAlarmsForMetric"

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v6, "Version"

    const-string v7, "2010-08-01"

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getMetricName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 44
    const-string v6, "MetricName"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getMetricName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getNamespace()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 47
    const-string v6, "Namespace"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getStatistic()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 50
    const-string v6, "Statistic"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getStatistic()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "dimensionsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    const/4 v2, 0x1

    .line 56
    .local v2, "dimensionsListIndex":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cloudwatch/model/Dimension;

    .line 57
    .local v3, "dimensionsListValue":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    move-object v0, v3

    .line 58
    .local v0, "dimensionMember":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    if-eqz v0, :cond_5

    .line 59
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dimensions.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dimensions.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 68
    goto :goto_0

    .line 69
    .end local v0    # "dimensionMember":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    .end local v3    # "dimensionsListValue":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 70
    const-string v6, "Period"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getUnit()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 73
    const-string v6, "Unit"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;->getUnit()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_8
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
    check-cast p1, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsForMetricRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsForMetricRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
