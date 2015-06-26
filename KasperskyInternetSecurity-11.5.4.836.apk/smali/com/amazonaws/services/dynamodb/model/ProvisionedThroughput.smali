.class public Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;
.super Ljava/lang/Object;
.source "ProvisionedThroughput.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private readCapacityUnits:Ljava/lang/Long;

.field private writeCapacityUnits:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
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

    .line 202
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 212
    :cond_0
    :goto_0
    return v3

    .line 203
    :cond_1
    if-eqz p1, :cond_0

    .line 205
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 206
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    .line 208
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 212
    goto :goto_0

    :cond_4
    move v1, v3

    .line 208
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 210
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getReadCapacityUnits()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->readCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public getWriteCapacityUnits()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->writeCapacityUnits:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 192
    const/16 v1, 0x1f

    .line 193
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 195
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 196
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 197
    return v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setReadCapacityUnits(Ljava/lang/Long;)V
    .locals 0
    .param p1, "readCapacityUnits"    # Ljava/lang/Long;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->readCapacityUnits:Ljava/lang/Long;

    .line 88
    return-void
.end method

.method public setWriteCapacityUnits(Ljava/lang/Long;)V
    .locals 0
    .param p1, "writeCapacityUnits"    # Ljava/lang/Long;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->writeCapacityUnits:Ljava/lang/Long;

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WriteCapacityUnits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withReadCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;
    .locals 0
    .param p1, "readCapacityUnits"    # Ljava/lang/Long;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->readCapacityUnits:Ljava/lang/Long;

    .line 113
    return-object p0
.end method

.method public withWriteCapacityUnits(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;
    .locals 0
    .param p1, "writeCapacityUnits"    # Ljava/lang/Long;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->writeCapacityUnits:Ljava/lang/Long;

    .line 168
    return-object p0
.end method
