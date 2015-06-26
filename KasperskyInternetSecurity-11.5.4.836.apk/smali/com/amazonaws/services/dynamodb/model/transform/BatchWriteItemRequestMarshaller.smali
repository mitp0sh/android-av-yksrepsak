.class public Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemRequestMarshaller;
.super Ljava/lang/Object;
.source "BatchWriteItemRequestMarshaller.java"

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
        "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;",
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
    .line 330
    if-nez p1, :cond_0

    const-string p1, ""

    .line 331
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;)Lcom/amazonaws/Request;
    .locals 37
    .param p1, "batchWriteItemRequest"    # Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v34, Lcom/amazonaws/AmazonClientException;

    const-string v35, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v34 .. v35}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 49
    :cond_0
    new-instance v23, Lcom/amazonaws/DefaultRequest;

    const-string v34, "AmazonDynamoDB"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 50
    .local v23, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;>;"
    const-string v31, "DynamoDB_20111205.BatchWriteItem"

    .line 51
    .local v31, "target":Ljava/lang/String;
    const-string v34, "X-Amz-Target"

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v34, "Content-Type"

    const-string v35, "application/x-amz-json-1.0"

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v34, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 58
    const-string v32, ""

    .line 60
    .local v32, "uriResourcePath":Ljava/lang/String;
    const-string v34, "//"

    const-string v35, "/"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 62
    const-string v34, "?"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 63
    const-string v34, "?"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 64
    .local v21, "queryString":Ljava/lang/String;
    const/16 v34, 0x0

    const-string v35, "?"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v32

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 66
    const-string v34, "[;&]"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v9, v0, :cond_2

    aget-object v25, v3, v9

    .line 67
    .local v25, "s":Ljava/lang/String;
    const-string v34, "="

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 68
    .local v19, "nameValuePair":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1

    .line 69
    const/16 v34, 0x0

    aget-object v34, v19, v34

    const/16 v35, 0x1

    aget-object v35, v19, v35

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/16 v34, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v16    # "len$":I
    .end local v19    # "nameValuePair":[Ljava/lang/String;
    .end local v21    # "queryString":Ljava/lang/String;
    .end local v25    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 81
    :try_start_0
    new-instance v29, Ljava/io/StringWriter;

    invoke-direct/range {v29 .. v29}, Ljava/io/StringWriter;-><init>()V

    .line 82
    .local v29, "stringWriter":Ljava/io/StringWriter;
    new-instance v14, Lcom/amazonaws/util/json/JSONWriter;

    move-object/from16 v0, v29

    invoke-direct {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    .line 86
    .local v14, "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v34

    if-eqz v34, :cond_33

    .line 89
    const-string v34, "RequestItems"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 90
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_32

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 92
    .local v24, "requestItemsListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/WriteRequest;>;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    if-eqz v34, :cond_3

    .line 93
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 95
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 96
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/util/List;

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_31

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/amazonaws/services/dynamodb/model/WriteRequest;

    .line 97
    .local v33, "valueListValue":Lcom/amazonaws/services/dynamodb/model/WriteRequest;
    if-eqz v33, :cond_4

    .line 98
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 99
    invoke-virtual/range {v33 .. v33}, Lcom/amazonaws/services/dynamodb/model/WriteRequest;->getPutRequest()Lcom/amazonaws/services/dynamodb/model/PutRequest;

    move-result-object v20

    .line 100
    .local v20, "putRequest":Lcom/amazonaws/services/dynamodb/model/PutRequest;
    if-eqz v20, :cond_14

    .line 102
    const-string v34, "PutRequest"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 103
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 105
    invoke-virtual/range {v20 .. v20}, Lcom/amazonaws/services/dynamodb/model/PutRequest;->getItem()Ljava/util/Map;

    move-result-object v34

    if-eqz v34, :cond_13

    .line 106
    const-string v34, "Item"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 107
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 108
    invoke-virtual/range {v20 .. v20}, Lcom/amazonaws/services/dynamodb/model/PutRequest;->getItem()Ljava/util/Map;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 109
    .local v13, "itemListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    if-eqz v34, :cond_5

    .line 110
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 112
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 113
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v34 .. v34}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_6

    .line 114
    const-string v34, "S"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v35

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v34 .. v34}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 116
    :cond_6
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v34 .. v34}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_7

    .line 117
    const-string v34, "N"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v35

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v34 .. v34}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 119
    :cond_7
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v34 .. v34}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v34

    if-eqz v34, :cond_8

    .line 120
    const-string v34, "B"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v35

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v34 .. v34}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v34

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 123
    :cond_8
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v34 .. v34}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v26

    .line 124
    .local v26, "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_b

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_b

    .line 126
    const-string v34, "SS"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 127
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 129
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 130
    .local v27, "sSListValue":Ljava/lang/String;
    if-eqz v27, :cond_9

    .line 131
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 321
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "itemListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    .end local v14    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .end local v20    # "putRequest":Lcom/amazonaws/services/dynamodb/model/PutRequest;
    .end local v24    # "requestItemsListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/WriteRequest;>;>;"
    .end local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v27    # "sSListValue":Ljava/lang/String;
    .end local v29    # "stringWriter":Ljava/io/StringWriter;
    .end local v33    # "valueListValue":Lcom/amazonaws/services/dynamodb/model/WriteRequest;
    :catch_0
    move-exception v30

    .line 322
    .local v30, "t":Ljava/lang/Throwable;
    new-instance v34, Lcom/amazonaws/AmazonClientException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unable to marshall request to JSON: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v34

    .line 134
    .end local v30    # "t":Ljava/lang/Throwable;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "itemListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    .restart local v14    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .restart local v20    # "putRequest":Lcom/amazonaws/services/dynamodb/model/PutRequest;
    .restart local v24    # "requestItemsListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/WriteRequest;>;>;"
    .restart local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "stringWriter":Ljava/io/StringWriter;
    .restart local v33    # "valueListValue":Lcom/amazonaws/services/dynamodb/model/WriteRequest;
    :cond_a
    :try_start_1
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 137
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v34 .. v34}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v17

    .line 138
    .local v17, "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_e

    .line 140
    const-string v34, "NS"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 141
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 143
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 144
    .local v18, "nSListValue":Ljava/lang/String;
    if-eqz v18, :cond_c

    .line 145
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_6

    .line 148
    .end local v18    # "nSListValue":Ljava/lang/String;
    :cond_d
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 151
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    invoke-virtual/range {v34 .. v34}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v4

    .line 152
    .local v4, "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v4, :cond_11

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_11

    .line 154
    const-string v34, "BS"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 155
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 157
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 158
    .local v5, "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_f

    .line 159
    invoke-virtual {v14, v5}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_7

    .line 162
    .end local v5    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_10
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 164
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_11
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_4

    .line 167
    .end local v4    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v13    # "itemListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    .end local v17    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 169
    :cond_13
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 171
    :cond_14
    invoke-virtual/range {v33 .. v33}, Lcom/amazonaws/services/dynamodb/model/WriteRequest;->getDeleteRequest()Lcom/amazonaws/services/dynamodb/model/DeleteRequest;

    move-result-object v7

    .line 172
    .local v7, "deleteRequest":Lcom/amazonaws/services/dynamodb/model/DeleteRequest;
    if-eqz v7, :cond_30

    .line 174
    const-string v34, "DeleteRequest"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 175
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 177
    invoke-virtual {v7}, Lcom/amazonaws/services/dynamodb/model/DeleteRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v15

    .line 178
    .local v15, "key":Lcom/amazonaws/services/dynamodb/model/Key;
    if-eqz v15, :cond_2f

    .line 180
    const-string v34, "Key"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 181
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 183
    invoke-virtual {v15}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v8

    .line 184
    .local v8, "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v8, :cond_21

    .line 186
    const-string v34, "HashKeyElement"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 187
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 189
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_15

    .line 190
    const-string v34, "S"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v34

    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 192
    :cond_15
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_16

    .line 193
    const-string v34, "N"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v34

    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 195
    :cond_16
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v34

    if-eqz v34, :cond_17

    .line 196
    const-string v34, "B"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v34

    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 199
    :cond_17
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v26

    .line 200
    .restart local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_1a

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_1a

    .line 202
    const-string v34, "SS"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 203
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 205
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_19

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 206
    .restart local v27    # "sSListValue":Ljava/lang/String;
    if-eqz v27, :cond_18

    .line 207
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_8

    .line 210
    .end local v27    # "sSListValue":Ljava/lang/String;
    :cond_19
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 213
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v17

    .line 214
    .restart local v17    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_1d

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_1d

    .line 216
    const-string v34, "NS"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 217
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 219
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 220
    .restart local v18    # "nSListValue":Ljava/lang/String;
    if-eqz v18, :cond_1b

    .line 221
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_9

    .line 224
    .end local v18    # "nSListValue":Ljava/lang/String;
    :cond_1c
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 227
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v4

    .line 228
    .restart local v4    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v4, :cond_20

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_20

    .line 230
    const-string v34, "BS"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 231
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 233
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 234
    .restart local v5    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_1e

    .line 235
    invoke-virtual {v14, v5}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_a

    .line 238
    .end local v5    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_1f
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 240
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_20
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 242
    .end local v4    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v17    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_21
    invoke-virtual {v15}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v22

    .line 243
    .local v22, "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v22, :cond_2e

    .line 245
    const-string v34, "RangeKeyElement"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 246
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 248
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_22

    .line 249
    const-string v34, "S"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v34

    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 251
    :cond_22
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_23

    .line 252
    const-string v34, "N"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v34

    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 254
    :cond_23
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v34

    if-eqz v34, :cond_24

    .line 255
    const-string v34, "B"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v34

    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 258
    :cond_24
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v26

    .line 259
    .restart local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_27

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_27

    .line 261
    const-string v34, "SS"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 262
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 264
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_25
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_26

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 265
    .restart local v27    # "sSListValue":Ljava/lang/String;
    if-eqz v27, :cond_25

    .line 266
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_b

    .line 269
    .end local v27    # "sSListValue":Ljava/lang/String;
    :cond_26
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 272
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_27
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v17

    .line 273
    .restart local v17    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_2a

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_2a

    .line 275
    const-string v34, "NS"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 276
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 278
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_28
    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_29

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 279
    .restart local v18    # "nSListValue":Ljava/lang/String;
    if-eqz v18, :cond_28

    .line 280
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_c

    .line 283
    .end local v18    # "nSListValue":Ljava/lang/String;
    :cond_29
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 286
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v4

    .line 287
    .restart local v4    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v4, :cond_2d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v34

    if-lez v34, :cond_2d

    .line 289
    const-string v34, "BS"

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 290
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 292
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_2b
    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_2c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 293
    .restart local v5    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_2b

    .line 294
    invoke-virtual {v14, v5}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_d

    .line 297
    .end local v5    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_2c
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 299
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_2d
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 301
    .end local v4    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v17    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2e
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 303
    .end local v8    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .end local v22    # "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    :cond_2f
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 305
    .end local v15    # "key":Lcom/amazonaws/services/dynamodb/model/Key;
    :cond_30
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_3

    .line 308
    .end local v7    # "deleteRequest":Lcom/amazonaws/services/dynamodb/model/DeleteRequest;
    .end local v20    # "putRequest":Lcom/amazonaws/services/dynamodb/model/PutRequest;
    .end local v33    # "valueListValue":Lcom/amazonaws/services/dynamodb/model/WriteRequest;
    :cond_31
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_2

    .line 311
    .end local v24    # "requestItemsListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/WriteRequest;>;>;"
    :cond_32
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 314
    :cond_33
    invoke-virtual {v14}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 317
    invoke-virtual/range {v29 .. v29}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v28

    .line 318
    .local v28, "snippet":Ljava/lang/String;
    const-string v34, "UTF-8"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 319
    .local v6, "content":[B
    new-instance v34, Lcom/amazonaws/util/StringInputStream;

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 320
    const-string v34, "Content-Length"

    array-length v0, v6

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    return-object v23
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
    check-cast p1, Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/BatchWriteItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/BatchWriteItemRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
