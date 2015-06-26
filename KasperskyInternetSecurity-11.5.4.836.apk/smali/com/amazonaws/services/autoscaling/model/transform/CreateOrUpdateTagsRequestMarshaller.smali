.class public Lcom/amazonaws/services/autoscaling/model/transform/CreateOrUpdateTagsRequestMarshaller;
.super Ljava/lang/Object;
.source "CreateOrUpdateTagsRequestMarshaller.java"

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
        "Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;",
        ">;",
        "Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;",
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
.method public marshall(Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;)Lcom/amazonaws/Request;
    .locals 8
    .param p1, "createOrUpdateTagsRequest"    # Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    const-string v7, "Invalid argument passed to marshall(...)"

    invoke-direct {v6, v7}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 39
    :cond_0
    new-instance v1, Lcom/amazonaws/DefaultRequest;

    const-string v6, "AmazonAutoScaling"

    invoke-direct {v1, p1, v6}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;>;"
    const-string v6, "Action"

    const-string v7, "CreateOrUpdateTags"

    invoke-interface {v1, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v6, "Version"

    const-string v7, "2011-01-01"

    invoke-interface {v1, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;->getTags()Ljava/util/List;

    move-result-object v3

    .line 45
    .local v3, "tagsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/autoscaling/model/Tag;>;"
    const/4 v4, 0x1

    .line 47
    .local v4, "tagsListIndex":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/autoscaling/model/Tag;

    .line 48
    .local v5, "tagsListValue":Lcom/amazonaws/services/autoscaling/model/Tag;
    move-object v2, v5

    .line 49
    .local v2, "tagMember":Lcom/amazonaws/services/autoscaling/model/Tag;
    if-eqz v2, :cond_5

    .line 50
    invoke-virtual {v2}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tags.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".ResourceId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_1
    invoke-virtual {v2}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tags.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".ResourceType"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/amazonaws/services/autoscaling/model/Tag;->getResourceType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_2
    invoke-virtual {v2}, Lcom/amazonaws/services/autoscaling/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tags.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/amazonaws/services/autoscaling/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    invoke-virtual {v2}, Lcom/amazonaws/services/autoscaling/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tags.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".Value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/amazonaws/services/autoscaling/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_4
    invoke-virtual {v2}, Lcom/amazonaws/services/autoscaling/model/Tag;->isPropagateAtLaunch()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tags.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".PropagateAtLaunch"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/amazonaws/services/autoscaling/model/Tag;->isPropagateAtLaunch()Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 68
    goto/16 :goto_0

    .line 71
    .end local v2    # "tagMember":Lcom/amazonaws/services/autoscaling/model/Tag;
    .end local v5    # "tagsListValue":Lcom/amazonaws/services/autoscaling/model/Tag;
    :cond_6
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
    check-cast p1, Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/CreateOrUpdateTagsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/CreateOrUpdateTagsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
