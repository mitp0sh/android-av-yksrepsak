.class public Lcom/amazonaws/services/simpledb/model/transform/DeleteAttributesRequestMarshaller;
.super Ljava/lang/Object;
.source "DeleteAttributesRequestMarshaller.java"

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
        "Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;",
        ">;",
        "Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;",
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
.method public marshall(Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;)Lcom/amazonaws/Request;
    .locals 9
    .param p1, "deleteAttributesRequest"    # Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v7, Lcom/amazonaws/AmazonClientException;

    const-string v8, "Invalid argument passed to marshall(...)"

    invoke-direct {v7, v8}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 39
    :cond_0
    new-instance v5, Lcom/amazonaws/DefaultRequest;

    const-string v7, "AmazonSimpleDB"

    invoke-direct {v5, p1, v7}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v5, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;>;"
    const-string v7, "Action"

    const-string v8, "DeleteAttributes"

    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v7, "Version"

    const-string v8, "2009-04-15"

    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 44
    const-string v7, "DomainName"

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;->getDomainName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 47
    const-string v7, "ItemName"

    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;->getItemName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;->getAttributes()Ljava/util/List;

    move-result-object v1

    .line 51
    .local v1, "attributesList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/simpledb/model/Attribute;>;"
    const/4 v2, 0x1

    .line 53
    .local v2, "attributesListIndex":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/simpledb/model/Attribute;

    .line 54
    .local v3, "attributesListValue":Lcom/amazonaws/services/simpledb/model/Attribute;
    move-object v0, v3

    .line 55
    .local v0, "attributeMember":Lcom/amazonaws/services/simpledb/model/Attribute;
    if-eqz v0, :cond_6

    .line 56
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attribute."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attribute."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".AlternateNameEncoding"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateNameEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attribute."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".Value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attribute."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".AlternateValueEncoding"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazonaws/services/simpledb/model/Attribute;->getAlternateValueEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 71
    goto/16 :goto_0

    .line 72
    .end local v0    # "attributeMember":Lcom/amazonaws/services/simpledb/model/Attribute;
    .end local v3    # "attributesListValue":Lcom/amazonaws/services/simpledb/model/Attribute;
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;->getExpected()Lcom/amazonaws/services/simpledb/model/UpdateCondition;

    move-result-object v6

    .line 73
    .local v6, "updateConditionExpected":Lcom/amazonaws/services/simpledb/model/UpdateCondition;
    if-eqz v6, :cond_a

    .line 74
    invoke-virtual {v6}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 75
    const-string v7, "Expected.Name"

    invoke-virtual {v6}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_8
    invoke-virtual {v6}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 78
    const-string v7, "Expected.Value"

    invoke-virtual {v6}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_9
    invoke-virtual {v6}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->isExists()Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 81
    const-string v7, "Expected.Exists"

    invoke-virtual {v6}, Lcom/amazonaws/services/simpledb/model/UpdateCondition;->isExists()Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/StringUtils;->fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_a
    return-object v5
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
    check-cast p1, Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpledb/model/transform/DeleteAttributesRequestMarshaller;->marshall(Lcom/amazonaws/services/simpledb/model/DeleteAttributesRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
