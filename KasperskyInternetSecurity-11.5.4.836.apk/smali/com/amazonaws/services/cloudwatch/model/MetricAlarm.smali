.class public Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
.super Ljava/lang/Object;
.source "MetricAlarm.java"

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

.field private alarmArn:Ljava/lang/String;

.field private alarmConfigurationUpdatedTimestamp:Ljava/util/Date;

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

.field private stateReason:Ljava/lang/String;

.field private stateReasonData:Ljava/lang/String;

.field private stateUpdatedTimestamp:Ljava/util/Date;

.field private stateValue:Ljava/lang/String;

.field private statistic:Ljava/lang/String;

.field private threshold:Ljava/lang/Double;

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1596
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 1644
    :cond_0
    :goto_0
    return v3

    .line 1597
    :cond_1
    if-eqz p1, :cond_0

    .line 1599
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1600
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;

    .line 1602
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1603
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1604
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1605
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1606
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1607
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1608
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_1e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1609
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1610
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_20

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1611
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1612
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_21

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_22

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1613
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1614
    :cond_7
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_23

    move v1, v2

    :goto_d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_24

    move v4, v2

    :goto_e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1615
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1616
    :cond_8
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_25

    move v1, v2

    :goto_f
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_26

    move v4, v2

    :goto_10
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1617
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1618
    :cond_9
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    move v1, v2

    :goto_11
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_28

    move v4, v2

    :goto_12
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1619
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1620
    :cond_a
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    move v1, v2

    :goto_13
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2a

    move v4, v2

    :goto_14
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1621
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1622
    :cond_b
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    move v1, v2

    :goto_15
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2c

    move v4, v2

    :goto_16
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1623
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1624
    :cond_c
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2d

    move v1, v2

    :goto_17
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_2e

    move v4, v2

    :goto_18
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1625
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1626
    :cond_d
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2f

    move v1, v2

    :goto_19
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_30

    move v4, v2

    :goto_1a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1627
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1628
    :cond_e
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_31

    move v1, v2

    :goto_1b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_32

    move v4, v2

    :goto_1c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1629
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1630
    :cond_f
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    move v1, v2

    :goto_1d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_34

    move v4, v2

    :goto_1e
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1631
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1632
    :cond_10
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_35

    move v1, v2

    :goto_1f
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_36

    move v4, v2

    :goto_20
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1633
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1634
    :cond_11
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_37

    move v1, v2

    :goto_21
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_38

    move v4, v2

    :goto_22
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1635
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1636
    :cond_12
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_39

    move v1, v2

    :goto_23
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3a

    move v4, v2

    :goto_24
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1637
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1638
    :cond_13
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3b

    move v1, v2

    :goto_25
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_3c

    move v4, v2

    :goto_26
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1639
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1640
    :cond_14
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_3d

    move v1, v2

    :goto_27
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_3e

    move v4, v2

    :goto_28
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1641
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1642
    :cond_15
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3f

    move v1, v2

    :goto_29
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_40

    move v4, v2

    :goto_2a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1643
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_16
    move v3, v2

    .line 1644
    goto/16 :goto_0

    :cond_17
    move v1, v3

    .line 1602
    goto/16 :goto_1

    :cond_18
    move v4, v3

    goto/16 :goto_2

    :cond_19
    move v1, v3

    .line 1604
    goto/16 :goto_3

    :cond_1a
    move v4, v3

    goto/16 :goto_4

    :cond_1b
    move v1, v3

    .line 1606
    goto/16 :goto_5

    :cond_1c
    move v4, v3

    goto/16 :goto_6

    :cond_1d
    move v1, v3

    .line 1608
    goto/16 :goto_7

    :cond_1e
    move v4, v3

    goto/16 :goto_8

    :cond_1f
    move v1, v3

    .line 1610
    goto/16 :goto_9

    :cond_20
    move v4, v3

    goto/16 :goto_a

    :cond_21
    move v1, v3

    .line 1612
    goto/16 :goto_b

    :cond_22
    move v4, v3

    goto/16 :goto_c

    :cond_23
    move v1, v3

    .line 1614
    goto/16 :goto_d

    :cond_24
    move v4, v3

    goto/16 :goto_e

    :cond_25
    move v1, v3

    .line 1616
    goto/16 :goto_f

    :cond_26
    move v4, v3

    goto/16 :goto_10

    :cond_27
    move v1, v3

    .line 1618
    goto/16 :goto_11

    :cond_28
    move v4, v3

    goto/16 :goto_12

    :cond_29
    move v1, v3

    .line 1620
    goto/16 :goto_13

    :cond_2a
    move v4, v3

    goto/16 :goto_14

    :cond_2b
    move v1, v3

    .line 1622
    goto/16 :goto_15

    :cond_2c
    move v4, v3

    goto/16 :goto_16

    :cond_2d
    move v1, v3

    .line 1624
    goto/16 :goto_17

    :cond_2e
    move v4, v3

    goto/16 :goto_18

    :cond_2f
    move v1, v3

    .line 1626
    goto/16 :goto_19

    :cond_30
    move v4, v3

    goto/16 :goto_1a

    :cond_31
    move v1, v3

    .line 1628
    goto/16 :goto_1b

    :cond_32
    move v4, v3

    goto/16 :goto_1c

    :cond_33
    move v1, v3

    .line 1630
    goto/16 :goto_1d

    :cond_34
    move v4, v3

    goto/16 :goto_1e

    :cond_35
    move v1, v3

    .line 1632
    goto/16 :goto_1f

    :cond_36
    move v4, v3

    goto/16 :goto_20

    :cond_37
    move v1, v3

    .line 1634
    goto/16 :goto_21

    :cond_38
    move v4, v3

    goto/16 :goto_22

    :cond_39
    move v1, v3

    .line 1636
    goto/16 :goto_23

    :cond_3a
    move v4, v3

    goto/16 :goto_24

    :cond_3b
    move v1, v3

    .line 1638
    goto/16 :goto_25

    :cond_3c
    move v4, v3

    goto/16 :goto_26

    :cond_3d
    move v1, v3

    .line 1640
    goto/16 :goto_27

    :cond_3e
    move v4, v3

    goto/16 :goto_28

    :cond_3f
    move v1, v3

    .line 1642
    goto/16 :goto_29

    :cond_40
    move v4, v3

    goto/16 :goto_2a
.end method

.method public getActionsEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->actionsEnabled:Ljava/lang/Boolean;

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
    .line 544
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    return-object v0
.end method

.method public getAlarmArn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmArn:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmConfigurationUpdatedTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getAlarmDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmName:Ljava/lang/String;

    return-object v0
.end method

.method public getComparisonOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->comparisonOperator:Ljava/lang/String;

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
    .line 1145
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    return-object v0
.end method

.method public getEvaluationPeriods()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->evaluationPeriods:Ljava/lang/Integer;

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
    .line 659
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    return-object v0
.end method

.method public getMetricName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->metricName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->namespace:Ljava/lang/String;

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
    .line 431
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->period:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStateReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateReason:Ljava/lang/String;

    return-object v0
.end method

.method public getStateReasonData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateReasonData:Ljava/lang/String;

    return-object v0
.end method

.method public getStateUpdatedTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateUpdatedTimestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getStateValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateValue:Ljava/lang/String;

    return-object v0
.end method

.method public getStatistic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->statistic:Ljava/lang/String;

    return-object v0
.end method

.method public getThreshold()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->threshold:Ljava/lang/Double;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1567
    const/16 v1, 0x1f

    .line 1568
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 1570
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 1571
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 1572
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 1573
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 1574
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 1575
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v0, v4, v2

    .line 1576
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v0, v4, v2

    .line 1577
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v0, v4, v2

    .line 1578
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v0, v4, v2

    .line 1579
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v0, v4, v2

    .line 1580
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_a
    add-int v0, v4, v2

    .line 1581
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_b
    add-int v0, v4, v2

    .line 1582
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_c
    add-int v0, v4, v2

    .line 1583
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_d
    add-int v0, v4, v2

    .line 1584
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    move v2, v3

    :goto_e
    add-int v0, v4, v2

    .line 1585
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v3

    :goto_f
    add-int v0, v4, v2

    .line 1586
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_10

    move v2, v3

    :goto_10
    add-int v0, v4, v2

    .line 1587
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    move v2, v3

    :goto_11
    add-int v0, v4, v2

    .line 1588
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_12

    move v2, v3

    :goto_12
    add-int v0, v4, v2

    .line 1589
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v3

    :goto_13
    add-int v0, v4, v2

    .line 1590
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    :goto_14
    add-int v0, v2, v3

    .line 1591
    return v0

    .line 1570
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_0

    .line 1571
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    .line 1572
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_2

    .line 1573
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 1574
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto/16 :goto_4

    .line 1575
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_5

    .line 1576
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_6

    .line 1577
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_7

    .line 1578
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_8

    .line 1579
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_9

    .line 1580
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_a

    .line 1581
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto/16 :goto_b

    .line 1582
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 1583
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_d

    .line 1584
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_e

    .line 1585
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_f

    .line 1586
    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_10

    .line 1587
    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_11

    .line 1588
    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto/16 :goto_12

    .line 1589
    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto/16 :goto_13

    .line 1590
    :cond_14
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_14
.end method

.method public isActionsEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->actionsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setActionsEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "actionsEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->actionsEnabled:Ljava/lang/Boolean;

    .line 382
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
    .line 567
    .local p1, "alarmActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 568
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    .line 575
    :goto_0
    return-void

    .line 572
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 573
    .local v0, "alarmActionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 574
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    goto :goto_0
.end method

.method public setAlarmArn(Ljava/lang/String;)V
    .locals 0
    .param p1, "alarmArn"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmArn:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setAlarmConfigurationUpdatedTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "alarmConfigurationUpdatedTimestamp"    # Ljava/util/Date;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmConfigurationUpdatedTimestamp:Ljava/util/Date;

    .line 344
    return-void
.end method

.method public setAlarmDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "alarmDescription"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmDescription:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setAlarmName(Ljava/lang/String;)V
    .locals 0
    .param p1, "alarmName"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmName:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setComparisonOperator(Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;)V
    .locals 1
    .param p1, "comparisonOperator"    # Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    .prologue
    .line 1501
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->comparisonOperator:Ljava/lang/String;

    .line 1502
    return-void
.end method

.method public setComparisonOperator(Ljava/lang/String;)V
    .locals 0
    .param p1, "comparisonOperator"    # Ljava/lang/String;

    .prologue
    .line 1458
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->comparisonOperator:Ljava/lang/String;

    .line 1459
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
    .line 1160
    .local p1, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    if-nez p1, :cond_0

    .line 1161
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    .line 1168
    :goto_0
    return-void

    .line 1165
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1166
    .local v0, "dimensionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1167
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public setEvaluationPeriods(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "evaluationPeriods"    # Ljava/lang/Integer;

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->evaluationPeriods:Ljava/lang/Integer;

    .line 1368
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
    .line 684
    .local p1, "insufficientDataActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 685
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    .line 692
    :goto_0
    return-void

    .line 689
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 690
    .local v0, "insufficientDataActionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 691
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    goto :goto_0
.end method

.method public setMetricName(Ljava/lang/String;)V
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 984
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->metricName:Ljava/lang/String;

    .line 985
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->namespace:Ljava/lang/String;

    .line 1030
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
    .line 454
    .local p1, "oKActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 455
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    .line 462
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 460
    .local v0, "oKActionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    goto :goto_0
.end method

.method public setPeriod(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "period"    # Ljava/lang/Integer;

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->period:Ljava/lang/Integer;

    .line 1238
    return-void
.end method

.method public setStateReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateReason"    # Ljava/lang/String;

    .prologue
    .line 864
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateReason:Ljava/lang/String;

    .line 865
    return-void
.end method

.method public setStateReasonData(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateReasonData"    # Ljava/lang/String;

    .prologue
    .line 907
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateReasonData:Ljava/lang/String;

    .line 908
    return-void
.end method

.method public setStateUpdatedTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "stateUpdatedTimestamp"    # Ljava/util/Date;

    .prologue
    .line 944
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateUpdatedTimestamp:Ljava/util/Date;

    .line 945
    return-void
.end method

.method public setStateValue(Lcom/amazonaws/services/cloudwatch/model/StateValue;)V
    .locals 1
    .param p1, "stateValue"    # Lcom/amazonaws/services/cloudwatch/model/StateValue;

    .prologue
    .line 820
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StateValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateValue:Ljava/lang/String;

    .line 821
    return-void
.end method

.method public setStateValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateValue"    # Ljava/lang/String;

    .prologue
    .line 785
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateValue:Ljava/lang/String;

    .line 786
    return-void
.end method

.method public setStatistic(Lcom/amazonaws/services/cloudwatch/model/Statistic;)V
    .locals 1
    .param p1, "statistic"    # Lcom/amazonaws/services/cloudwatch/model/Statistic;

    .prologue
    .line 1112
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/Statistic;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->statistic:Ljava/lang/String;

    .line 1113
    return-void
.end method

.method public setStatistic(Ljava/lang/String;)V
    .locals 0
    .param p1, "statistic"    # Ljava/lang/String;

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->statistic:Ljava/lang/String;

    .line 1078
    return-void
.end method

.method public setThreshold(Ljava/lang/Double;)V
    .locals 0
    .param p1, "threshold"    # Ljava/lang/Double;

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->threshold:Ljava/lang/Double;

    .line 1407
    return-void
.end method

.method public setUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)V
    .locals 1
    .param p1, "unit"    # Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    .prologue
    .line 1319
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->unit:Ljava/lang/String;

    .line 1320
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 1284
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->unit:Ljava/lang/String;

    .line 1285
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1539
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmConfigurationUpdatedTimestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmConfigurationUpdatedTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->isActionsEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OKActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsufficientDataActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateReasonData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateReasonData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateUpdatedTimestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStateUpdatedTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MetricName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statistic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getStatistic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    :cond_e
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    :cond_f
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Period: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getPeriod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    :cond_10
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    :cond_11
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EvaluationPeriods: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getEvaluationPeriods()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    :cond_12
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getThreshold()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    :cond_13
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComparisonOperator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getComparisonOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    :cond_14
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withActionsEnabled(Ljava/lang/Boolean;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "actionsEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->actionsEnabled:Ljava/lang/Boolean;

    .line 398
    return-object p0
.end method

.method public withAlarmActions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "alarmActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 629
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    .line 636
    :goto_0
    return-object p0

    .line 631
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 632
    .local v0, "alarmActionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 633
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmActions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAlarmActions([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 6
    .param p1, "alarmActions"    # [Ljava/lang/String;

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->setAlarmActions(Ljava/util/Collection;)V

    .line 600
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

    .line 601
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getAlarmActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withAlarmArn(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "alarmArn"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmArn:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public withAlarmConfigurationUpdatedTimestamp(Ljava/util/Date;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "alarmConfigurationUpdatedTimestamp"    # Ljava/util/Date;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmConfigurationUpdatedTimestamp:Ljava/util/Date;

    .line 358
    return-object p0
.end method

.method public withAlarmDescription(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "alarmDescription"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmDescription:Ljava/lang/String;

    .line 324
    return-object p0
.end method

.method public withAlarmName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "alarmName"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->alarmName:Ljava/lang/String;

    .line 238
    return-object p0
.end method

.method public withComparisonOperator(Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 1
    .param p1, "comparisonOperator"    # Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;

    .prologue
    .line 1524
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/ComparisonOperator;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->comparisonOperator:Ljava/lang/String;

    .line 1525
    return-object p0
.end method

.method public withComparisonOperator(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "comparisonOperator"    # Ljava/lang/String;

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->comparisonOperator:Ljava/lang/String;

    .line 1482
    return-object p0
.end method

.method public withDimensions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/Dimension;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;"
        }
    .end annotation

    .prologue
    .line 1205
    .local p1, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    if-nez p1, :cond_0

    .line 1206
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    .line 1213
    :goto_0
    return-object p0

    .line 1208
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1209
    .local v0, "dimensionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/cloudwatch/model/Dimension;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1210
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->dimensions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withDimensions([Lcom/amazonaws/services/cloudwatch/model/Dimension;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 6
    .param p1, "dimensions"    # [Lcom/amazonaws/services/cloudwatch/model/Dimension;

    .prologue
    .line 1184
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->setDimensions(Ljava/util/Collection;)V

    .line 1185
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

    .line 1186
    .local v3, "value":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getDimensions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1188
    .end local v3    # "value":Lcom/amazonaws/services/cloudwatch/model/Dimension;
    :cond_1
    return-object p0
.end method

.method public withEvaluationPeriods(Ljava/lang/Integer;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "evaluationPeriods"    # Ljava/lang/Integer;

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->evaluationPeriods:Ljava/lang/Integer;

    .line 1387
    return-object p0
.end method

.method public withInsufficientDataActions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, "insufficientDataActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 750
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    .line 757
    :goto_0
    return-object p0

    .line 752
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 753
    .local v0, "insufficientDataActionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 754
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->insufficientDataActions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withInsufficientDataActions([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 6
    .param p1, "insufficientDataActions"    # [Ljava/lang/String;

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->setInsufficientDataActions(Ljava/util/Collection;)V

    .line 719
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

    .line 720
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getInsufficientDataActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withMetricName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "metricName"    # Ljava/lang/String;

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->metricName:Ljava/lang/String;

    .line 1002
    return-object p0
.end method

.method public withNamespace(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->namespace:Ljava/lang/String;

    .line 1048
    return-object p0
.end method

.method public withOKActions(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "oKActions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 516
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    .line 523
    :goto_0
    return-object p0

    .line 518
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 519
    .local v0, "oKActionsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 520
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->oKActions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withOKActions([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 6
    .param p1, "oKActions"    # [Ljava/lang/String;

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->setOKActions(Ljava/util/Collection;)V

    .line 487
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

    .line 488
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->getOKActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withPeriod(Ljava/lang/Integer;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "period"    # Ljava/lang/Integer;

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->period:Ljava/lang/Integer;

    .line 1255
    return-object p0
.end method

.method public withStateReason(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "stateReason"    # Ljava/lang/String;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateReason:Ljava/lang/String;

    .line 882
    return-object p0
.end method

.method public withStateReasonData(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "stateReasonData"    # Ljava/lang/String;

    .prologue
    .line 924
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateReasonData:Ljava/lang/String;

    .line 925
    return-object p0
.end method

.method public withStateUpdatedTimestamp(Ljava/util/Date;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "stateUpdatedTimestamp"    # Ljava/util/Date;

    .prologue
    .line 958
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateUpdatedTimestamp:Ljava/util/Date;

    .line 959
    return-object p0
.end method

.method public withStateValue(Lcom/amazonaws/services/cloudwatch/model/StateValue;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 1
    .param p1, "stateValue"    # Lcom/amazonaws/services/cloudwatch/model/StateValue;

    .prologue
    .line 839
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StateValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateValue:Ljava/lang/String;

    .line 840
    return-object p0
.end method

.method public withStateValue(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "stateValue"    # Ljava/lang/String;

    .prologue
    .line 804
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->stateValue:Ljava/lang/String;

    .line 805
    return-object p0
.end method

.method public withStatistic(Lcom/amazonaws/services/cloudwatch/model/Statistic;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 1
    .param p1, "statistic"    # Lcom/amazonaws/services/cloudwatch/model/Statistic;

    .prologue
    .line 1131
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/Statistic;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->statistic:Ljava/lang/String;

    .line 1132
    return-object p0
.end method

.method public withStatistic(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "statistic"    # Ljava/lang/String;

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->statistic:Ljava/lang/String;

    .line 1097
    return-object p0
.end method

.method public withThreshold(Ljava/lang/Double;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "threshold"    # Ljava/lang/Double;

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->threshold:Ljava/lang/Double;

    .line 1421
    return-object p0
.end method

.method public withUnit(Lcom/amazonaws/services/cloudwatch/model/StandardUnit;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 1
    .param p1, "unit"    # Lcom/amazonaws/services/cloudwatch/model/StandardUnit;

    .prologue
    .line 1338
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StandardUnit;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->unit:Ljava/lang/String;

    .line 1339
    return-object p0
.end method

.method public withUnit(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/MetricAlarm;->unit:Ljava/lang/String;

    .line 1304
    return-object p0
.end method
