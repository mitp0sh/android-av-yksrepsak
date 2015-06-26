.class public Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateTableRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

.field private provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/KeySchema;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "keySchema"    # Lcom/amazonaws/services/dynamodb/model/KeySchema;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->tableName:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

    .line 97
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 337
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 349
    :cond_0
    :goto_0
    return v3

    .line 338
    :cond_1
    if-eqz p1, :cond_0

    .line 340
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 341
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;

    .line 343
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 349
    goto :goto_0

    :cond_5
    move v1, v3

    .line 343
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 345
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 347
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

    return-object v0
.end method

.method public getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 326
    const/16 v1, 0x1f

    .line 327
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 329
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 330
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 331
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 332
    return v0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->hashCode()I

    move-result v2

    goto :goto_1

    .line 331
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setKeySchema(Lcom/amazonaws/services/dynamodb/model/KeySchema;)V
    .locals 0
    .param p1, "keySchema"    # Lcom/amazonaws/services/dynamodb/model/KeySchema;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

    .line 195
    return-void
.end method

.method public setProvisionedThroughput(Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;)V
    .locals 0
    .param p1, "provisionedThroughput"    # Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    .line 271
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->tableName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySchema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionedThroughput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withKeySchema(Lcom/amazonaws/services/dynamodb/model/KeySchema;)Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;
    .locals 0
    .param p1, "keySchema"    # Lcom/amazonaws/services/dynamodb/model/KeySchema;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->keySchema:Lcom/amazonaws/services/dynamodb/model/KeySchema;

    .line 219
    return-object p0
.end method

.method public withProvisionedThroughput(Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;)Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;
    .locals 0
    .param p1, "provisionedThroughput"    # Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    .line 301
    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->tableName:Ljava/lang/String;

    .line 155
    return-object p0
.end method
