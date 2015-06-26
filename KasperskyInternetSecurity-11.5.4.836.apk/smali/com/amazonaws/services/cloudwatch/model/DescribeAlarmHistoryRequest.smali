.class public Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DescribeAlarmHistoryRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alarmName:Ljava/lang/String;

.field private endDate:Ljava/util/Date;

.field private historyItemType:Ljava/lang/String;

.field private maxRecords:Ljava/lang/Integer;

.field private nextToken:Ljava/lang/String;

.field private startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
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

    .line 388
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 406
    :cond_0
    :goto_0
    return v3

    .line 389
    :cond_1
    if-eqz p1, :cond_0

    .line 391
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 392
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;

    .line 394
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getHistoryItemType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getHistoryItemType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getHistoryItemType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getHistoryItemType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getHistoryItemType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getStartDate()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getStartDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getEndDate()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getEndDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getEndDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 406
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 394
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 396
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 398
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 400
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 402
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 404
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getAlarmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->alarmName:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getHistoryItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->historyItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxRecords()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->maxRecords:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 374
    const/16 v1, 0x1f

    .line 375
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 377
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 378
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getHistoryItemType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 379
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getStartDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 380
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getEndDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 381
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 382
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 383
    return v0

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getHistoryItemType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 379
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_2

    .line 380
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_3

    .line 381
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_4

    .line 382
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public setAlarmName(Ljava/lang/String;)V
    .locals 0
    .param p1, "alarmName"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->alarmName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setEndDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->endDate:Ljava/util/Date;

    .line 249
    return-void
.end method

.method public setHistoryItemType(Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;)V
    .locals 1
    .param p1, "historyItemType"    # Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->historyItemType:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setHistoryItemType(Ljava/lang/String;)V
    .locals 0
    .param p1, "historyItemType"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->historyItemType:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setMaxRecords(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxRecords"    # Ljava/lang/Integer;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->maxRecords:Ljava/lang/Integer;

    .line 289
    return-void
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->nextToken:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->startDate:Ljava/util/Date;

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getHistoryItemType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HistoryItemType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getHistoryItemType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getEndDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxRecords: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAlarmName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;
    .locals 0
    .param p1, "alarmName"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->alarmName:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public withEndDate(Ljava/util/Date;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;
    .locals 0
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->endDate:Ljava/util/Date;

    .line 263
    return-object p0
.end method

.method public withHistoryItemType(Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;
    .locals 1
    .param p1, "historyItemType"    # Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->historyItemType:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public withHistoryItemType(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;
    .locals 0
    .param p1, "historyItemType"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->historyItemType:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public withMaxRecords(Ljava/lang/Integer;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;
    .locals 0
    .param p1, "maxRecords"    # Ljava/lang/Integer;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->maxRecords:Ljava/lang/Integer;

    .line 306
    return-object p0
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->nextToken:Ljava/lang/String;

    .line 346
    return-object p0
.end method

.method public withStartDate(Ljava/util/Date;)Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;
    .locals 0
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmHistoryRequest;->startDate:Ljava/util/Date;

    .line 229
    return-object p0
.end method
