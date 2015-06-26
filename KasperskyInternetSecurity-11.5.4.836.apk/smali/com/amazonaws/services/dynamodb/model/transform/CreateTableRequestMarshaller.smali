.class public Lcom/amazonaws/services/dynamodb/model/transform/CreateTableRequestMarshaller;
.super Ljava/lang/Object;
.source "CreateTableRequestMarshaller.java"

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
        "Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;",
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
    .line 158
    if-nez p1, :cond_0

    const-string p1, ""

    .line 159
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;)Lcom/amazonaws/Request;
    .locals 24
    .param p1, "createTableRequest"    # Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v21, Lcom/amazonaws/AmazonClientException;

    const-string v22, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v21 .. v22}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 49
    :cond_0
    new-instance v14, Lcom/amazonaws/DefaultRequest;

    const-string v21, "AmazonDynamoDB"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v14, v0, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 50
    .local v14, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;>;"
    const-string v19, "DynamoDB_20111205.CreateTable"

    .line 51
    .local v19, "target":Ljava/lang/String;
    const-string v21, "X-Amz-Target"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v21, "Content-Type"

    const-string v22, "application/x-amz-json-1.0"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v21, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 58
    const-string v20, ""

    .line 60
    .local v20, "uriResourcePath":Ljava/lang/String;
    const-string v21, "//"

    const-string v22, "/"

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 62
    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 63
    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 64
    .local v12, "queryString":Ljava/lang/String;
    const/16 v21, 0x0

    const-string v22, "?"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 66
    const-string v21, "[;&]"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_2

    aget-object v15, v3, v6

    .line 67
    .local v15, "s":Ljava/lang/String;
    const-string v21, "="

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, "nameValuePair":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 69
    const/16 v21, 0x0

    aget-object v21, v10, v21

    const/16 v22, 0x1

    aget-object v22, v10, v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v14, v15, v0}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "nameValuePair":[Ljava/lang/String;
    .end local v12    # "queryString":Ljava/lang/String;
    .end local v15    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 81
    :try_start_0
    new-instance v17, Ljava/io/StringWriter;

    invoke-direct/range {v17 .. v17}, Ljava/io/StringWriter;-><init>()V

    .line 82
    .local v17, "stringWriter":Ljava/io/StringWriter;
    new-instance v7, Lcom/amazonaws/util/json/JSONWriter;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    .line 86
    .local v7, "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    invoke-virtual {v7}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 89
    const-string v21, "TableName"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 91
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getKeySchema()Lcom/amazonaws/services/dynamodb/model/KeySchema;

    move-result-object v8

    .line 92
    .local v8, "keySchema":Lcom/amazonaws/services/dynamodb/model/KeySchema;
    if-eqz v8, :cond_a

    .line 94
    const-string v21, "KeySchema"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 95
    invoke-virtual {v7}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 97
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v5

    .line 98
    .local v5, "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;
    if-eqz v5, :cond_6

    .line 100
    const-string v21, "HashKeyElement"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 101
    invoke-virtual {v7}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 103
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_4

    .line 104
    const-string v21, "AttributeName"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v21

    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 106
    :cond_4
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeType()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_5

    .line 107
    const-string v21, "AttributeType"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v21

    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 109
    :cond_5
    invoke-virtual {v7}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 111
    :cond_6
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/KeySchema;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;

    move-result-object v13

    .line 112
    .local v13, "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;
    if-eqz v13, :cond_9

    .line 114
    const-string v21, "RangeKeyElement"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 115
    invoke-virtual {v7}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 117
    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 118
    const-string v21, "AttributeName"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v21

    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 120
    :cond_7
    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeType()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_8

    .line 121
    const-string v21, "AttributeType"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v21

    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;->getAttributeType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 123
    :cond_8
    invoke-virtual {v7}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 125
    :cond_9
    invoke-virtual {v7}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 127
    .end local v5    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;
    .end local v13    # "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/KeySchemaElement;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;

    move-result-object v11

    .line 128
    .local v11, "provisionedThroughput":Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;
    if-eqz v11, :cond_d

    .line 130
    const-string v21, "ProvisionedThroughput"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 131
    invoke-virtual {v7}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 133
    invoke-virtual {v11}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v21

    if-eqz v21, :cond_b

    .line 134
    const-string v21, "ReadCapacityUnits"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v21

    invoke-virtual {v11}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getReadCapacityUnits()Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 136
    :cond_b
    invoke-virtual {v11}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v21

    if-eqz v21, :cond_c

    .line 137
    const-string v21, "WriteCapacityUnits"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v21

    invoke-virtual {v11}, Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;->getWriteCapacityUnits()Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 139
    :cond_c
    invoke-virtual {v7}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 142
    :cond_d
    invoke-virtual {v7}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 145
    invoke-virtual/range {v17 .. v17}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v16

    .line 146
    .local v16, "snippet":Ljava/lang/String;
    const-string v21, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 147
    .local v4, "content":[B
    new-instance v21, Lcom/amazonaws/util/StringInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 148
    const-string v21, "Content-Length"

    array-length v0, v4

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return-object v14

    .line 149
    .end local v4    # "content":[B
    .end local v7    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .end local v8    # "keySchema":Lcom/amazonaws/services/dynamodb/model/KeySchema;
    .end local v11    # "provisionedThroughput":Lcom/amazonaws/services/dynamodb/model/ProvisionedThroughput;
    .end local v16    # "snippet":Ljava/lang/String;
    .end local v17    # "stringWriter":Ljava/io/StringWriter;
    :catch_0
    move-exception v18

    .line 150
    .local v18, "t":Ljava/lang/Throwable;
    new-instance v21, Lcom/amazonaws/AmazonClientException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to marshall request to JSON: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21
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
    check-cast p1, Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/CreateTableRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/CreateTableRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
