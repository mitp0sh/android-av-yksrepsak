.class public Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "UpdateTableRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
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

    .line 226
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 236
    :cond_0
    :goto_0
    return v3

    .line 227
    :cond_1
    if-eqz p1, :cond_0

    .line 229
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 230
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;

    .line 232
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 236
    goto :goto_0

    :cond_4
    move v1, v3

    .line 232
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 234
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 216
    const/16 v1, 0x1f

    .line 217
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 219
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 220
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 221
    return v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setProvisionedThroughput(Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;)V
    .locals 0
    .param p1, "provisionedThroughput"    # Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    .line 162
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->tableName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionedThroughput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withProvisionedThroughput(Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;)Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;
    .locals 0
    .param p1, "provisionedThroughput"    # Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    .line 192
    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->tableName:Ljava/lang/String;

    .line 110
    return-object p0
.end method
