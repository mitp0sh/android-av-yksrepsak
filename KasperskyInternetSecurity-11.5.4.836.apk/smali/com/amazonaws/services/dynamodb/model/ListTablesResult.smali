.class public Lcom/amazonaws/services/dynamodb/model/ListTablesResult;
.super Ljava/lang/Object;
.source "ListTablesResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private lastEvaluatedTableName:Ljava/lang/String;

.field private tableNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

    .line 197
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 207
    :cond_0
    :goto_0
    return v3

    .line 198
    :cond_1
    if-eqz p1, :cond_0

    .line 200
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 201
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;

    .line 203
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/ListTablesResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getTableNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getTableNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getTableNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getTableNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getTableNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getLastEvaluatedTableName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getLastEvaluatedTableName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getLastEvaluatedTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getLastEvaluatedTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getLastEvaluatedTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 207
    goto :goto_0

    :cond_4
    move v1, v3

    .line 203
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 205
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getLastEvaluatedTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->lastEvaluatedTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableNames()Ljava/util/List;
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
    .line 44
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->tableNames:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 187
    const/16 v1, 0x1f

    .line 188
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 190
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getTableNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 191
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getLastEvaluatedTableName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 192
    return v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getTableNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getLastEvaluatedTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setLastEvaluatedTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastEvaluatedTableName"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->lastEvaluatedTableName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setTableNames(Ljava/util/Collection;)V
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
    .line 53
    .local p1, "tableNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->tableNames:Ljava/util/List;

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v0, "tableNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->tableNames:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getTableNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getTableNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getLastEvaluatedTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastEvaluatedTableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getLastEvaluatedTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withLastEvaluatedTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/ListTablesResult;
    .locals 0
    .param p1, "lastEvaluatedTableName"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->lastEvaluatedTableName:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public withTableNames(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodb/model/ListTablesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/ListTablesResult;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "tableNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->tableNames:Ljava/util/List;

    .line 100
    :goto_0
    return-object p0

    .line 95
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v0, "tableNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->tableNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTableNames([Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/ListTablesResult;
    .locals 6
    .param p1, "tableNames"    # [Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getTableNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->setTableNames(Ljava/util/Collection;)V

    .line 75
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

    .line 76
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/ListTablesResult;->getTableNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
