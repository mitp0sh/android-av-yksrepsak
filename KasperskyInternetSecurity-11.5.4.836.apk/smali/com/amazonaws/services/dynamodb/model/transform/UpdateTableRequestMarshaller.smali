.class public Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableRequestMarshaller;
.super Ljava/lang/Object;
.source "UpdateTableRequestMarshaller.java"

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
        "Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;",
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
    .line 122
    if-nez p1, :cond_0

    const-string p1, ""

    .line 123
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;)Lcom/amazonaws/Request;
    .locals 20
    .param p1, "updateTableRequest"    # Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v17, Lcom/amazonaws/AmazonClientException;

    const-string v18, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v17 .. v18}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 49
    :cond_0
    new-instance v10, Lcom/amazonaws/DefaultRequest;

    const-string v17, "AmazonDynamoDB"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v10, v0, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 50
    .local v10, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;>;"
    const-string v15, "DynamoDB_20111205.UpdateTable"

    .line 51
    .local v15, "target":Ljava/lang/String;
    const-string v17, "X-Amz-Target"

    move-object/from16 v0, v17

    invoke-interface {v10, v0, v15}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v17, "Content-Type"

    const-string v18, "application/x-amz-json-1.0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v17, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 58
    const-string v16, ""

    .line 60
    .local v16, "uriResourcePath":Ljava/lang/String;
    const-string v17, "//"

    const-string v18, "/"

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 62
    const-string v17, "?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 63
    const-string v17, "?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, "queryString":Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "?"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 66
    const-string v17, "[;&]"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v11, v2, v4

    .line 67
    .local v11, "s":Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, "nameValuePair":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 69
    const/16 v17, 0x0

    aget-object v17, v7, v17

    const/16 v18, 0x1

    aget-object v18, v7, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v10, v11, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "nameValuePair":[Ljava/lang/String;
    .end local v9    # "queryString":Ljava/lang/String;
    .end local v11    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 81
    :try_start_0
    new-instance v13, Ljava/io/StringWriter;

    invoke-direct {v13}, Ljava/io/StringWriter;-><init>()V

    .line 82
    .local v13, "stringWriter":Ljava/io/StringWriter;
    new-instance v5, Lcom/amazonaws/util/json/JSONWriter;

    invoke-direct {v5, v13}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    .line 86
    .local v5, "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 89
    const-string v17, "TableName"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 91
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v8

    .line 92
    .local v8, "provisionedThroughput":Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;
    if-eqz v8, :cond_6

    .line 94
    const-string v17, "ProvisionedThroughput"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 95
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 97
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 98
    const-string v17, "ReadCapacityUnits"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v17

    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 100
    :cond_4
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 101
    const-string v17, "WriteCapacityUnits"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v17

    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 103
    :cond_5
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 106
    :cond_6
    invoke-virtual {v5}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 109
    invoke-virtual {v13}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v12

    .line 110
    .local v12, "snippet":Ljava/lang/String;
    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 111
    .local v3, "content":[B
    new-instance v17, Lcom/amazonaws/util/StringInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 112
    const-string v17, "Content-Length"

    array-length v0, v3

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-object v10

    .line 113
    .end local v3    # "content":[B
    .end local v5    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .end local v8    # "provisionedThroughput":Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;
    .end local v12    # "snippet":Ljava/lang/String;
    .end local v13    # "stringWriter":Ljava/io/StringWriter;
    :catch_0
    move-exception v14

    .line 114
    .local v14, "t":Ljava/lang/Throwable;
    new-instance v17, Lcom/amazonaws/AmazonClientException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to marshall request to JSON: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
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
    check-cast p1, Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/UpdateTableRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
