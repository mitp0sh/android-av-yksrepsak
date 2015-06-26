.class public Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;
.super Ljava/lang/Object;
.source "GetIdentityDkimAttributesResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dkimAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;",
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

    .line 96
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 104
    :cond_0
    :goto_0
    return v3

    .line 97
    :cond_1
    if-eqz p1, :cond_0

    .line 99
    instance-of v1, p1, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 100
    check-cast v0, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;

    .line 102
    .local v0, "other":Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->getDkimAttributes()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->getDkimAttributes()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->getDkimAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->getDkimAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->getDkimAttributes()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 104
    goto :goto_0

    :cond_3
    move v1, v3

    .line 102
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getDkimAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->dkimAttributes:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->dkimAttributes:Ljava/util/Map;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->dkimAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 87
    const/16 v1, 0x1f

    .line 88
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 90
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->getDkimAttributes()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 91
    return v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->getDkimAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setDkimAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "dkimAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;>;"
    iput-object p1, p0, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->dkimAttributes:Ljava/util/Map;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->getDkimAttributes()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DkimAttributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->getDkimAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDkimAttributes(Ljava/util/Map;)Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;",
            ">;)",
            "Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "dkimAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;>;"
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->setDkimAttributes(Ljava/util/Map;)V

    .line 65
    return-object p0
.end method
