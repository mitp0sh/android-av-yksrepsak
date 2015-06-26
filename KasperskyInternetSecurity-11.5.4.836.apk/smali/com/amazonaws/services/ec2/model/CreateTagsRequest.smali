.class public Lcom/amazonaws/services/ec2/model/CreateTagsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateTagsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->resources:Ljava/util/List;

    .line 60
    iput-object p2, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->tags:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 249
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 259
    :cond_0
    :goto_0
    return v3

    .line 250
    :cond_1
    if-eqz p1, :cond_0

    .line 252
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 253
    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;

    .line 255
    .local v0, "other":Lcom/amazonaws/services/ec2/model/CreateTagsRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getResources()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getResources()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getResources()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getResources()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getTags()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move v3, v2

    .line 259
    goto :goto_0

    :cond_4
    move v1, v3

    .line 255
    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 257
    goto :goto_3

    :cond_7
    move v4, v3

    goto :goto_4
.end method

.method public getResources()Ljava/util/List;
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
    .line 74
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->resources:Ljava/util/List;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->resources:Ljava/util/List;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->resources:Ljava/util/List;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->tags:Ljava/util/List;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->tags:Ljava/util/List;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->tags:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 239
    const/16 v1, 0x1f

    .line 240
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 242
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getResources()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 243
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_1
    add-int v0, v2, v3

    .line 244
    return v0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public setResources(Ljava/util/Collection;)V
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
    .line 88
    .local p1, "resources":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->resources:Ljava/util/List;

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v0, "resourcesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->resources:Ljava/util/List;

    goto :goto_0
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->tags:Ljava/util/List;

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getResources()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resources: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withResources(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/CreateTagsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/CreateTagsRequest;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "resources":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->resources:Ljava/util/List;

    .line 139
    :goto_0
    return-object p0

    .line 134
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v0, "resourcesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->resources:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withResources([Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreateTagsRequest;
    .locals 6
    .param p1, "resources"    # [Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getResources()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->setResources(Ljava/util/Collection;)V

    .line 112
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

    .line 113
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getResources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/ec2/model/CreateTagsRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/services/ec2/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/ec2/model/CreateTagsRequest;"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/amazonaws/services/ec2/model/Tag;>;"
    if-nez p1, :cond_0

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->tags:Ljava/util/List;

    .line 216
    :goto_0
    return-object p0

    .line 211
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .local v0, "tagsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->tags:Ljava/util/List;

    goto :goto_0
.end method

.method public varargs withTags([Lcom/amazonaws/services/ec2/model/Tag;)Lcom/amazonaws/services/ec2/model/CreateTagsRequest;
    .locals 6
    .param p1, "tags"    # [Lcom/amazonaws/services/ec2/model/Tag;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getTags()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->setTags(Ljava/util/Collection;)V

    .line 189
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/services/ec2/model/Tag;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 190
    .local v3, "value":Lcom/amazonaws/services/ec2/model/Tag;
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateTagsRequest;->getTags()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v3    # "value":Lcom/amazonaws/services/ec2/model/Tag;
    :cond_1
    return-object p0
.end method
