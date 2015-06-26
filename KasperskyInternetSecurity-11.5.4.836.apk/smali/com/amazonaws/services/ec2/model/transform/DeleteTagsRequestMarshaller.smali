.class public Lcom/amazonaws/services/ec2/model/transform/DeleteTagsRequestMarshaller;
.super Ljava/lang/Object;
.source "DeleteTagsRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller",
        "<",
        "Lcom/amazonaws/Request",
        "<",
        "Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;)Lcom/amazonaws/Request;
    .locals 11
    .param p1, "deleteTagsRequest"    # Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v9, Lcom/amazonaws/AmazonClientException;

    const-string v10, "Invalid argument passed to marshall(...)"

    invoke-direct {v9, v10}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 39
    :cond_0
    new-instance v1, Lcom/amazonaws/DefaultRequest;

    const-string v9, "AmazonEC2"

    invoke-direct {v1, p1, v9}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;>;"
    const-string v9, "Action"

    const-string v10, "DeleteTags"

    invoke-interface {v1, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v9, "Version"

    const-string v10, "2013-02-01"

    invoke-interface {v1, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;->getResources()Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, "resourcesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 47
    .local v3, "resourcesListIndex":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48
    .local v4, "resourcesListValue":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 49
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ResourceId."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    .end local v4    # "resourcesListValue":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;->getTags()Ljava/util/List;

    move-result-object v6

    .line 56
    .local v6, "tagsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/ec2/model/Tag;>;"
    const/4 v7, 0x1

    .line 58
    .local v7, "tagsListIndex":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazonaws/services/ec2/model/Tag;

    .line 59
    .local v8, "tagsListValue":Lcom/amazonaws/services/ec2/model/Tag;
    move-object v5, v8

    .line 60
    .local v5, "tagMember":Lcom/amazonaws/services/ec2/model/Tag;
    if-eqz v5, :cond_4

    .line 61
    invoke-virtual {v5}, Lcom/amazonaws/services/ec2/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 62
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tag."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".Key"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/amazonaws/services/ec2/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_3
    invoke-virtual {v5}, Lcom/amazonaws/services/ec2/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tag."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".Value"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/amazonaws/services/ec2/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 70
    goto :goto_1

    .line 73
    .end local v5    # "tagMember":Lcom/amazonaws/services/ec2/model/Tag;
    .end local v8    # "tagsListValue":Lcom/amazonaws/services/ec2/model/Tag;
    :cond_5
    return-object v1
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/DeleteTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/DeleteTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
