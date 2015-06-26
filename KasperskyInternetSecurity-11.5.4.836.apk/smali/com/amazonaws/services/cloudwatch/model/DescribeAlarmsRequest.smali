.class public Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DescribeAlarmsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actionPrefix:Ljava/lang/String;

.field private alarmNamePrefix:Ljava/lang/String;

.field private alarmNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxRecords:Ljava/lang/Integer;

.field private nextToken:Ljava/lang/String;

.field private stateValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
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

    .line 454
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 472
    :cond_0
    :goto_0
    return v3

    .line 455
    :cond_1
    if-eqz p1, :cond_0

    .line 457
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 458
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;

    .line 460
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 461
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNamePrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNamePrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 463
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNamePrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNamePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNamePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getStateValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getStateValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getStateValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getStateValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getStateValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getActionPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getActionPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 467
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getActionPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getActionPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getActionPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 471
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 472
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 460
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 462
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 464
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 466
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 468
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 470
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getActionPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->actionPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarmNamePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->alarmNamePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarmNames()Ljava/util/List;
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
    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->alarmNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->alarmNames:Ljava/util/List;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->alarmNames:Ljava/util/List;

    return-object v0
.end method

.method public getMaxRecords()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->maxRecords:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStateValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->stateValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 440
    const/16 v1, 0x1f

    .line 441
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 443
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 444
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNamePrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 445
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getStateValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 446
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getActionPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 447
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 448
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 449
    return v0

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNamePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 445
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 446
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getActionPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 447
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    .line 448
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public setActionPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionPrefix"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->actionPrefix:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setAlarmNamePrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "alarmNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->alarmNamePrefix:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setAlarmNames(Ljava/util/Collection;)V
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
    .line 102
    .local p1, "alarmNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->alarmNames:Ljava/util/List;

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v0, "alarmNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->alarmNames:Ljava/util/List;

    goto :goto_0
.end method

.method public setMaxRecords(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxRecords"    # Ljava/lang/Integer;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->maxRecords:Ljava/lang/Integer;

    .line 355
    return-void
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->nextToken:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setStateValue(Lcom/amazonaws/services/cloudwatch/model/StateValue;)V
    .locals 1
    .param p1, "stateValue"    # Lcom/amazonaws/services/cloudwatch/model/StateValue;

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StateValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->stateValue:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setStateValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateValue"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->stateValue:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNamePrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmNamePrefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNamePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getStateValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getActionPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionPrefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getActionPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxRecords: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withActionPrefix(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
    .locals 0
    .param p1, "actionPrefix"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->actionPrefix:Ljava/lang/String;

    .line 329
    return-object p0
.end method

.method public withAlarmNamePrefix(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
    .locals 0
    .param p1, "alarmNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->alarmNamePrefix:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public withAlarmNames(Ljava/util/Collection;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "alarmNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->alarmNames:Ljava/util/List;

    .line 155
    :goto_0
    return-object p0

    .line 150
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v0, "alarmNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->alarmNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAlarmNames([Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
    .locals 6
    .param p1, "alarmNames"    # [Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->setAlarmNames(Ljava/util/Collection;)V

    .line 127
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

    .line 128
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withMaxRecords(Ljava/lang/Integer;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
    .locals 0
    .param p1, "maxRecords"    # Ljava/lang/Integer;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->maxRecords:Ljava/lang/Integer;

    .line 372
    return-object p0
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->nextToken:Ljava/lang/String;

    .line 412
    return-object p0
.end method

.method public withStateValue(Lcom/amazonaws/services/cloudwatch/model/StateValue;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
    .locals 1
    .param p1, "stateValue"    # Lcom/amazonaws/services/cloudwatch/model/StateValue;

    .prologue
    .line 286
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StateValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->stateValue:Ljava/lang/String;

    .line 287
    return-object p0
.end method

.method public withStateValue(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
    .locals 0
    .param p1, "stateValue"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->stateValue:Ljava/lang/String;

    .line 252
    return-object p0
.end method
