.class public Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;
.super Ljava/lang/Object;
.source "DescribeAccountAttributesResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private accountAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/AccountAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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

    .line 122
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 130
    :cond_0
    :goto_0
    return v3

    .line 123
    :cond_1
    if-eqz p1, :cond_0

    .line 125
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 126
    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;

    .line 128
    .local v0, "other":Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->getAccountAttributes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->getAccountAttributes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->getAccountAttributes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->getAccountAttributes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->getAccountAttributes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 130
    goto :goto_0

    :cond_3
    move v1, v3

    .line 128
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getAccountAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/AccountAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->accountAttributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->accountAttributes:Ljava/util/List;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->accountAttributes:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 113
    const/16 v1, 0x1f

    .line 114
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 116
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->getAccountAttributes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 117
    return v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->getAccountAttributes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setAccountAttributes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/AccountAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "accountAttributes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/AccountAttribute;>;"
    if-nez p1, :cond_0

    .line 45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->accountAttributes:Ljava/util/List;

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v0, "accountAttributesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/AccountAttribute;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->accountAttributes:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->getAccountAttributes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountAttributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->getAccountAttributes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withAccountAttributes(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/AccountAttribute;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "accountAttributes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/AccountAttribute;>;"
    if-nez p1, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->accountAttributes:Ljava/util/List;

    .line 91
    :goto_0
    return-object p0

    .line 86
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v0, "accountAttributesCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/AccountAttribute;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->accountAttributes:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withAccountAttributes([Lcom/amazonaws/services/ec2/model/AccountAttribute;)Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;
    .locals 6
    .param p1, "accountAttributes"    # [Lcom/amazonaws/services/ec2/model/AccountAttribute;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->getAccountAttributes()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->setAccountAttributes(Ljava/util/Collection;)V

    .line 66
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/AccountAttribute;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 67
    .local v3, "value":Lcom/amazonaws/services/ec2/model/AccountAttribute;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/DescribeAccountAttributesResult;->getAccountAttributes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/AccountAttribute;
    :cond_1
    return-object p0
.end method
