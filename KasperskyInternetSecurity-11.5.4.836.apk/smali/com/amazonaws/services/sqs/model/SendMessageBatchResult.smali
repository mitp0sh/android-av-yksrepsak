.class public Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
.super Ljava/lang/Object;
.source "SendMessageBatchResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private failed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;",
            ">;"
        }
    .end annotation
.end field

.field private successful:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;",
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

    .line 210
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 220
    :cond_0
    :goto_0
    return v3

    .line 211
    :cond_1
    if-eqz p1, :cond_0

    .line 213
    instance-of v1, p1, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;

    .line 216
    .local v0, "other":Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 220
    goto :goto_0

    :cond_4
    move v1, v3

    .line 216
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 218
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getFailed()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->failed:Ljava/util/List;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->failed:Ljava/util/List;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->failed:Ljava/util/List;

    return-object v0
.end method

.method public getSuccessful()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->successful:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->successful:Ljava/util/List;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->successful:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 200
    const/16 v1, 0x1f

    .line 201
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 203
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 204
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 205
    return v0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setFailed(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "failed":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;>;"
    if-nez p1, :cond_0

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->failed:Ljava/util/List;

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v0, "failedCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->failed:Ljava/util/List;

    goto :goto_0
.end method

.method public setSuccessful(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "successful":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;>;"
    if-nez p1, :cond_0

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->successful:Ljava/util/List;

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
    .local v0, "successfulCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->successful:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withFailed(Ljava/util/Collection;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;",
            ">;)",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "failed":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;>;"
    if-nez p1, :cond_0

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->failed:Ljava/util/List;

    .line 177
    :goto_0
    return-object p0

    .line 172
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v0, "failedCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->failed:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withFailed([Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    .locals 6
    .param p1, "failed"    # [Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->setFailed(Ljava/util/Collection;)V

    .line 150
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 151
    .local v3, "value":Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v3    # "value":Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;
    :cond_1
    return-object p0
.end method

.method public withSuccessful(Ljava/util/Collection;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;",
            ">;)",
            "Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "successful":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;>;"
    if-nez p1, :cond_0

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->successful:Ljava/util/List;

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
    .local v0, "successfulCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->successful:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSuccessful([Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;)Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;
    .locals 6
    .param p1, "successful"    # [Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->setSuccessful(Ljava/util/Collection;)V

    .line 75
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 76
    .local v3, "value":Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/SendMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v3    # "value":Lcom/amazonaws/services/sqs/model/SendMessageBatchResultEntry;
    :cond_1
    return-object p0
.end method
