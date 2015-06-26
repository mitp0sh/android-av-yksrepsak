.class public Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricAlarmRequestMarshaller;
.super Ljava/lang/Object;
.source "PutMetricAlarmRequestMarshaller.java"

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
        "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;",
        ">;",
        "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;",
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
.method public marshall(Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;)Lcom/amazonaws/Request;
    .locals 20
    .param p1, "putMetricAlarmRequest"    # Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;",
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
    new-instance v17, Lcom/amazonaws/DefaultRequest;

    const-string v18, "AmazonCloudWatch"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v17, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;>;"
    const-string v18, "Action"

    const-string v19, "PutMetricAlarm"

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v18, "Version"

    const-string v19, "2010-08-01"

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 44
    const-string v18, "AlarmName"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 47
    const-string v18, "AlarmDescription"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 50
    const-string v18, "ActionsEnabled"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v14

    .line 54
    .local v14, "oKActionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x1

    .line 56
    .local v15, "oKActionsListIndex":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 57
    .local v16, "oKActionsListValue":Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 58
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "OKActions.member."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 64
    .end local v16    # "oKActionsListValue":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v3

    .line 65
    .local v3, "alarmActionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 67
    .local v4, "alarmActionsListIndex":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 68
    .local v5, "alarmActionsListValue":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 69
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AlarmActions.member."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 75
    .end local v5    # "alarmActionsListValue":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v11

    .line 76
    .local v11, "insufficientDataActionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 78
    .local v12, "insufficientDataActionsListIndex":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 79
    .local v13, "insufficientDataActionsListValue":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 80
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InsufficientDataActions.member."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {v13}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 85
    .end local v13    # "insufficientDataActionsListValue":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 86
    const-string v18, "MetricName"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_b

    .line 89
    const-string v18, "Namespace"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_c

    .line 92
    const-string v18, "Statistic"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v7

    .line 96
    .local v7, "dimensionsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    const/4 v8, 0x1

    .line 98
    .local v8, "dimensionsListIndex":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazonaws/services/cloudwatch/model/Dimension;

    .line 99
    .local v9, "dimensionsListValue":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    move-object v6, v9

    .line 100
    .local v6, "dimensionMember":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    if-eqz v6, :cond_e

    .line 101
    invoke-virtual {v6}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_d

    .line 102
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dimensions.member."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".Name"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v6}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_d
    invoke-virtual {v6}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getValue()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_e

    .line 105
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dimensions.member."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".Value"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v6}, Lcom/amazonaws/services/cloudwatch/model/Dimension;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 110
    goto :goto_3

    .line 111
    .end local v6    # "dimensionMember":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    .end local v9    # "dimensionsListValue":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_10

    .line 112
    const-string v18, "Period"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_11

    .line 115
    const-string v18, "Unit"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_12

    .line 118
    const-string v18, "EvaluationPeriods"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v18

    if-eqz v18, :cond_13

    .line 121
    const-string v18, "Threshold"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_14

    .line 124
    const-string v18, "ComparisonOperator"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_14
    return-object v17
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
    check-cast p1, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/PutMetricAlarmRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
