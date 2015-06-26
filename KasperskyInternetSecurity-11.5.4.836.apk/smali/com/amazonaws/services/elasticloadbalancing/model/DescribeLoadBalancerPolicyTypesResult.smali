.class public Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;
.super Ljava/lang/Object;
.source "DescribeLoadBalancerPolicyTypesResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private policyTypeDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;",
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

    .line 145
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 153
    :cond_0
    :goto_0
    return v3

    .line 146
    :cond_1
    if-eqz p1, :cond_0

    .line 148
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 149
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;

    .line 151
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->getPolicyTypeDescriptions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->getPolicyTypeDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->getPolicyTypeDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->getPolicyTypeDescriptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->getPolicyTypeDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 153
    goto :goto_0

    :cond_3
    move v1, v3

    .line 151
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getPolicyTypeDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->policyTypeDescriptions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->policyTypeDescriptions:Ljava/util/List;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->policyTypeDescriptions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 136
    const/16 v1, 0x1f

    .line 137
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 139
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->getPolicyTypeDescriptions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 140
    return v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->getPolicyTypeDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setPolicyTypeDescriptions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "policyTypeDescriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;>;"
    if-nez p1, :cond_0

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->policyTypeDescriptions:Ljava/util/List;

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .local v0, "policyTypeDescriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->policyTypeDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->getPolicyTypeDescriptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyTypeDescriptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->getPolicyTypeDescriptions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withPolicyTypeDescriptions(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "policyTypeDescriptions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;>;"
    if-nez p1, :cond_0

    .line 107
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->policyTypeDescriptions:Ljava/util/List;

    .line 114
    :goto_0
    return-object p0

    .line 109
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v0, "policyTypeDescriptionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->policyTypeDescriptions:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withPolicyTypeDescriptions([Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;)Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;
    .locals 6
    .param p1, "policyTypeDescriptions"    # [Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->getPolicyTypeDescriptions()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->setPolicyTypeDescriptions(Ljava/util/Collection;)V

    .line 85
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 86
    .local v3, "value":Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DescribeLoadBalancerPolicyTypesResult;->getPolicyTypeDescriptions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v3    # "value":Lcom/amazonaws/services/elasticloadbalancing/model/PolicyTypeDescription;
    :cond_1
    return-object p0
.end method
