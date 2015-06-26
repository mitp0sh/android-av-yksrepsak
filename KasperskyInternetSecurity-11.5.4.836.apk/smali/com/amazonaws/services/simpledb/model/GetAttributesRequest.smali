.class public Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetAttributesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributeNames:Ljava/util/List;
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

.field private domainName:Ljava/lang/String;

.field private itemName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;
    .param p2, "itemName"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->domainName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->itemName:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 329
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 343
    :cond_0
    :goto_0
    return v3

    .line 330
    :cond_1
    if-eqz p1, :cond_0

    .line 332
    instance-of v1, p1, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 333
    check-cast v0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;

    .line 335
    .local v0, "other":Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 338
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 343
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 335
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 337
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 339
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 341
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getAttributeNames()Ljava/util/List;
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
    .line 158
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->attributeNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->attributeNames:Ljava/util/List;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->attributeNames:Ljava/util/List;

    return-object v0
.end method

.method public getConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 317
    const/16 v1, 0x1f

    .line 318
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 320
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 321
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 322
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 323
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 324
    return v0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 322
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 323
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public isConsistentRead()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->consistentRead:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAttributeNames(Ljava/util/Collection;)V
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
    .line 170
    .local p1, "attributeNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 171
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->attributeNames:Ljava/util/List;

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v0, "attributeNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    iput-object v0, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->attributeNames:Ljava/util/List;

    goto :goto_0
.end method

.method public setConsistentRead(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "consistentRead"    # Ljava/lang/Boolean;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->consistentRead:Ljava/lang/Boolean;

    .line 252
    return-void
.end method

.method public setDomainName(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->domainName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->itemName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomainName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getItemName()Ljava/lang/String;

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
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConsistentRead: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributeNames(Ljava/util/Collection;)Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "attributeNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->attributeNames:Ljava/util/List;

    .line 217
    :goto_0
    return-object p0

    .line 212
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .local v0, "attributeNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    iput-object v0, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->attributeNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAttributeNames([Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;
    .locals 6
    .param p1, "attributeNames"    # [Ljava/lang/String;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->setAttributeNames(Ljava/util/Collection;)V

    .line 192
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

    .line 193
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withConsistentRead(Ljava/lang/Boolean;)Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;
    .locals 0
    .param p1, "consistentRead"    # Ljava/lang/Boolean;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->consistentRead:Ljava/lang/Boolean;

    .line 274
    return-object p0
.end method

.method public withDomainName(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->domainName:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public withItemName(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;
    .locals 0
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/GetAttributesRequest;->itemName:Ljava/lang/String;

    .line 147
    return-object p0
.end method
