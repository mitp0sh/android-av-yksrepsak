.class public Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateLoadBalancerPolicyRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private loadBalancerName:Ljava/lang/String;

.field private policyAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttribute;",
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
    .line 28
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 283
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 297
    :cond_0
    :goto_0
    return v3

    .line 284
    :cond_1
    if-eqz p1, :cond_0

    .line 286
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 287
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;

    .line 289
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyAttributes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyAttributes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyAttributes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyAttributes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyAttributes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 297
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 289
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 291
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 293
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 295
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getLoadBalancerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->loadBalancerName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->policyAttributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->policyAttributes:Ljava/util/List;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->policyAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->policyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->policyTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 271
    const/16 v1, 0x1f

    .line 272
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 274
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 275
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 276
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 277
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyAttributes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 278
    return v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 276
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 277
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyAttributes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setLoadBalancerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->loadBalancerName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPolicyAttributes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "policyAttributes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttribute;>;"
    if-nez p1, :cond_0

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->policyAttributes:Ljava/util/List;

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v0, "policyAttributesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttribute;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->policyAttributes:Ljava/util/List;

    goto :goto_0
.end method

.method public setPolicyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->policyName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setPolicyTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyTypeName"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->policyTypeName:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyTypeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyAttributes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyAttributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyAttributes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withLoadBalancerName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->loadBalancerName:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public withPolicyAttributes(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttribute;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "policyAttributes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttribute;>;"
    if-nez p1, :cond_0

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->policyAttributes:Ljava/util/List;

    .line 246
    :goto_0
    return-object p0

    .line 241
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .local v0, "policyAttributesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttribute;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->policyAttributes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withPolicyAttributes([Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttribute;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;
    .locals 6
    .param p1, "policyAttributes"    # [Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttribute;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyAttributes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->setPolicyAttributes(Ljava/util/Collection;)V

    .line 221
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttribute;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 222
    .local v3, "value":Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttribute;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->getPolicyAttributes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v3    # "value":Lcom/amazonaws/services/elasticloadbalancing/model/PolicyAttribute;
    :cond_1
    return-object p0
.end method

.method public withPolicyName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;
    .locals 0
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->policyName:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public withPolicyTypeName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;
    .locals 0
    .param p1, "policyTypeName"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerPolicyRequest;->policyTypeName:Ljava/lang/String;

    .line 176
    return-object p0
.end method
