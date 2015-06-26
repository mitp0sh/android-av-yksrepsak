.class public Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetAlarmStateRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alarmName:Ljava/lang/String;

.field private stateReason:Ljava/lang/String;

.field private stateReasonData:Ljava/lang/String;

.field private stateValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
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

    .line 330
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 344
    :cond_0
    :goto_0
    return v3

    .line 331
    :cond_1
    if-eqz p1, :cond_0

    .line 333
    instance-of v1, p1, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 334
    check-cast v0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;

    .line 336
    .local v0, "other":Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 341
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 344
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 336
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 338
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 340
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 342
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getAlarmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->alarmName:Ljava/lang/String;

    return-object v0
.end method

.method public getStateReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateReason:Ljava/lang/String;

    return-object v0
.end method

.method public getStateReasonData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateReasonData:Ljava/lang/String;

    return-object v0
.end method

.method public getStateValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 318
    const/16 v1, 0x1f

    .line 319
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 321
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 322
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 323
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 324
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 325
    return v0

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 323
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 324
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setAlarmName(Ljava/lang/String;)V
    .locals 0
    .param p1, "alarmName"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->alarmName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setStateReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateReason"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateReason:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setStateReasonData(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateReasonData"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateReasonData:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setStateValue(Lcom/amazonaws/services/cloudwatch/model/StateValue;)V
    .locals 1
    .param p1, "stateValue"    # Lcom/amazonaws/services/cloudwatch/model/StateValue;

    .prologue
    .line 175
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StateValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateValue:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setStateValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateValue"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateValue:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getAlarmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateReasonData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->getStateReasonData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAlarmName(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    .locals 0
    .param p1, "alarmName"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->alarmName:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public withStateReason(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    .locals 0
    .param p1, "stateReason"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateReason:Ljava/lang/String;

    .line 243
    return-object p0
.end method

.method public withStateReasonData(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    .locals 0
    .param p1, "stateReasonData"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateReasonData:Ljava/lang/String;

    .line 292
    return-object p0
.end method

.method public withStateValue(Lcom/amazonaws/services/cloudwatch/model/StateValue;)Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    .locals 1
    .param p1, "stateValue"    # Lcom/amazonaws/services/cloudwatch/model/StateValue;

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/StateValue;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateValue:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public withStateValue(Ljava/lang/String;)Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;
    .locals 0
    .param p1, "stateValue"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/amazonaws/services/cloudwatch/model/SetAlarmStateRequest;->stateValue:Ljava/lang/String;

    .line 160
    return-object p0
.end method
