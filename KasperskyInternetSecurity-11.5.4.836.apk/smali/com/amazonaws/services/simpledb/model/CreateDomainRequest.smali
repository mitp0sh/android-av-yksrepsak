.class public Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateDomainRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private domainName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;->domainName:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 150
    :cond_0
    :goto_0
    return v3

    .line 143
    :cond_1
    if-eqz p1, :cond_0

    .line 145
    instance-of v1, p1, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 146
    check-cast v0, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;

    .line 148
    .local v0, "other":Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;->getDomainName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;->getDomainName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 150
    goto :goto_0

    :cond_3
    move v1, v3

    .line 148
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 133
    const/16 v1, 0x1f

    .line 134
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 136
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;->getDomainName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 137
    return v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;->getDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setDomainName(Ljava/lang/String;)V
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;->domainName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;->getDomainName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomainName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;->getDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDomainName(Ljava/lang/String;)Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;
    .locals 0
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/simpledb/model/CreateDomainRequest;->domainName:Ljava/lang/String;

    .line 110
    return-object p0
.end method
