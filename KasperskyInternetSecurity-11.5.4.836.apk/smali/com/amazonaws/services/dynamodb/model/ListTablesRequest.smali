.class public Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListTablesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private exclusiveStartTableName:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
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

    .line 186
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 196
    :cond_0
    :goto_0
    return v3

    .line 187
    :cond_1
    if-eqz p1, :cond_0

    .line 189
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 190
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;

    .line 192
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getExclusiveStartTableName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getExclusiveStartTableName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getExclusiveStartTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getExclusiveStartTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getExclusiveStartTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 196
    goto :goto_0

    :cond_4
    move v1, v3

    .line 192
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 194
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getExclusiveStartTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->exclusiveStartTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 176
    const/16 v1, 0x1f

    .line 177
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 179
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getExclusiveStartTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 180
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 181
    return v0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getExclusiveStartTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setExclusiveStartTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "exclusiveStartTableName"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->exclusiveStartTableName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "limit"    # Ljava/lang/Integer;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->limit:Ljava/lang/Integer;

    .line 135
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getExclusiveStartTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExclusiveStartTableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getExclusiveStartTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withExclusiveStartTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;
    .locals 0
    .param p1, "exclusiveStartTableName"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->exclusiveStartTableName:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;
    .locals 0
    .param p1, "limit"    # Ljava/lang/Integer;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesRequest;->limit:Ljava/lang/Integer;

    .line 152
    return-object p0
.end method
