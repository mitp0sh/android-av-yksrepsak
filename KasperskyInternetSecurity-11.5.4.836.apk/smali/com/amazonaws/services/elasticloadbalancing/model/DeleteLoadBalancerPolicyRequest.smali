.class public Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteLoadBalancerPolicyRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private loadBalancerName:Ljava/lang/String;

.field private policyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;
    .param p2, "policyName"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->loadBalancerName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->policyName:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 166
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 176
    :cond_0
    :goto_0
    return v3

    .line 167
    :cond_1
    if-eqz p1, :cond_0

    .line 169
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 170
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;

    .line 172
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 176
    goto :goto_0

    :cond_4
    move v1, v3

    .line 172
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 174
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getLoadBalancerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->loadBalancerName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->policyName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 156
    const/16 v1, 0x1f

    .line 157
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 159
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 160
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 161
    return v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setLoadBalancerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->loadBalancerName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setPolicyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->policyName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PolicyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withLoadBalancerName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->loadBalancerName:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public withPolicyName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;
    .locals 0
    .param p1, "policyName"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/DeleteLoadBalancerPolicyRequest;->policyName:Ljava/lang/String;

    .line 132
    return-object p0
.end method
