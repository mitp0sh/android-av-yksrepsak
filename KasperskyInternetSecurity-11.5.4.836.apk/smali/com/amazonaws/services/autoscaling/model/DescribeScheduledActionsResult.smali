.class public Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;
.super Ljava/lang/Object;
.source "DescribeScheduledActionsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private nextToken:Ljava/lang/String;

.field private scheduledUpdateGroupActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
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

    .line 183
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 193
    :cond_0
    :goto_0
    return v3

    .line 184
    :cond_1
    if-eqz p1, :cond_0

    .line 186
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 187
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;

    .line 189
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getScheduledUpdateGroupActions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getScheduledUpdateGroupActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getScheduledUpdateGroupActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getScheduledUpdateGroupActions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getScheduledUpdateGroupActions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 193
    goto :goto_0

    :cond_4
    move v1, v3

    .line 189
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 191
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduledUpdateGroupActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->scheduledUpdateGroupActions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->scheduledUpdateGroupActions:Ljava/util/List;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->scheduledUpdateGroupActions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 173
    const/16 v1, 0x1f

    .line 174
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 176
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getScheduledUpdateGroupActions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 177
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 178
    return v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getScheduledUpdateGroupActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getNextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->nextToken:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setScheduledUpdateGroupActions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "scheduledUpdateGroupActions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;>;"
    if-nez p1, :cond_0

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->scheduledUpdateGroupActions:Ljava/util/List;

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v0, "scheduledUpdateGroupActionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->scheduledUpdateGroupActions:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getScheduledUpdateGroupActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScheduledUpdateGroupActions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getScheduledUpdateGroupActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->nextToken:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public withScheduledUpdateGroupActions(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "scheduledUpdateGroupActions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;>;"
    if-nez p1, :cond_0

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->scheduledUpdateGroupActions:Ljava/util/List;

    .line 107
    :goto_0
    return-object p0

    .line 102
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v0, "scheduledUpdateGroupActionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->scheduledUpdateGroupActions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withScheduledUpdateGroupActions([Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;)Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;
    .locals 6
    .param p1, "scheduledUpdateGroupActions"    # [Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getScheduledUpdateGroupActions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->setScheduledUpdateGroupActions(Ljava/util/Collection;)V

    .line 82
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 83
    .local v3, "value":Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsResult;->getScheduledUpdateGroupActions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v3    # "value":Lcom/amazonaws/services/autoscaling/model/ScheduledUpdateGroupAction;
    :cond_1
    return-object p0
.end method
