.class public Lcom/amazonaws/services/simpledb/model/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alternateNameEncoding:Ljava/lang/String;

.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/simpledb/model/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/simpledb/model/Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/Attribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Item;->name:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/amazonaws/services/simpledb/model/Item;->attributes:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 229
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 241
    :cond_0
    :goto_0
    return v3

    .line 230
    :cond_1
    if-eqz p1, :cond_0

    .line 232
    instance-of v1, p1, Lcom/amazonaws/services/simpledb/model/Item;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 233
    check-cast v0, Lcom/amazonaws/services/simpledb/model/Item;

    .line 235
    .local v0, "other":Lcom/amazonaws/services/simpledb/model/Item;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Item;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Item;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Item;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Item;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Item;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Item;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Item;->getAttributes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAttributes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Item;->getAttributes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Item;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAttributes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 241
    goto :goto_0

    :cond_5
    move v1, v3

    .line 235
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 237
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 239
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getAlternateNameEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/Item;->alternateNameEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/simpledb/model/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/Item;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/simpledb/model/Item;->attributes:Ljava/util/List;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/Item;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 218
    const/16 v1, 0x1f

    .line 219
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 221
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 222
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 223
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAttributes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 224
    return v0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setAlternateNameEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "alternateNameEncoding"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Item;->alternateNameEncoding:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setAttributes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/simpledb/model/Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "attributes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/simpledb/model/Attribute;>;"
    if-nez p1, :cond_0

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpledb/model/Item;->attributes:Ljava/util/List;

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v0, "attributesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/Attribute;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    iput-object v0, p0, Lcom/amazonaws/services/simpledb/model/Item;->attributes:Ljava/util/List;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Item;->name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlternateNameEncoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAttributes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAttributes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAlternateNameEncoding(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/Item;
    .locals 0
    .param p1, "alternateNameEncoding"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Item;->alternateNameEncoding:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public withAttributes(Ljava/util/Collection;)Lcom/amazonaws/services/simpledb/model/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/simpledb/model/Attribute;",
            ">;)",
            "Lcom/amazonaws/services/simpledb/model/Item;"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "attributes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/simpledb/model/Attribute;>;"
    if-nez p1, :cond_0

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpledb/model/Item;->attributes:Ljava/util/List;

    .line 194
    :goto_0
    return-object p0

    .line 189
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .local v0, "attributesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/Attribute;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    iput-object v0, p0, Lcom/amazonaws/services/simpledb/model/Item;->attributes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAttributes([Lcom/amazonaws/services/simpledb/model/Attribute;)Lcom/amazonaws/services/simpledb/model/Item;
    .locals 6
    .param p1, "attributes"    # [Lcom/amazonaws/services/simpledb/model/Attribute;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAttributes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/simpledb/model/Item;->setAttributes(Ljava/util/Collection;)V

    .line 169
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/simpledb/model/Attribute;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 170
    .local v3, "value":Lcom/amazonaws/services/simpledb/model/Attribute;
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/Item;->getAttributes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v3    # "value":Lcom/amazonaws/services/simpledb/model/Attribute;
    :cond_1
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/Item;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/Item;->name:Ljava/lang/String;

    .line 90
    return-object p0
.end method
