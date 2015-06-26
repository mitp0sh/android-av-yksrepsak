.class public Lcom/amazonaws/services/simpledb/model/transform/BatchPutAttributesRequestMarshaller;
.super Ljava/lang/Object;
.source "BatchPutAttributesRequestMarshaller.java"

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
        "Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;",
        ">;",
        "Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;",
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
.method public marshall(Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;)Lcom/amazonaws/Request;
    .locals 13
    .param p1, "batchPutAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v11, Lcom/amazonaws/AmazonClientException;

    const-string v12, "Invalid argument passed to marshall(...)"

    invoke-direct {v11, v12}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 39
    :cond_0
    new-instance v10, Lcom/amazonaws/DefaultRequest;

    const-string v11, "AmazonSimpleDB"

    invoke-direct {v10, p1, v11}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v10, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;>;"
    const-string v11, "Action"

    const-string v12, "BatchPutAttributes"

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v11, "Version"

    const-string v12, "2009-04-15"

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 44
    const-string v11, "DomainName"

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v5

    .line 48
    .local v5, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/ReplaceableItem;>;"
    const/4 v6, 0x1

    .line 50
    .local v6, "itemsListIndex":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazonaws/services/simpledb/model/ReplaceableItem;

    .line 51
    .local v7, "itemsListValue":Lcom/amazonaws/services/simpledb/model/ReplaceableItem;
    move-object v9, v7

    .line 52
    .local v9, "replaceableItemMember":Lcom/amazonaws/services/simpledb/model/ReplaceableItem;
    if-eqz v9, :cond_6

    .line 53
    invoke-virtual {v9}, Lcom/amazonaws/services/simpledb/model/ReplaceableItem;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 54
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Item."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".ItemName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/amazonaws/services/simpledb/model/ReplaceableItem;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2
    invoke-virtual {v9}, Lcom/amazonaws/services/simpledb/model/ReplaceableItem;->getAttributes()Ljava/util/List;

    move-result-object v0

    .line 58
    .local v0, "attributesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;>;"
    const/4 v1, 0x1

    .line 60
    .local v1, "attributesListIndex":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;

    .line 61
    .local v2, "attributesListValue":Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;
    move-object v8, v2

    .line 62
    .local v8, "replaceableAttributeMember":Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;
    if-eqz v8, :cond_5

    .line 63
    invoke-virtual {v8}, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 64
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Item."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Attribute."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_3
    invoke-virtual {v8}, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;->getValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 67
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Item."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Attribute."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Value"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_4
    invoke-virtual {v8}, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;->isReplace()Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 70
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Item."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Attribute."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Replace"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;->isReplace()Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 75
    goto/16 :goto_1

    .line 78
    .end local v0    # "attributesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;>;"
    .end local v1    # "attributesListIndex":I
    .end local v2    # "attributesListValue":Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "replaceableAttributeMember":Lcom/amazonaws/services/simpledb/model/ReplaceableAttribute;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 79
    goto/16 :goto_0

    .line 82
    .end local v7    # "itemsListValue":Lcom/amazonaws/services/simpledb/model/ReplaceableItem;
    .end local v9    # "replaceableItemMember":Lcom/amazonaws/services/simpledb/model/ReplaceableItem;
    :cond_7
    return-object v10
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
    check-cast p1, Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpledb/model/transform/BatchPutAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/BatchPutAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
