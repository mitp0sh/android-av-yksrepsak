.class public Lcom/amazonaws/services/dynamodb/model/transform/PutItemRequestMarshaller;
.super Ljava/lang/Object;
.source "PutItemRequestMarshaller.java"

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
        "Lcom/amazonaws/services/dynamodb/model/PutItemRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodb/model/PutItemRequest;",
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
    .line 250
    if-nez p1, :cond_0

    const-string p1, ""

    .line 251
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodb/model/PutItemRequest;)Lcom/amazonaws/Request;
    .locals 30
    .param p1, "putItemRequest"    # Lcom/amazonaws/services/dynamodb/model/PutItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/PutItemRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/PutItemRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v27, Lcom/amazonaws/AmazonClientException;

    const-string v28, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v27 .. v28}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 49
    :cond_0
    new-instance v17, Lcom/amazonaws/DefaultRequest;

    const-string v27, "AmazonDynamoDB"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 50
    .local v17, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/PutItemRequest;>;"
    const-string v24, "DynamoDB_20111205.PutItem"

    .line 51
    .local v24, "target":Ljava/lang/String;
    const-string v27, "X-Amz-Target"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v27, "Content-Type"

    const-string v28, "application/x-amz-json-1.0"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v27, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 58
    const-string v25, ""

    .line 60
    .local v25, "uriResourcePath":Ljava/lang/String;
    const-string v27, "//"

    const-string v28, "/"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 62
    const-string v27, "?"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 63
    const-string v27, "?"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 64
    .local v16, "queryString":Ljava/lang/String;
    const/16 v27, 0x0

    const-string v28, "?"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 66
    const-string v27, "[;&]"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v12, :cond_2

    aget-object v18, v3, v8

    .line 67
    .local v18, "s":Ljava/lang/String;
    const-string v27, "="

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 68
    .local v15, "nameValuePair":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 69
    const/16 v27, 0x0

    aget-object v27, v15, v27

    const/16 v28, 0x1

    aget-object v28, v15, v28

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "nameValuePair":[Ljava/lang/String;
    .end local v16    # "queryString":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 81
    :try_start_0
    new-instance v22, Ljava/io/StringWriter;

    invoke-direct/range {v22 .. v22}, Ljava/io/StringWriter;-><init>()V

    .line 82
    .local v22, "stringWriter":Ljava/io/StringWriter;
    new-instance v11, Lcom/amazonaws/util/json/JSONWriter;

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    .line 86
    .local v11, "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_3

    .line 89
    const-string v27, "TableName"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 91
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v27

    if-eqz v27, :cond_12

    .line 92
    const-string v27, "Item"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 93
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getItem()Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 95
    .local v10, "itemListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_4

    .line 96
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 98
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 99
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v27 .. v27}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_5

    .line 100
    const-string v27, "S"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v28

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v27 .. v27}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 102
    :cond_5
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v27 .. v27}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_6

    .line 103
    const-string v27, "N"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v28

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v27 .. v27}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 105
    :cond_6
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v27 .. v27}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v27

    if-eqz v27, :cond_7

    .line 106
    const-string v27, "B"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v28

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v27 .. v27}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 109
    :cond_7
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v27 .. v27}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v19

    .line 110
    .local v19, "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_a

    .line 112
    const-string v27, "SS"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 113
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 115
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 116
    .local v20, "sSListValue":Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 117
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 241
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "itemListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    .end local v11    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .end local v19    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "sSListValue":Ljava/lang/String;
    .end local v22    # "stringWriter":Ljava/io/StringWriter;
    :catch_0
    move-exception v23

    .line 242
    .local v23, "t":Ljava/lang/Throwable;
    new-instance v27, Lcom/amazonaws/AmazonClientException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unable to marshall request to JSON: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    .line 120
    .end local v23    # "t":Ljava/lang/Throwable;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "itemListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    .restart local v11    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .restart local v19    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "stringWriter":Ljava/io/StringWriter;
    :cond_9
    :try_start_1
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 123
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v27 .. v27}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v13

    .line 124
    .local v13, "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_d

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_d

    .line 126
    const-string v27, "NS"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 127
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 129
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 130
    .local v14, "nSListValue":Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 131
    invoke-virtual {v11, v14}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_4

    .line 134
    .end local v14    # "nSListValue":Ljava/lang/String;
    :cond_c
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 137
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v27 .. v27}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v4

    .line 138
    .local v4, "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v4, :cond_10

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_10

    .line 140
    const-string v27, "BS"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 141
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 143
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 144
    .local v5, "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_e

    .line 145
    invoke-virtual {v11, v5}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_5

    .line 148
    .end local v5    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_f
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 150
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_2

    .line 153
    .end local v4    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v10    # "itemListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    .end local v13    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 155
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v27

    if-eqz v27, :cond_23

    .line 156
    const-string v27, "Expected"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 157
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_13
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_22

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 159
    .local v7, "expectedListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_13

    .line 160
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 162
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 163
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;

    invoke-virtual/range {v27 .. v27}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v26

    .line 164
    .local v26, "value":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v26, :cond_20

    .line 166
    const-string v27, "Value"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 167
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 169
    invoke-virtual/range {v26 .. v26}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_14

    .line 170
    const-string v27, "S"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 172
    :cond_14
    invoke-virtual/range {v26 .. v26}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_15

    .line 173
    const-string v27, "N"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 175
    :cond_15
    invoke-virtual/range {v26 .. v26}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v27

    if-eqz v27, :cond_16

    .line 176
    const-string v27, "B"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 179
    :cond_16
    invoke-virtual/range {v26 .. v26}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v19

    .line 180
    .restart local v19    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v19, :cond_19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_19

    .line 182
    const-string v27, "SS"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 183
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 185
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_17
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 186
    .restart local v20    # "sSListValue":Ljava/lang/String;
    if-eqz v20, :cond_17

    .line 187
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_7

    .line 190
    .end local v20    # "sSListValue":Ljava/lang/String;
    :cond_18
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 193
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_19
    invoke-virtual/range {v26 .. v26}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v13

    .line 194
    .restart local v13    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v13, :cond_1c

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_1c

    .line 196
    const-string v27, "NS"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 197
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 199
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 200
    .restart local v14    # "nSListValue":Ljava/lang/String;
    if-eqz v14, :cond_1a

    .line 201
    invoke-virtual {v11, v14}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_8

    .line 204
    .end local v14    # "nSListValue":Ljava/lang/String;
    :cond_1b
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 207
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-virtual/range {v26 .. v26}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v4

    .line 208
    .restart local v4    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v4, :cond_1f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_1f

    .line 210
    const-string v27, "BS"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 211
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 213
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 214
    .restart local v5    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_1d

    .line 215
    invoke-virtual {v11, v5}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_9

    .line 218
    .end local v5    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_1e
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 220
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1f
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 222
    .end local v4    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v13    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_20
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;

    invoke-virtual/range {v27 .. v27}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v27

    if-eqz v27, :cond_21

    .line 223
    const-string v27, "Exists"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v28

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;

    invoke-virtual/range {v27 .. v27}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 225
    :cond_21
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_6

    .line 228
    .end local v7    # "expectedListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;>;"
    .end local v26    # "value":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    :cond_22
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 230
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_24

    .line 231
    const-string v27, "ReturnValues"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 234
    :cond_24
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 237
    invoke-virtual/range {v22 .. v22}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v21

    .line 238
    .local v21, "snippet":Ljava/lang/String;
    const-string v27, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 239
    .local v6, "content":[B
    new-instance v27, Lcom/amazonaws/util/StringInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 240
    const-string v27, "Content-Length"

    array-length v0, v6

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    return-object v17
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
    check-cast p1, Lcom/amazonaws/services/dynamodb/model/PutItemRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/PutItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/PutItemRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
