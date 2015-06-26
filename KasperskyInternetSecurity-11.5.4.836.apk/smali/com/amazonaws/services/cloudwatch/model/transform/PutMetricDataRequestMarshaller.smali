.class public Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricDataRequestMarshaller;
.super Ljava/lang/Object;
.source "PutMetricDataRequestMarshaller.java"

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
        "Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;",
        ">;",
        "Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;",
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
.method public marshall(Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;)Lcom/amazonaws/Request;
    .locals 14
    .param p1, "putMetricDataRequest"    # Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v12, Lcom/amazonaws/AmazonClientException;

    const-string v13, "Invalid argument passed to marshall(...)"

    invoke-direct {v12, v13}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 39
    :cond_0
    new-instance v10, Lcom/amazonaws/DefaultRequest;

    const-string v12, "AmazonCloudWatch"

    invoke-direct {v10, p1, v12}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v10, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;>;"
    const-string v12, "Action"

    const-string v13, "PutMetricData"

    invoke-interface {v10, v12, v13}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v12, "Version"

    const-string v13, "2010-08-01"

    invoke-interface {v10, v12, v13}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getNamespace()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 44
    const-string v12, "Namespace"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getNamespace()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;->getMetricData()Ljava/util/List;

    move-result-object v6

    .line 48
    .local v6, "metricDataList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/MetricDatum;>;"
    const/4 v7, 0x1

    .line 50
    .local v7, "metricDataListIndex":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;

    .line 51
    .local v8, "metricDataListValue":Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    move-object v9, v8

    .line 52
    .local v9, "metricDatumMember":Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    if-eqz v9, :cond_c

    .line 53
    invoke-virtual {v9}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getMetricName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 54
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MetricData.member."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".MetricName"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getMetricName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2
    invoke-virtual {v9}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getDimensions()Ljava/util/List;

    move-result-object v1

    .line 58
    .local v1, "dimensionsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    const/4 v2, 0x1

    .line 60
    .local v2, "dimensionsListIndex":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/cloudwatch/model/Dimension;

    .line 61
    .local v3, "dimensionsListValue":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    move-object v0, v3

    .line 62
    .local v0, "dimensionMember":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    if-eqz v0, :cond_4

    .line 63
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 64
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MetricData.member."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".Dimensions.member."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".Name"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 67
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MetricData.member."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".Dimensions.member."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".Value"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 72
    goto :goto_1

    .line 73
    .end local v0    # "dimensionMember":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    .end local v3    # "dimensionsListValue":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    :cond_5
    invoke-virtual {v9}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getTimestamp()Ljava/util/Date;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 74
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MetricData.member."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".Timestamp"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getTimestamp()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_6
    invoke-virtual {v9}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getValue()Ljava/lang/Double;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 77
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MetricData.member."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".Value"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getValue()Ljava/lang/Double;

    move-result-object v13

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_7
    invoke-virtual {v9}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getStatisticValues()Lcom/amazonaws/services/cloudwatch/model/StatisticSet;

    move-result-object v11

    .line 80
    .local v11, "statisticSetStatisticValues":Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
    if-eqz v11, :cond_b

    .line 81
    invoke-virtual {v11}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 82
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MetricData.member."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".StatisticValues.SampleCount"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSampleCount()Ljava/lang/Double;

    move-result-object v13

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_8
    invoke-virtual {v11}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 85
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MetricData.member."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".StatisticValues.Sum"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getSum()Ljava/lang/Double;

    move-result-object v13

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_9
    invoke-virtual {v11}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 88
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MetricData.member."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".StatisticValues.Minimum"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMinimum()Ljava/lang/Double;

    move-result-object v13

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_a
    invoke-virtual {v11}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 91
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MetricData.member."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".StatisticValues.Maximum"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/amazonaws/services/cloudwatch/model/StatisticSet;->getMaximum()Ljava/lang/Double;

    move-result-object v13

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_b
    invoke-virtual {v9}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getUnit()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_c

    .line 95
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MetricData.member."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".Unit"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lcom/amazonaws/services/cloudwatch/model/MetricDatum;->getUnit()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v1    # "dimensionsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    .end local v2    # "dimensionsListIndex":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v11    # "statisticSetStatisticValues":Lcom/amazonaws/services/cloudwatch/model/StatisticSet;
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 100
    goto/16 :goto_0

    .line 103
    .end local v8    # "metricDataListValue":Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    .end local v9    # "metricDatumMember":Lcom/amazonaws/services/cloudwatch/model/MetricDatum;
    :cond_d
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
    check-cast p1, Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricDataRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/PutMetricDataRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
