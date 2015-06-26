.class public Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;
.super Ljava/lang/Object;
.source "PolicyTypeDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private policyAttributeTypeDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeTypeDescription;",
            ">;"
        }
    .end annotation
.end field

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

    .line 218
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 230
    :cond_0
    :goto_0
    return v3

    .line 219
    :cond_1
    if-eqz p1, :cond_0

    .line 221
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;

    .line 224
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyAttributeTypeDescriptions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyAttributeTypeDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyAttributeTypeDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyAttributeTypeDescriptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyAttributeTypeDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 230
    goto :goto_0

    :cond_5
    move v1, v3

    .line 224
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 226
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 228
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyAttributeTypeDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeTypeDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->policyAttributeTypeDescriptions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->policyAttributeTypeDescriptions:Ljava/util/List;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->policyAttributeTypeDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public getPolicyTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->policyTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 207
    const/16 v1, 0x1f

    .line 208
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 210
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 211
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 212
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyAttributeTypeDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 213
    return v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyAttributeTypeDescriptions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->description:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setPolicyAttributeTypeDescriptions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeTypeDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "policyAttributeTypeDescriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeTypeDescription;>;"
    if-nez p1, :cond_0

    .line 133
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->policyAttributeTypeDescriptions:Ljava/util/List;

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v0, "policyAttributeTypeDescriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeTypeDescription;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->policyAttributeTypeDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public setPolicyTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyTypeName"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->policyTypeName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyTypeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyAttributeTypeDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyAttributeTypeDescriptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyAttributeTypeDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->description:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public withPolicyAttributeTypeDescriptions(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeTypeDescription;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "policyAttributeTypeDescriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeTypeDescription;>;"
    if-nez p1, :cond_0

    .line 176
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->policyAttributeTypeDescriptions:Ljava/util/List;

    .line 183
    :goto_0
    return-object p0

    .line 178
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    .local v0, "policyAttributeTypeDescriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeTypeDescription;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->policyAttributeTypeDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withPolicyAttributeTypeDescriptions([Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeTypeDescription;)Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;
    .locals 6
    .param p1, "policyAttributeTypeDescriptions"    # [Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeTypeDescription;

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyAttributeTypeDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->setPolicyAttributeTypeDescriptions(Ljava/util/Collection;)V

    .line 156
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeTypeDescription;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 157
    .local v3, "value":Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeTypeDescription;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->getPolicyAttributeTypeDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "value":Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttributeTypeDescription;
    :cond_1
    return-object p0
.end method

.method public withPolicyTypeName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;
    .locals 0
    .param p1, "policyTypeName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;->policyTypeName:Ljava/lang/String;

    .line 71
    return-object p0
.end method
