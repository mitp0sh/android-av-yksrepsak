.class public Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetQueueAttributesRequest.java"

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

.field private queueUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "queueUrl"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->queueUrl:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 211
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 221
    :cond_0
    :goto_0
    return v3

    .line 212
    :cond_1
    if-eqz p1, :cond_0

    .line 214
    instance-of v1, p1, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 215
    check-cast v0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    .line 217
    .local v0, "other":Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 221
    goto :goto_0

    :cond_4
    move v1, v3

    .line 217
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 219
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
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
    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->attributeNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->attributeNames:Ljava/util/List;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->attributeNames:Ljava/util/List;

    return-object v0
.end method

.method public getQueueUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->queueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 201
    const/16 v1, 0x1f

    .line 202
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 204
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 205
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 206
    return v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
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
    .line 131
    .local p1, "attributeNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->attributeNames:Ljava/util/List;

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v0, "attributeNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->attributeNames:Ljava/util/List;

    goto :goto_0
.end method

.method public setQueueUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "queueUrl"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->queueUrl:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAttributeNames(Ljava/util/Collection;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "attributeNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 171
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->attributeNames:Ljava/util/List;

    .line 178
    :goto_0
    return-object p0

    .line 173
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v0, "attributeNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->attributeNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAttributeNames([Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;
    .locals 6
    .param p1, "attributeNames"    # [Ljava/lang/String;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->setAttributeNames(Ljava/util/Collection;)V

    .line 153
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

    .line 154
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->getAttributeNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withQueueUrl(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;
    .locals 0
    .param p1, "queueUrl"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->queueUrl:Ljava/lang/String;

    .line 108
    return-object p0
.end method
