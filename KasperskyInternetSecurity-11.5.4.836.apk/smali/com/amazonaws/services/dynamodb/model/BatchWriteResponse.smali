.class public Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;
.super Ljava/lang/Object;
.source "BatchWriteResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private consumedCapacityUnits:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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

    .line 132
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 140
    :cond_0
    :goto_0
    return v3

    .line 133
    :cond_1
    if-eqz p1, :cond_0

    .line 135
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 136
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;

    .line 138
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 140
    goto :goto_0

    :cond_3
    move v1, v3

    .line 138
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getConsumedCapacityUnits()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;->consumedCapacityUnits:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 123
    const/16 v1, 0x1f

    .line 124
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 126
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 127
    return v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setConsumedCapacityUnits(Ljava/lang/Double;)V
    .locals 0
    .param p1, "consumedCapacityUnits"    # Ljava/lang/Double;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;->consumedCapacityUnits:Ljava/lang/Double;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsumedCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;->getConsumedCapacityUnits()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withConsumedCapacityUnits(Ljava/lang/Double;)Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;
    .locals 0
    .param p1, "consumedCapacityUnits"    # Ljava/lang/Double;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/BatchWriteResponse;->consumedCapacityUnits:Ljava/lang/Double;

    .line 100
    return-object p0
.end method
