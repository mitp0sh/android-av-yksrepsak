.class public Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PutMetricAlarmRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actionsEnabled:Ljava/lang/Boolean;

.field private alarmActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private alarmDescription:Ljava/lang/String;

.field private alarmName:Ljava/lang/String;

.field private comparisonOperator:Ljava/lang/String;

.field private dimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;"
        }
    .end annotation
.end field

.field private evaluationPeriods:Ljava/lang/Integer;

.field private insufficientDataActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metricName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private oKActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private period:Ljava/lang/Integer;

.field private statistic:Ljava/lang/String;

.field private threshold:Ljava/lang/Double;

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1272
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 1308
    :cond_0
    :goto_0
    return v3

    .line 1273
    :cond_1
    if-eqz p1, :cond_0

    .line 1275
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1276
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;

    .line 1278
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1279
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1280
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1281
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1282
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_15

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_16

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1283
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1285
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1286
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1287
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1288
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1289
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1290
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1e

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1291
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1292
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_20

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1293
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1294
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_22

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1295
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1296
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_23

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_24

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1297
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_25

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_26

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1299
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1300
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_28

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1301
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1302
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_29

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2a

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1303
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1304
    :cond_e
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_2b

    move v1, v2

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_2c

    move v4, v2

    :goto_1c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1305
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1306
    :cond_f
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    move v1, v2

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2e

    move v4, v2

    :goto_1e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1307
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_10
    move v3, v2

    .line 1308
    goto/16 :goto_0

    :cond_11
    move v1, v3

    .line 1278
    goto/16 :goto_1

    :cond_12
    move v4, v3

    goto/16 :goto_2

    :cond_13
    move v1, v3

    .line 1280
    goto/16 :goto_3

    :cond_14
    move v4, v3

    goto/16 :goto_4

    :cond_15
    move v1, v3

    .line 1282
    goto/16 :goto_5

    :cond_16
    move v4, v3

    goto/16 :goto_6

    :cond_17
    move v1, v3

    .line 1284
    goto/16 :goto_7

    :cond_18
    move v4, v3

    goto/16 :goto_8

    :cond_19
    move v1, v3

    .line 1286
    goto/16 :goto_9

    :cond_1a
    move v4, v3

    goto/16 :goto_a

    :cond_1b
    move v1, v3

    .line 1288
    goto/16 :goto_b

    :cond_1c
    move v4, v3

    goto/16 :goto_c

    :cond_1d
    move v1, v3

    .line 1290
    goto/16 :goto_d

    :cond_1e
    move v4, v3

    goto/16 :goto_e

    :cond_1f
    move v1, v3

    .line 1292
    goto/16 :goto_f

    :cond_20
    move v4, v3

    goto/16 :goto_10

    :cond_21
    move v1, v3

    .line 1294
    goto/16 :goto_11

    :cond_22
    move v4, v3

    goto/16 :goto_12

    :cond_23
    move v1, v3

    .line 1296
    goto/16 :goto_13

    :cond_24
    move v4, v3

    goto/16 :goto_14

    :cond_25
    move v1, v3

    .line 1298
    goto/16 :goto_15

    :cond_26
    move v4, v3

    goto/16 :goto_16

    :cond_27
    move v1, v3

    .line 1300
    goto/16 :goto_17

    :cond_28
    move v4, v3

    goto/16 :goto_18

    :cond_29
    move v1, v3

    .line 1302
    goto/16 :goto_19

    :cond_2a
    move v4, v3

    goto/16 :goto_1a

    :cond_2b
    move v1, v3

    .line 1304
    goto/16 :goto_1b

    :cond_2c
    move v4, v3

    goto/16 :goto_1c

    :cond_2d
    move v1, v3

    .line 1306
    goto :goto_1d

    :cond_2e
    move v4, v3

    goto :goto_1e
.end method

.method public getActionsEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->actionsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAlarmActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    return-object v0
.end method

.method public getAlarmDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmName:Ljava/lang/String;

    return-object v0
.end method

.method public getComparisonOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->comparisonOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    return-object v0
.end method

.method public getEvaluationPeriods()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->evaluationPeriods:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInsufficientDataActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    return-object v0
.end method

.method public getMetricName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->metricName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getOKActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->period:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStatistic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->statistic:Ljava/lang/String;

    return-object v0
.end method

.method public getThreshold()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->threshold:Ljava/lang/Double;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1249
    const/16 v1, 0x1f

    .line 1250
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 1252
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 1253
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 1254
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 1255
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 1256
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 1257
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 1258
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 1259
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 1260
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 1261
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 1262
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 1263
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 1264
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_c
    add-int v0, v4, v2

    .line 1265
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_d
    add-int v0, v4, v2

    .line 1266
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    :goto_e
    add-int v0, v2, v3

    .line 1267
    return v0

    .line 1252
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 1253
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 1254
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 1255
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 1256
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 1257
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 1258
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 1259
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 1260
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 1261
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 1262
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 1263
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 1264
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 1265
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 1266
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_e
.end method

.method public isActionsEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->actionsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setActionsEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "actionsEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->actionsEnabled:Ljava/lang/Boolean;

    .line 281
    return-void
.end method

.method public setAlarmActions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "alarmActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 467
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    .line 474
    :goto_0
    return-void

    .line 471
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 472
    .local v0, "alarmActionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 473
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    goto :goto_0
.end method

.method public setAlarmDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "alarmDescription"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmDescription:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setAlarmName(Ljava/lang/String;)V
    .locals 0
    .param p1, "alarmName"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmName:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setComparisonOperator(Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;)V
    .locals 1
    .param p1, "comparisonOperator"    # Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    .prologue
    .line 1189
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->comparisonOperator:Ljava/lang/String;

    .line 1190
    return-void
.end method

.method public setComparisonOperator(Ljava/lang/String;)V
    .locals 0
    .param p1, "comparisonOperator"    # Ljava/lang/String;

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->comparisonOperator:Ljava/lang/String;

    .line 1147
    return-void
.end method

.method public setDimensions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 848
    .local p1, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    if-nez p1, :cond_0

    .line 849
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    .line 856
    :goto_0
    return-void

    .line 853
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 854
    .local v0, "dimensionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 855
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public setEvaluationPeriods(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "evaluationPeriods"    # Ljava/lang/Integer;

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->evaluationPeriods:Ljava/lang/Integer;

    .line 1056
    return-void
.end method

.method public setInsufficientDataActions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, "insufficientDataActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 580
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    .line 587
    :goto_0
    return-void

    .line 584
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 585
    .local v0, "insufficientDataActionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 586
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    goto :goto_0
.end method

.method public setMetricName(Ljava/lang/String;)V
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->metricName:Ljava/lang/String;

    .line 673
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->namespace:Ljava/lang/String;

    .line 718
    return-void
.end method

.method public setOKActions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "oKActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 354
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    .line 361
    :goto_0
    return-void

    .line 358
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    .local v0, "oKActionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    goto :goto_0
.end method

.method public setPeriod(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "period"    # Ljava/lang/Integer;

    .prologue
    .line 925
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->period:Ljava/lang/Integer;

    .line 926
    return-void
.end method

.method public setStatistic(Lcom/amazonaws/services/cloudwatch/model/Statistic;)V
    .locals 1
    .param p1, "statistic"    # Lcom/amazonaws/services/cloudwatch/model/Statistic;

    .prologue
    .line 800
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/Statistic;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->statistic:Ljava/lang/String;

    .line 801
    return-void
.end method

.method public setStatistic(Ljava/lang/String;)V
    .locals 0
    .param p1, "statistic"    # Ljava/lang/String;

    .prologue
    .line 765
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->statistic:Ljava/lang/String;

    .line 766
    return-void
.end method

.method public setThreshold(Ljava/lang/Double;)V
    .locals 0
    .param p1, "threshold"    # Ljava/lang/Double;

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->threshold:Ljava/lang/Double;

    .line 1095
    return-void
.end method

.method public setUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)V
    .locals 1
    .param p1, "unit"    # Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    .prologue
    .line 1007
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->unit:Ljava/lang/String;

    .line 1008
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 972
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->unit:Ljava/lang/String;

    .line 973
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1227
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OKActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsufficientDataActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statistic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getStatistic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getPeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EvaluationPeriods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getThreshold()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComparisonOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getComparisonOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    :cond_e
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withActionsEnabled(Ljava/lang/Boolean;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0
    .param p1, "actionsEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->actionsEnabled:Ljava/lang/Boolean;

    .line 297
    return-object p0
.end method

.method public withAlarmActions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "alarmActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 528
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    .line 535
    :goto_0
    return-object p0

    .line 530
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 531
    .local v0, "alarmActionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 532
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmActions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAlarmActions([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 6
    .param p1, "alarmActions"    # [Ljava/lang/String;

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->setAlarmActions(Ljava/util/Collection;)V

    .line 499
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 500
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getAlarmActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withAlarmDescription(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0
    .param p1, "alarmDescription"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmDescription:Ljava/lang/String;

    .line 257
    return-object p0
.end method

.method public withAlarmName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0
    .param p1, "alarmName"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->alarmName:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public withComparisonOperator(Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 1
    .param p1, "comparisonOperator"    # Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    .prologue
    .line 1212
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->comparisonOperator:Ljava/lang/String;

    .line 1213
    return-object p0
.end method

.method public withComparisonOperator(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0
    .param p1, "comparisonOperator"    # Ljava/lang/String;

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->comparisonOperator:Ljava/lang/String;

    .line 1170
    return-object p0
.end method

.method public withDimensions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;"
        }
    .end annotation

    .prologue
    .line 893
    .local p1, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    if-nez p1, :cond_0

    .line 894
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    .line 901
    :goto_0
    return-object p0

    .line 896
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 897
    .local v0, "dimensionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 898
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withDimensions([Lcom/amazonaws/services/cloudwatch/model/Dimension;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 6
    .param p1, "dimensions"    # [Lcom/amazonaws/services/cloudwatch/model/Dimension;

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->setDimensions(Ljava/util/Collection;)V

    .line 873
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/cloudwatch/model/Dimension;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 874
    .local v3, "value":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getDimensions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 876
    .end local v3    # "value":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    :cond_1
    return-object p0
.end method

.method public withEvaluationPeriods(Ljava/lang/Integer;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0
    .param p1, "evaluationPeriods"    # Ljava/lang/Integer;

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->evaluationPeriods:Ljava/lang/Integer;

    .line 1075
    return-object p0
.end method

.method public withInsufficientDataActions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;"
        }
    .end annotation

    .prologue
    .line 640
    .local p1, "insufficientDataActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 641
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    .line 648
    :goto_0
    return-object p0

    .line 643
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 644
    .local v0, "insufficientDataActionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 645
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->insufficientDataActions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withInsufficientDataActions([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 6
    .param p1, "insufficientDataActions"    # [Ljava/lang/String;

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->setInsufficientDataActions(Ljava/util/Collection;)V

    .line 612
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 613
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withMetricName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->metricName:Ljava/lang/String;

    .line 690
    return-object p0
.end method

.method public withNamespace(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->namespace:Ljava/lang/String;

    .line 736
    return-object p0
.end method

.method public withOKActions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "oKActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 415
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    .line 422
    :goto_0
    return-object p0

    .line 417
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    .local v0, "oKActionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 419
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->oKActions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withOKActions([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 6
    .param p1, "oKActions"    # [Ljava/lang/String;

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->setOKActions(Ljava/util/Collection;)V

    .line 386
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 387
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->getOKActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withPeriod(Ljava/lang/Integer;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0
    .param p1, "period"    # Ljava/lang/Integer;

    .prologue
    .line 942
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->period:Ljava/lang/Integer;

    .line 943
    return-object p0
.end method

.method public withStatistic(Lcom/amazonaws/services/cloudwatch/model/Statistic;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 1
    .param p1, "statistic"    # Lcom/amazonaws/services/cloudwatch/model/Statistic;

    .prologue
    .line 819
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/Statistic;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->statistic:Ljava/lang/String;

    .line 820
    return-object p0
.end method

.method public withStatistic(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0
    .param p1, "statistic"    # Ljava/lang/String;

    .prologue
    .line 784
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->statistic:Ljava/lang/String;

    .line 785
    return-object p0
.end method

.method public withThreshold(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0
    .param p1, "threshold"    # Ljava/lang/Double;

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->threshold:Ljava/lang/Double;

    .line 1109
    return-object p0
.end method

.method public withUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 1
    .param p1, "unit"    # Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    .prologue
    .line 1026
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->unit:Ljava/lang/String;

    .line 1027
    return-object p0
.end method

.method public withUnit(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/PutMetricAlarmRequest;->unit:Ljava/lang/String;

    .line 992
    return-object p0
.end method
