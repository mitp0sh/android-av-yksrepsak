.class public Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;
.super Ljava/lang/Object;
.source "DeleteMessageBatchResult.java"

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
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResultEntry;",
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

    .line 201
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 211
    :cond_0
    :goto_0
    return v3

    .line 202
    :cond_1
    if-eqz p1, :cond_0

    .line 204
    instance-of v1, p1, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 205
    check-cast v0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;

    .line 207
    .local v0, "other":Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 211
    goto :goto_0

    :cond_4
    move v1, v3

    .line 207
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 209
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
    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->failed:Ljava/util/List;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->failed:Ljava/util/List;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->failed:Ljava/util/List;

    return-object v0
.end method

.method public getSuccessful()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResultEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->successful:Ljava/util/List;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->successful:Ljava/util/List;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->successful:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 191
    const/16 v1, 0x1f

    .line 192
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 194
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 195
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 196
    return v0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getFailed()Ljava/util/List;

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
    .line 121
    .local p1, "failed":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;>;"
    if-nez p1, :cond_0

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->failed:Ljava/util/List;

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v0, "failedCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->failed:Ljava/util/List;

    goto :goto_0
.end method

.method public setSuccessful(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResultEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "successful":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResultEntry;>;"
    if-nez p1, :cond_0

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->successful:Ljava/util/List;

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .local v0, "successfulCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResultEntry;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->successful:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withFailed(Ljava/util/Collection;)Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;",
            ">;)",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "failed":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;>;"
    if-nez p1, :cond_0

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->failed:Ljava/util/List;

    .line 168
    :goto_0
    return-object p0

    .line 163
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .local v0, "failedCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->failed:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withFailed([Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;)Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;
    .locals 6
    .param p1, "failed"    # [Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->setFailed(Ljava/util/Collection;)V

    .line 143
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

    .line 144
    .local v3, "value":Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getFailed()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v3    # "value":Lcom/amazonaws/services/sqs/model/BatchResultErrorEntry;
    :cond_1
    return-object p0
.end method

.method public withSuccessful(Ljava/util/Collection;)Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResultEntry;",
            ">;)",
            "Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "successful":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResultEntry;>;"
    if-nez p1, :cond_0

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->successful:Ljava/util/List;

    .line 99
    :goto_0
    return-object p0

    .line 94
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v0, "successfulCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResultEntry;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    iput-object v0, p0, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->successful:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withSuccessful([Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResultEntry;)Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;
    .locals 6
    .param p1, "successful"    # [Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResultEntry;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->setSuccessful(Ljava/util/Collection;)V

    .line 74
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResultEntry;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 75
    .local v3, "value":Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResultEntry;
    invoke-virtual {p0}, Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResult;->getSuccessful()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v3    # "value":Lcom/amazonaws/services/sqs/model/DeleteMessageBatchResultEntry;
    :cond_1
    return-object p0
.end method
