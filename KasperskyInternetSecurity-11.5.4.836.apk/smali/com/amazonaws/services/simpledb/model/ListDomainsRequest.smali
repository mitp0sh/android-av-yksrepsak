.class public Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "ListDomainsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private maxNumberOfDomains:Ljava/lang/Integer;

.field private nextToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
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

    .line 160
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 170
    :cond_0
    :goto_0
    return v3

    .line 161
    :cond_1
    if-eqz p1, :cond_0

    .line 163
    instance-of v1, p1, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 164
    check-cast v0, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;

    .line 166
    .local v0, "other":Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getMaxNumberOfDomains()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getMaxNumberOfDomains()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getMaxNumberOfDomains()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getMaxNumberOfDomains()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getMaxNumberOfDomains()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 170
    goto :goto_0

    :cond_4
    move v1, v3

    .line 166
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 168
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getMaxNumberOfDomains()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->maxNumberOfDomains:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNextToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->nextToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 150
    const/16 v1, 0x1f

    .line 151
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 153
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getMaxNumberOfDomains()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 154
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 155
    return v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getMaxNumberOfDomains()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setMaxNumberOfDomains(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxNumberOfDomains"    # Ljava/lang/Integer;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->maxNumberOfDomains:Ljava/lang/Integer;

    .line 70
    return-void
.end method

.method public setNextToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->nextToken:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getMaxNumberOfDomains()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxNumberOfDomains: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getMaxNumberOfDomains()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NextToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withMaxNumberOfDomains(Ljava/lang/Integer;)Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;
    .locals 0
    .param p1, "maxNumberOfDomains"    # Ljava/lang/Integer;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->maxNumberOfDomains:Ljava/lang/Integer;

    .line 86
    return-object p0
.end method

.method public withNextToken(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;
    .locals 0
    .param p1, "nextToken"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/ListDomainsRequest;->nextToken:Ljava/lang/String;

    .line 126
    return-object p0
.end method
