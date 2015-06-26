.class public Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateLoadBalancerListenersRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;"
        }
    .end annotation
.end field

.field private loadBalancerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
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
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/Listener;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->loadBalancerName:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->listeners:Ljava/util/List;

    .line 62
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 213
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 223
    :cond_0
    :goto_0
    return v3

    .line 214
    :cond_1
    if-eqz p1, :cond_0

    .line 216
    instance-of v1, p1, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 217
    check-cast v0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;

    .line 219
    .local v0, "other":Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getListeners()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getListeners()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getListeners()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getListeners()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getListeners()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 223
    goto :goto_0

    :cond_4
    move v1, v3

    .line 219
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 221
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->listeners:Ljava/util/List;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public getLoadBalancerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->loadBalancerName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 203
    const/16 v1, 0x1f

    .line 204
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 206
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 207
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getListeners()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 208
    return v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getListeners()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setListeners(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/Listener;>;"
    if-nez p1, :cond_0

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->listeners:Ljava/util/List;

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v0, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/Listener;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->listeners:Ljava/util/List;

    goto :goto_0
.end method

.method public setLoadBalancerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->loadBalancerName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadBalancerName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getLoadBalancerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getListeners()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withListeners(Ljava/util/Collection;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/elasticloadbalancing/model/Listener;",
            ">;)",
            "Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/elasticloadbalancing/model/Listener;>;"
    if-nez p1, :cond_0

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->listeners:Ljava/util/List;

    .line 180
    :goto_0
    return-object p0

    .line 175
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .local v0, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/elasticloadbalancing/model/Listener;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    iput-object v0, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->listeners:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withListeners([Lcom/amazonaws/services/elasticloadbalancing/model/Listener;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;
    .locals 6
    .param p1, "listeners"    # [Lcom/amazonaws/services/elasticloadbalancing/model/Listener;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getListeners()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->setListeners(Ljava/util/Collection;)V

    .line 153
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 154
    .local v3, "value":Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    invoke-virtual {p0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->getListeners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v3    # "value":Lcom/amazonaws/services/elasticloadbalancing/model/Listener;
    :cond_1
    return-object p0
.end method

.method public withLoadBalancerName(Ljava/lang/String;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;
    .locals 0
    .param p1, "loadBalancerName"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateLoadBalancerListenersRequest;->loadBalancerName:Ljava/lang/String;

    .line 102
    return-object p0
.end method
