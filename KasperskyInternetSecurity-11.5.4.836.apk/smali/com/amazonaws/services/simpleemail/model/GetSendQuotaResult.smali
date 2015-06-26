.class public Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;
.super Ljava/lang/Object;
.source "GetSendQuotaResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private max24HourSend:Ljava/lang/Double;

.field private maxSendRate:Ljava/lang/Double;

.field private sentLast24Hours:Ljava/lang/Double;


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

    .line 181
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 193
    :cond_0
    :goto_0
    return v3

    .line 182
    :cond_1
    if-eqz p1, :cond_0

    .line 184
    instance-of v1, p1, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 185
    check-cast v0, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;

    .line 187
    .local v0, "other":Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMax24HourSend()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMax24HourSend()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMax24HourSend()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMax24HourSend()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMax24HourSend()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMaxSendRate()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMaxSendRate()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMaxSendRate()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMaxSendRate()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMaxSendRate()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getSentLast24Hours()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getSentLast24Hours()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getSentLast24Hours()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getSentLast24Hours()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getSentLast24Hours()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 193
    goto :goto_0

    :cond_5
    move v1, v3

    .line 187
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 189
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 191
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getMax24HourSend()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->max24HourSend:Ljava/lang/Double;

    return-object v0
.end method

.method public getMaxSendRate()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->maxSendRate:Ljava/lang/Double;

    return-object v0
.end method

.method public getSentLast24Hours()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->sentLast24Hours:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 170
    const/16 v1, 0x1f

    .line 171
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 173
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMax24HourSend()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 174
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMaxSendRate()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 175
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getSentLast24Hours()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 176
    return v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMax24HourSend()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMaxSendRate()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getSentLast24Hours()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setMax24HourSend(Ljava/lang/Double;)V
    .locals 0
    .param p1, "max24HourSend"    # Ljava/lang/Double;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->max24HourSend:Ljava/lang/Double;

    .line 61
    return-void
.end method

.method public setMaxSendRate(Ljava/lang/Double;)V
    .locals 0
    .param p1, "maxSendRate"    # Ljava/lang/Double;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->maxSendRate:Ljava/lang/Double;

    .line 97
    return-void
.end method

.method public setSentLast24Hours(Ljava/lang/Double;)V
    .locals 0
    .param p1, "sentLast24Hours"    # Ljava/lang/Double;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->sentLast24Hours:Ljava/lang/Double;

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMax24HourSend()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max24HourSend: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMax24HourSend()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMaxSendRate()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxSendRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getMaxSendRate()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getSentLast24Hours()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SentLast24Hours: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->getSentLast24Hours()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withMax24HourSend(Ljava/lang/Double;)Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;
    .locals 0
    .param p1, "max24HourSend"    # Ljava/lang/Double;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->max24HourSend:Ljava/lang/Double;

    .line 77
    return-object p0
.end method

.method public withMaxSendRate(Ljava/lang/Double;)Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;
    .locals 0
    .param p1, "maxSendRate"    # Ljava/lang/Double;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->maxSendRate:Ljava/lang/Double;

    .line 111
    return-object p0
.end method

.method public withSentLast24Hours(Ljava/lang/Double;)Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;
    .locals 0
    .param p1, "sentLast24Hours"    # Ljava/lang/Double;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/GetSendQuotaResult;->sentLast24Hours:Ljava/lang/Double;

    .line 145
    return-object p0
.end method
