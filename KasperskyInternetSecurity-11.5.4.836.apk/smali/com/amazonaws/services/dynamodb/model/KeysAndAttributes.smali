.class public Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;
.super Ljava/lang/Object;
.source "KeysAndAttributes.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributesToGet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private consistentRead:Ljava/lang/Boolean;

.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/Key;",
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

    .line 296
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 308
    :cond_0
    :goto_0
    return v3

    .line 297
    :cond_1
    if-eqz p1, :cond_0

    .line 299
    instance-of v1, p1, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 300
    check-cast v0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;

    .line 302
    .local v0, "other":Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 307
    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 308
    goto :goto_0

    :cond_5
    move v1, v3

    .line 302
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 304
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 306
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getAttributesToGet()Ljava/util/List;
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
    .line 133
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->attributesToGet:Ljava/util/List;

    return-object v0
.end method

.method public getConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->keys:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 285
    const/16 v1, 0x1f

    .line 286
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 288
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 289
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 290
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 291
    return v0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAttributesToGet(Ljava/util/Collection;)V
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
    .line 149
    .local p1, "attributesToGet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 150
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->attributesToGet:Ljava/util/List;

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v0, "attributesToGetCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->attributesToGet:Ljava/util/List;

    goto :goto_0
.end method

.method public setConsistentRead(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "consistentRead"    # Ljava/lang/Boolean;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->consistentRead:Ljava/lang/Boolean;

    .line 233
    return-void
.end method

.method public setKeys(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/Key;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/dynamodb/model/Key;>;"
    if-nez p1, :cond_0

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->keys:Ljava/util/List;

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v0, "keysCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/Key;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->keys:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributesToGet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsistentRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributesToGet(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "attributesToGet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->attributesToGet:Ljava/util/List;

    .line 210
    :goto_0
    return-object p0

    .line 205
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v0, "attributesToGetCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->attributesToGet:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAttributesToGet([Ljava/lang/String;)Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;
    .locals 6
    .param p1, "attributesToGet"    # [Ljava/lang/String;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->setAttributesToGet(Ljava/util/Collection;)V

    .line 178
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

    .line 179
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withConsistentRead(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;
    .locals 0
    .param p1, "consistentRead"    # Ljava/lang/Boolean;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->consistentRead:Ljava/lang/Boolean;

    .line 249
    return-object p0
.end method

.method public withKeys(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/Key;",
            ">;)",
            "Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/dynamodb/model/Key;>;"
    if-nez p1, :cond_0

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->keys:Ljava/util/List;

    .line 116
    :goto_0
    return-object p0

    .line 111
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v0, "keysCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/Key;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    iput-object v0, p0, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->keys:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withKeys([Lcom/amazonaws/services/dynamodb/model/Key;)Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;
    .locals 6
    .param p1, "keys"    # [Lcom/amazonaws/services/dynamodb/model/Key;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->setKeys(Ljava/util/Collection;)V

    .line 88
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/dynamodb/model/Key;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 89
    .local v3, "value":Lcom/amazonaws/services/dynamodb/model/Key;
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v3    # "value":Lcom/amazonaws/services/dynamodb/model/Key;
    :cond_1
    return-object p0
.end method
