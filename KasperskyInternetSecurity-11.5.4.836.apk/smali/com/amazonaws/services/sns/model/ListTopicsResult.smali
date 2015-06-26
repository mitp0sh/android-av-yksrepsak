.class public Lcom/amazonaws/services/sns/model/ListTopicsResult;
.super Ljava/lang/Object;
.source "ListTopicsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private nextToken:Ljava/lang/String;

.field private topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/sns/model/Topic;",
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

    .line 173
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 183
    :cond_0
    :goto_0
    return v3

    .line 174
    :cond_1
    if-eqz p1, :cond_0

    .line 176
    instance-of v1, p1, Lcom/amazonaws/services/sns/model/ListTopicsResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 177
    check-cast v0, Lcom/amazonaws/services/sns/model/ListTopicsResult;

    .line 179
    .local v0, "other":Lcom/amazonaws/services/sns/model/ListTopicsResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 183
    goto :goto_0

    :cond_4
    move v1, v3

    .line 179
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 181
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/ListTopicsResult;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTopics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/sns/model/Topic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/ListTopicsResult;->topics:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/sns/model/ListTopicsResult;->topics:Ljava/util/List;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/sns/model/ListTopicsResult;->topics:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 163
    const/16 v1, 0x1f

    .line 164
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 166
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 167
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 168
    return v0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getNextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/ListTopicsResult;->nextToken:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setTopics(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/sns/model/Topic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "topics":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/sns/model/Topic;>;"
    if-nez p1, :cond_0

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sns/model/ListTopicsResult;->topics:Ljava/util/List;

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
    .local v0, "topicsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sns/model/Topic;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    iput-object v0, p0, Lcom/amazonaws/services/sns/model/ListTopicsResult;->topics:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Topics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/ListTopicsResult;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/amazonaws/services/sns/model/ListTopicsResult;->nextToken:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public withTopics(Ljava/util/Collection;)Lcom/amazonaws/services/sns/model/ListTopicsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/sns/model/Topic;",
            ">;)",
            "Lcom/amazonaws/services/sns/model/ListTopicsResult;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "topics":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/sns/model/Topic;>;"
    if-nez p1, :cond_0

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/sns/model/ListTopicsResult;->topics:Ljava/util/List;

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
    .local v0, "topicsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/sns/model/Topic;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    iput-object v0, p0, Lcom/amazonaws/services/sns/model/ListTopicsResult;->topics:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTopics([Lcom/amazonaws/services/sns/model/Topic;)Lcom/amazonaws/services/sns/model/ListTopicsResult;
    .locals 6
    .param p1, "topics"    # [Lcom/amazonaws/services/sns/model/Topic;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->setTopics(Ljava/util/Collection;)V

    .line 75
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/sns/model/Topic;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 76
    .local v3, "value":Lcom/amazonaws/services/sns/model/Topic;
    invoke-virtual {p0}, Lcom/amazonaws/services/sns/model/ListTopicsResult;->getTopics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v3    # "value":Lcom/amazonaws/services/sns/model/Topic;
    :cond_1
    return-object p0
.end method
