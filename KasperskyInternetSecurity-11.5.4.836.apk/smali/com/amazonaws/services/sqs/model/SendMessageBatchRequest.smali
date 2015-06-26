.class public Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SendMessageBatchRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;",
            ">;"
        }
    .end annotation
.end field

.field private queueUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "queueUrl"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->queueUrl:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "queueUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->queueUrl:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->entries:Ljava/util/List;

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 207
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 217
    :cond_0
    :goto_0
    return v3

    .line 208
    :cond_1
    if-eqz p1, :cond_0

    .line 210
    instance-of v1, p1, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 211
    check-cast v0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;

    .line 213
    .local v0, "other":Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getEntries()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getEntries()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getEntries()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 217
    goto :goto_0

    :cond_4
    move v1, v3

    .line 213
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 215
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->entries:Ljava/util/List;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->entries:Ljava/util/List;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getQueueUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->queueUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 197
    const/16 v1, 0x1f

    .line 198
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 200
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 201
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getEntries()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 202
    return v0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getEntries()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setEntries(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;>;"
    if-nez p1, :cond_0

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->entries:Ljava/util/List;

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .local v0, "entriesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->entries:Ljava/util/List;

    goto :goto_0
.end method

.method public setQueueUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "queueUrl"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->queueUrl:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QueueUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getQueueUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getEntries()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withEntries(Ljava/util/Collection;)Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;",
            ">;)",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;>;"
    if-nez p1, :cond_0

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->entries:Ljava/util/List;

    .line 174
    :goto_0
    return-object p0

    .line 169
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .local v0, "entriesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->entries:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withEntries([Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;)Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;
    .locals 6
    .param p1, "entries"    # [Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getEntries()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->setEntries(Ljava/util/Collection;)V

    .line 149
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 150
    .local v3, "value":Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v3    # "value":Lcom/amazonaws/services/sqs/model/SendMessageBatchRequestEntry;
    :cond_1
    return-object p0
.end method

.method public withQueueUrl(Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;
    .locals 0
    .param p1, "queueUrl"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchRequest;->queueUrl:Ljava/lang/String;

    .line 104
    return-object p0
.end method
