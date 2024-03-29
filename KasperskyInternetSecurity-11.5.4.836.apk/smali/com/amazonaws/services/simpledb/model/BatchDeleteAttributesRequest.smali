.class public Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "BatchDeleteAttributesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private domainName:Ljava/lang/String;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/simpledb/model/DeletableItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/simpledb/model/DeletableItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/DeletableItem;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->domainName:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->items:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 212
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 222
    :cond_0
    :goto_0
    return v3

    .line 213
    :cond_1
    if-eqz p1, :cond_0

    .line 215
    instance-of v1, p1, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 216
    check-cast v0, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;

    .line 218
    .local v0, "other":Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 222
    goto :goto_0

    :cond_4
    move v1, v3

    .line 218
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 220
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/simpledb/model/DeletableItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->items:Ljava/util/List;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->items:Ljava/util/List;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->items:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 202
    const/16 v1, 0x1f

    .line 203
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 205
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 206
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 207
    return v0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setDomainName(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->domainName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setItems(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/simpledb/model/DeletableItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/simpledb/model/DeletableItem;>;"
    if-nez p1, :cond_0

    .line 133
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->items:Ljava/util/List;

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v0, "itemsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/DeletableItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    iput-object v0, p0, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->items:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomainName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDomainName(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->domainName:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public withItems(Ljava/util/Collection;)Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/simpledb/model/DeletableItem;",
            ">;)",
            "Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/simpledb/model/DeletableItem;>;"
    if-nez p1, :cond_0

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->items:Ljava/util/List;

    .line 179
    :goto_0
    return-object p0

    .line 174
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v0, "itemsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/DeletableItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    iput-object v0, p0, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->items:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withItems([Lcom/amazonaws/services/simpledb/model/DeletableItem;)Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;
    .locals 6
    .param p1, "items"    # [Lcom/amazonaws/services/simpledb/model/DeletableItem;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->setItems(Ljava/util/Collection;)V

    .line 154
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/simpledb/model/DeletableItem;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 155
    .local v3, "value":Lcom/amazonaws/services/simpledb/model/DeletableItem;
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v3    # "value":Lcom/amazonaws/services/simpledb/model/DeletableItem;
    :cond_1
    return-object p0
.end method
