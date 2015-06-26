.class public Lcom/amazonaws/services/autoscaling/model/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private name:Ljava/lang/String;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
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

    .line 194
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 204
    :cond_0
    :goto_0
    return v3

    .line 195
    :cond_1
    if-eqz p1, :cond_0

    .line 197
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/Filter;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 198
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/Filter;

    .line 200
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/Filter;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getValues()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getValues()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 204
    goto :goto_0

    :cond_4
    move v1, v3

    .line 200
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 202
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Filter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
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
    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Filter;->values:Ljava/util/List;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Filter;->values:Ljava/util/List;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Filter;->values:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 184
    const/16 v1, 0x1f

    .line 185
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 187
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 188
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getValues()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 189
    return v0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Filter;->name:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setValues(Ljava/util/Collection;)V
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
    .line 114
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/Filter;->values:Ljava/util/List;

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v0, "valuesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Filter;->values:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Filter;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/Filter;->name:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public withValues(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/Filter;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/Filter;->values:Ljava/util/List;

    .line 161
    :goto_0
    return-object p0

    .line 156
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v0, "valuesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/Filter;->values:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withValues([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/Filter;
    .locals 6
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getValues()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/Filter;->setValues(Ljava/util/Collection;)V

    .line 136
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

    .line 137
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/Filter;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
