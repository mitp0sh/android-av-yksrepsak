.class public Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;
.super Ljava/lang/Object;
.source "PolicyDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private policyAttributeDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private policyName:Ljava/lang/String;

.field private policyTypeName:Ljava/lang/String;


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

    .line 209
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 221
    :cond_0
    :goto_0
    return v3

    .line 210
    :cond_1
    if-eqz p1, :cond_0

    .line 212
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 213
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;

    .line 215
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyAttributeDescriptions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyAttributeDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyAttributeDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyAttributeDescriptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyAttributeDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 221
    goto :goto_0

    :cond_5
    move v1, v3

    .line 215
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 217
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 219
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getPolicyAttributeDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->policyAttributeDescriptions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->policyAttributeDescriptions:Ljava/util/List;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->policyAttributeDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->policyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->policyTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 198
    const/16 v1, 0x1f

    .line 199
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 201
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 202
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 203
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyAttributeDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 204
    return v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyAttributeDescriptions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setPolicyAttributeDescriptions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "policyAttributeDescriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;>;"
    if-nez p1, :cond_0

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->policyAttributeDescriptions:Ljava/util/List;

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
    .local v0, "policyAttributeDescriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->policyAttributeDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public setPolicyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->policyName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setPolicyTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyTypeName"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->policyTypeName:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyTypeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyAttributeDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyAttributeDescriptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyAttributeDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withPolicyAttributeDescriptions(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "policyAttributeDescriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;>;"
    if-nez p1, :cond_0

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->policyAttributeDescriptions:Ljava/util/List;

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
    .local v0, "policyAttributeDescriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->policyAttributeDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withPolicyAttributeDescriptions([Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;)Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;
    .locals 6
    .param p1, "policyAttributeDescriptions"    # [Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyAttributeDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->setPolicyAttributeDescriptions(Ljava/util/Collection;)V

    .line 149
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 150
    .local v3, "value":Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->getPolicyAttributeDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v3    # "value":Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeDescription;
    :cond_1
    return-object p0
.end method

.method public withPolicyName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;
    .locals 0
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->policyName:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public withPolicyTypeName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;
    .locals 0
    .param p1, "policyTypeName"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyDescription;->policyTypeName:Ljava/lang/String;

    .line 104
    return-object p0
.end method
