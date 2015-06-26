.class public Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;
.super Ljava/lang/Object;
.source "AlarmHistoryItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alarmName:Ljava/lang/String;

.field private historyData:Ljava/lang/String;

.field private historyItemType:Ljava/lang/String;

.field private historySummary:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
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

    .line 345
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 361
    :cond_0
    :goto_0
    return v3

    .line 346
    :cond_1
    if-eqz p1, :cond_0

    .line 348
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 349
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;

    .line 351
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getAlarmName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getAlarmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryItemType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryItemType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryItemType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryItemType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryItemType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistorySummary()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistorySummary()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 358
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistorySummary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistorySummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistorySummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 360
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    move v3, v2

    .line 361
    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 351
    goto/16 :goto_1

    :cond_8
    move v4, v3

    goto/16 :goto_2

    :cond_9
    move v1, v3

    .line 353
    goto/16 :goto_3

    :cond_a
    move v4, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 355
    goto :goto_5

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v3

    .line 357
    goto :goto_7

    :cond_e
    move v4, v3

    goto :goto_8

    :cond_f
    move v1, v3

    .line 359
    goto :goto_9

    :cond_10
    move v4, v3

    goto :goto_a
.end method

.method public getAlarmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->alarmName:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->historyData:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->historyItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getHistorySummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->historySummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 332
    const/16 v1, 0x1f

    .line 333
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 335
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 336
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 337
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryItemType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 338
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistorySummary()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 339
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_4
    add-int v0, v2, v3

    .line 340
    return v0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_1

    .line 337
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryItemType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 338
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistorySummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 339
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public setAlarmName(Ljava/lang/String;)V
    .locals 0
    .param p1, "alarmName"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->alarmName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setHistoryData(Ljava/lang/String;)V
    .locals 0
    .param p1, "historyData"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->historyData:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setHistoryItemType(Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;)V
    .locals 1
    .param p1, "historyItemType"    # Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->historyItemType:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setHistoryItemType(Ljava/lang/String;)V
    .locals 0
    .param p1, "historyItemType"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->historyItemType:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setHistorySummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "historySummary"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->historySummary:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->timestamp:Ljava/util/Date;

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryItemType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HistoryItemType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryItemType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistorySummary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HistorySummary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistorySummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HistoryData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->getHistoryData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_4
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAlarmName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;
    .locals 0
    .param p1, "alarmName"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->alarmName:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public withHistoryData(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;
    .locals 0
    .param p1, "historyData"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->historyData:Ljava/lang/String;

    .line 305
    return-object p0
.end method

.method public withHistoryItemType(Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;)Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;
    .locals 1
    .param p1, "historyItemType"    # Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/HistoryItemType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->historyItemType:Ljava/lang/String;

    .line 220
    return-object p0
.end method

.method public withHistoryItemType(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;
    .locals 0
    .param p1, "historyItemType"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->historyItemType:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public withHistorySummary(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;
    .locals 0
    .param p1, "historySummary"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->historySummary:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public withTimestamp(Ljava/util/Date;)Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;
    .locals 0
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/AlarmHistoryItem;->timestamp:Ljava/util/Date;

    .line 136
    return-object p0
.end method
