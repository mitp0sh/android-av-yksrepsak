.class public Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "EnableAvailabilityZonesForLoadBalancerRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private availabilityZones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loadBalancerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "availabilityZones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 220
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 230
    :cond_0
    :goto_0
    return v3

    .line 221
    :cond_1
    if-eqz p1, :cond_0

    .line 223
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 224
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;

    .line 226
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 230
    goto :goto_0

    :cond_4
    move v1, v3

    .line 226
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 228
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getAvailabilityZones()Ljava/util/List;
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
    .line 122
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    return-object v0
.end method

.method public getLoadBalancerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 210
    const/16 v1, 0x1f

    .line 211
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 213
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 214
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 215
    return v0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setAvailabilityZones(Ljava/util/Collection;)V
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
    .line 136
    .local p1, "availabilityZones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v0, "availabilityZonesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public setLoadBalancerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvailabilityZones: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAvailabilityZones(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "availabilityZones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    .line 187
    :goto_0
    return-object p0

    .line 182
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v0, "availabilityZonesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->availabilityZones:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAvailabilityZones([Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;
    .locals 6
    .param p1, "availabilityZones"    # [Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->setAvailabilityZones(Ljava/util/Collection;)V

    .line 160
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

    .line 161
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->getAvailabilityZones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withLoadBalancerName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/EnableAvailabilityZonesForLoadBalancerRequest;->loadBalancerName:Ljava/lang/String;

    .line 109
    return-object p0
.end method
