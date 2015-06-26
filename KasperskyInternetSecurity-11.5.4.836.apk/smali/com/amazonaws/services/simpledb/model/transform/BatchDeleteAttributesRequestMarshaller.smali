.class public Lcom/amazonaws/services/simpledb/model/transform/BatchDeleteAttributesRequestMarshaller;
.super Ljava/lang/Object;
.source "BatchDeleteAttributesRequestMarshaller.java"

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
        "Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;",
        ">;",
        "Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;",
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
.method public marshall(Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;)Lcom/amazonaws/Request;
    .locals 13
    .param p1, "batchDeleteAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;",
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
    .local v10, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;>;"
    const-string v11, "Action"

    const-string v12, "BatchDeleteAttributes"

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v11, "Version"

    const-string v12, "2009-04-15"

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 44
    const-string v11, "DomainName"

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;->getItems()Ljava/util/List;

    move-result-object v7

    .line 48
    .local v7, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/DeletableItem;>;"
    const/4 v8, 0x1

    .line 50
    .local v8, "itemsListIndex":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazonaws/services/simpledb/model/DeletableItem;

    .line 51
    .local v9, "itemsListValue":Lcom/amazonaws/services/simpledb/model/DeletableItem;
    move-object v4, v9

    .line 52
    .local v4, "deletableItemMember":Lcom/amazonaws/services/simpledb/model/DeletableItem;
    if-eqz v4, :cond_7

    .line 53
    invoke-virtual {v4}, Lcom/amazonaws/services/simpledb/model/DeletableItem;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 54
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Item."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".ItemName"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/amazonaws/services/simpledb/model/DeletableItem;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2
    invoke-virtual {v4}, Lcom/amazonaws/services/simpledb/model/DeletableItem;->getAttributes()Ljava/util/List;

    move-result-object v1

    .line 58
    .local v1, "attributesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/Attribute;>;"
    const/4 v2, 0x1

    .line 60
    .local v2, "attributesListIndex":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/simpledb/model/Attribute;

    .line 61
    .local v3, "attributesListValue":Lcom/amazonaws/services/simpledb/model/Attribute;
    move-object v0, v3

    .line 62
    .local v0, "attributeMember":Lcom/amazonaws/services/simpledb/model/Attribute;
    if-eqz v0, :cond_6

    .line 63
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 64
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Item."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Attribute."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 67
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Item."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Attribute."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".AlternateNameEncoding"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 70
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Item."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Attribute."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Value"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 73
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Item."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".Attribute."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".AlternateValueEncoding"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 78
    goto/16 :goto_1

    .line 81
    .end local v0    # "attributeMember":Lcom/amazonaws/services/simpledb/model/Attribute;
    .end local v1    # "attributesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/Attribute;>;"
    .end local v2    # "attributesListIndex":I
    .end local v3    # "attributesListValue":Lcom/amazonaws/services/simpledb/model/Attribute;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 82
    goto/16 :goto_0

    .line 85
    .end local v4    # "deletableItemMember":Lcom/amazonaws/services/simpledb/model/DeletableItem;
    .end local v9    # "itemsListValue":Lcom/amazonaws/services/simpledb/model/DeletableItem;
    :cond_8
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
    check-cast p1, Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpledb/model/transform/BatchDeleteAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/BatchDeleteAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
