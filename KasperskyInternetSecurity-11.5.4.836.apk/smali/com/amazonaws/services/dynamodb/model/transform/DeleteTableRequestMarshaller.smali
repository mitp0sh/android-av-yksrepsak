.class public Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableRequestMarshaller;
.super Ljava/lang/Object;
.source "DeleteTableRequestMarshaller.java"

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
        "Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 108
    if-nez p1, :cond_0

    const-string p1, ""

    .line 109
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;)Lcom/amazonaws/Request;
    .locals 18
    .param p1, "deleteTableRequest"    # Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v15, Lcom/amazonaws/AmazonClientException;

    const-string v16, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v15 .. v16}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 49
    :cond_0
    new-instance v8, Lcom/amazonaws/DefaultRequest;

    const-string v15, "AmazonDynamoDB"

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v15}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 50
    .local v8, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;>;"
    const-string v13, "DynamoDB_20111205.DeleteTable"

    .line 51
    .local v13, "target":Ljava/lang/String;
    const-string v15, "X-Amz-Target"

    invoke-interface {v8, v15, v13}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v15, "Content-Type"

    const-string v16, "application/x-amz-json-1.0"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v15, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-interface {v8, v15}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 58
    const-string v14, ""

    .line 60
    .local v14, "uriResourcePath":Ljava/lang/String;
    const-string v15, "//"

    const-string v16, "/"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 62
    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 63
    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "queryString":Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "?"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 66
    const-string v15, "[;&]"

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v9, v1, v3

    .line 67
    .local v9, "s":Ljava/lang/String;
    const-string v15, "="

    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "nameValuePair":[Ljava/lang/String;
    array-length v15, v6

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 69
    const/4 v15, 0x0

    aget-object v15, v6, v15

    const/16 v16, 0x1

    aget-object v16, v6, v16

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v15, 0x0

    invoke-interface {v8, v9, v15}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "nameValuePair":[Ljava/lang/String;
    .end local v7    # "queryString":Ljava/lang/String;
    .end local v9    # "s":Ljava/lang/String;
    :cond_2
    invoke-interface {v8, v14}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 81
    :try_start_0
    new-instance v11, Ljava/io/StringWriter;

    invoke-direct {v11}, Ljava/io/StringWriter;-><init>()V

    .line 82
    .local v11, "stringWriter":Ljava/io/StringWriter;
    new-instance v4, Lcom/amazonaws/util/json/JSONWriter;

    invoke-direct {v4, v11}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    .line 86
    .local v4, "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    invoke-virtual {v4}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 89
    const-string v15, "TableName"

    invoke-virtual {v4, v15}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 92
    :cond_3
    invoke-virtual {v4}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 95
    invoke-virtual {v11}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, "snippet":Ljava/lang/String;
    const-string v15, "UTF-8"

    invoke-virtual {v10, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 97
    .local v2, "content":[B
    new-instance v15, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v15, v10}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v15}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 98
    const-string v15, "Content-Length"

    array-length v0, v2

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-object v8

    .line 99
    .end local v2    # "content":[B
    .end local v4    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .end local v10    # "snippet":Ljava/lang/String;
    .end local v11    # "stringWriter":Ljava/io/StringWriter;
    :catch_0
    move-exception v12

    .line 100
    .local v12, "t":Ljava/lang/Throwable;
    new-instance v15, Lcom/amazonaws/AmazonClientException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to marshall request to JSON: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v12}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
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
    .line 40
    check-cast p1, Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/DeleteTableRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
