.class public Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "PutAttributesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private domainName:Ljava/lang/String;

.field private expected:Lcom/amazonaws/services/simpledb/model/UpdateCondition;

.field private itemName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;
    .param p2, "itemName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p3, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->domainName:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->itemName:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->attributes:Ljava/util/List;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/amazonaws/services/simpledb/model/UpdateCondition;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;
    .param p2, "itemName"    # Ljava/lang/String;
    .param p4, "expected"    # Lcom/amazonaws/services/simpledb/model/UpdateCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;",
            ">;",
            "Lcom/amazonaws/services/simpledb/model/UpdateCondition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    .local p3, "attributes":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->domainName:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->itemName:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->attributes:Ljava/util/List;

    .line 130
    iput-object p4, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->expected:Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    .line 131
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 358
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 372
    :cond_0
    :goto_0
    return v3

    .line 359
    :cond_1
    if-eqz p1, :cond_0

    .line 361
    instance-of v1, p1, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 362
    check-cast v0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;

    .line 364
    .local v0, "other":Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 365
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 367
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 369
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getExpected()Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getExpected()Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 371
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getExpected()Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getExpected()Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getExpected()Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 372
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 364
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 366
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 368
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 370
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->attributes:Ljava/util/List;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpected()Lcom/amazonaws/services/simpledb/model/UpdateCondition;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->expected:Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 346
    const/16 v1, 0x1f

    .line 347
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 349
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 350
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 351
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 352
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getExpected()Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 353
    return v0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 351
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 352
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getExpected()Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setAttributes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "attributes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;>;"
    if-nez p1, :cond_0

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->attributes:Ljava/util/List;

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .local v0, "attributesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    iput-object v0, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->attributes:Ljava/util/List;

    goto :goto_0
.end method

.method public setDomainName(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->domainName:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setExpected(Lcom/amazonaws/services/simpledb/model/UpdateCondition;)V
    .locals 0
    .param p1, "expected"    # Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->expected:Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    .line 300
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->itemName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomainName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getExpected()Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getExpected()Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributes(Ljava/util/Collection;)Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;",
            ">;)",
            "Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "attributes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;>;"
    if-nez p1, :cond_0

    .line 262
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->attributes:Ljava/util/List;

    .line 269
    :goto_0
    return-object p0

    .line 264
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    .local v0, "attributesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    iput-object v0, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->attributes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAttributes([Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;)Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;
    .locals 6
    .param p1, "attributes"    # [Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->setAttributes(Ljava/util/Collection;)V

    .line 244
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 245
    .local v3, "value":Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v3    # "value":Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;
    :cond_1
    return-object p0
.end method

.method public withDomainName(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->domainName:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public withExpected(Lcom/amazonaws/services/simpledb/model/UpdateCondition;)Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;
    .locals 0
    .param p1, "expected"    # Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->expected:Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    .line 320
    return-object p0
.end method

.method public withItemName(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;
    .locals 0
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/PutAttributesRequest;->itemName:Ljava/lang/String;

    .line 199
    return-object p0
.end method
