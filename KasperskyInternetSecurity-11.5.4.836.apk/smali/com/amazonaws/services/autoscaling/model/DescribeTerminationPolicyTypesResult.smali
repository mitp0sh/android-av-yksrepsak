.class public Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;
.super Ljava/lang/Object;
.source "DescribeTerminationPolicyTypesResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private terminationPolicyTypes:Ljava/util/List;
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

    .line 154
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 162
    :cond_0
    :goto_0
    return v3

    .line 155
    :cond_1
    if-eqz p1, :cond_0

    .line 157
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 158
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;

    .line 160
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->getTerminationPolicyTypes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->getTerminationPolicyTypes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->getTerminationPolicyTypes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->getTerminationPolicyTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->getTerminationPolicyTypes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 162
    goto :goto_0

    :cond_3
    move v1, v3

    .line 160
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getTerminationPolicyTypes()Ljava/util/List;
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
    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->terminationPolicyTypes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->terminationPolicyTypes:Ljava/util/List;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->terminationPolicyTypes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 145
    const/16 v1, 0x1f

    .line 146
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 148
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->getTerminationPolicyTypes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 149
    return v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->getTerminationPolicyTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setTerminationPolicyTypes(Ljava/util/Collection;)V
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
    .line 64
    .local p1, "terminationPolicyTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->terminationPolicyTypes:Ljava/util/List;

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v0, "terminationPolicyTypesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->terminationPolicyTypes:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->getTerminationPolicyTypes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TerminationPolicyTypes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->getTerminationPolicyTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withTerminationPolicyTypes(Ljava/util/Collection;)Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "terminationPolicyTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->terminationPolicyTypes:Ljava/util/List;

    .line 123
    :goto_0
    return-object p0

    .line 118
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v0, "terminationPolicyTypesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    iput-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->terminationPolicyTypes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTerminationPolicyTypes([Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;
    .locals 6
    .param p1, "terminationPolicyTypes"    # [Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->getTerminationPolicyTypes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->setTerminationPolicyTypes(Ljava/util/Collection;)V

    .line 92
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

    .line 93
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DescribeTerminationPolicyTypesResult;->getTerminationPolicyTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
