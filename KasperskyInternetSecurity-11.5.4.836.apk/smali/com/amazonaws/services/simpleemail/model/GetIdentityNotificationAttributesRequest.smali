.class public Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "GetIdentityNotificationAttributesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private identities:Ljava/util/List;
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

    .line 133
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 141
    :cond_0
    :goto_0
    return v3

    .line 134
    :cond_1
    if-eqz p1, :cond_0

    .line 136
    instance-of v1, p1, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 137
    check-cast v0, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;

    .line 139
    .local v0, "other":Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->getIdentities()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->getIdentities()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->getIdentities()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->getIdentities()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->getIdentities()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 141
    goto :goto_0

    :cond_3
    move v1, v3

    .line 139
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getIdentities()Ljava/util/List;
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
    .line 43
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->identities:Ljava/util/List;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->identities:Ljava/util/List;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->identities:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 124
    const/16 v1, 0x1f

    .line 125
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 127
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->getIdentities()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 128
    return v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->getIdentities()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setIdentities(Ljava/util/Collection;)V
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
    .line 55
    .local p1, "identities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->identities:Ljava/util/List;

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v0, "identitiesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->identities:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->getIdentities()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->getIdentities()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withIdentities(Ljava/util/Collection;)Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "identities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->identities:Ljava/util/List;

    .line 102
    :goto_0
    return-object p0

    .line 97
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v0, "identitiesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->identities:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withIdentities([Ljava/lang/String;)Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;
    .locals 6
    .param p1, "identities"    # [Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->getIdentities()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->setIdentities(Ljava/util/Collection;)V

    .line 77
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

    .line 78
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityNotificationAttributesRequest;->getIdentities()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method
