.class public Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SetLoadBalancerPoliciesForBackendServerRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private instancePort:Ljava/lang/Integer;

.field private loadBalancerName:Ljava/lang/String;

.field private policyNames:Ljava/util/List;
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
    .line 29
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

    .line 231
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 243
    :cond_0
    :goto_0
    return v3

    .line 232
    :cond_1
    if-eqz p1, :cond_0

    .line 234
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 235
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;

    .line 237
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getInstancePort()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getInstancePort()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_8

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getInstancePort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getInstancePort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getInstancePort()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getPolicyNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getPolicyNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_a

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getPolicyNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getPolicyNames()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getPolicyNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    move v3, v2

    .line 243
    goto :goto_0

    :cond_5
    move v1, v3

    .line 237
    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v1, v3

    .line 239
    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v3

    .line 241
    goto :goto_5

    :cond_a
    move v4, v3

    goto :goto_6
.end method

.method public getInstancePort()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->instancePort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLoadBalancerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->loadBalancerName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyNames()Ljava/util/List;
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
    .line 131
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->policyNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->policyNames:Ljava/util/List;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->policyNames:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 220
    const/16 v1, 0x1f

    .line 221
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 223
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 224
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getInstancePort()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 225
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getPolicyNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    :goto_2
    add-int v0, v2, v3

    .line 226
    return v0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getInstancePort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getPolicyNames()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public setInstancePort(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "instancePort"    # Ljava/lang/Integer;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->instancePort:Ljava/lang/Integer;

    .line 104
    return-void
.end method

.method public setLoadBalancerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->loadBalancerName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPolicyNames(Ljava/util/Collection;)V
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
    .line 145
    .local p1, "policyNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->policyNames:Ljava/util/List;

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v0, "policyNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->policyNames:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getInstancePort()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstancePort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getInstancePort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getPolicyNames()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyNames: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getPolicyNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withInstancePort(Ljava/lang/Integer;)Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;
    .locals 0
    .param p1, "instancePort"    # Ljava/lang/Integer;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->instancePort:Ljava/lang/Integer;

    .line 118
    return-object p0
.end method

.method public withLoadBalancerName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->loadBalancerName:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public withPolicyNames(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "policyNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->policyNames:Ljava/util/List;

    .line 196
    :goto_0
    return-object p0

    .line 191
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .local v0, "policyNamesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->policyNames:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withPolicyNames([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;
    .locals 6
    .param p1, "policyNames"    # [Ljava/lang/String;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getPolicyNames()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->setPolicyNames(Ljava/util/Collection;)V

    .line 169
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

    .line 170
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/SetLoadBalancerPoliciesForBackendServerRequest;->getPolicyNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
