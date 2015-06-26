.class public Lcom/amazonaws/services/dynamodb/model/transform/BatchGetItemRequestMarshaller;
.super Ljava/lang/Object;
.source "BatchGetItemRequestMarshaller.java"

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
        "Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;",
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
    .line 268
    if-nez p1, :cond_0

    const-string p1, ""

    .line 269
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;)Lcom/amazonaws/Request;
    .locals 35
    .param p1, "batchGetItemRequest"    # Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v32, Lcom/amazonaws/AmazonClientException;

    const-string v33, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v32 .. v33}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 49
    :cond_0
    new-instance v22, Lcom/amazonaws/DefaultRequest;

    const-string v32, "AmazonDynamoDB"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 50
    .local v22, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;>;"
    const-string v30, "DynamoDB_20111205.BatchGetItem"

    .line 51
    .local v30, "target":Ljava/lang/String;
    const-string v32, "X-Amz-Target"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v32, "Content-Type"

    const-string v33, "application/x-amz-json-1.0"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v32, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 58
    const-string v31, ""

    .line 60
    .local v31, "uriResourcePath":Ljava/lang/String;
    const-string v32, "//"

    const-string v33, "/"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 62
    const-string v32, "?"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 63
    const-string v32, "?"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 64
    .local v20, "queryString":Ljava/lang/String;
    const/16 v32, 0x0

    const-string v33, "?"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 66
    const-string v32, "[;&]"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_2

    aget-object v24, v3, v10

    .line 67
    .local v24, "s":Ljava/lang/String;
    const-string v32, "="

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 68
    .local v19, "nameValuePair":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 69
    const/16 v32, 0x0

    aget-object v32, v19, v32

    const/16 v33, 0x1

    aget-object v33, v19, v33

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/16 v32, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v16    # "len$":I
    .end local v19    # "nameValuePair":[Ljava/lang/String;
    .end local v20    # "queryString":Ljava/lang/String;
    .end local v24    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 81
    :try_start_0
    new-instance v28, Ljava/io/StringWriter;

    invoke-direct/range {v28 .. v28}, Ljava/io/StringWriter;-><init>()V

    .line 82
    .local v28, "stringWriter":Ljava/io/StringWriter;
    new-instance v13, Lcom/amazonaws/util/json/JSONWriter;

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    .line 86
    .local v13, "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v32

    if-eqz v32, :cond_26

    .line 89
    const-string v32, "RequestItems"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 90
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;->getRequestItems()Ljava/util/Map;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_25

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 92
    .local v23, "requestItemsListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    if-eqz v32, :cond_3

    .line 93
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 95
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 97
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;

    invoke-virtual/range {v32 .. v32}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getKeys()Ljava/util/List;

    move-result-object v14

    .line 98
    .local v14, "keysList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/Key;>;"
    if-eqz v14, :cond_20

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_20

    .line 100
    const-string v32, "Keys"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 101
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 103
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/amazonaws/services/dynamodb/model/Key;

    .line 104
    .local v15, "keysListValue":Lcom/amazonaws/services/dynamodb/model/Key;
    if-eqz v15, :cond_4

    .line 105
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 106
    invoke-virtual {v15}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v9

    .line 107
    .local v9, "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v9, :cond_11

    .line 109
    const-string v32, "HashKeyElement"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 110
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 112
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_5

    .line 113
    const-string v32, "S"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v32

    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 115
    :cond_5
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_6

    .line 116
    const-string v32, "N"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v32

    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 118
    :cond_6
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v32

    if-eqz v32, :cond_7

    .line 119
    const-string v32, "B"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v32

    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 122
    :cond_7
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v25

    .line 123
    .local v25, "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v25, :cond_a

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_a

    .line 125
    const-string v32, "SS"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 126
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 128
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 129
    .local v26, "sSListValue":Ljava/lang/String;
    if-eqz v26, :cond_8

    .line 130
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 259
    .end local v9    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .end local v14    # "keysList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/Key;>;"
    .end local v15    # "keysListValue":Lcom/amazonaws/services/dynamodb/model/Key;
    .end local v23    # "requestItemsListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;>;"
    .end local v25    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "sSListValue":Ljava/lang/String;
    .end local v28    # "stringWriter":Ljava/io/StringWriter;
    :catch_0
    move-exception v29

    .line 260
    .local v29, "t":Ljava/lang/Throwable;
    new-instance v32, Lcom/amazonaws/AmazonClientException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Unable to marshall request to JSON: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v32

    .line 133
    .end local v29    # "t":Ljava/lang/Throwable;
    .restart local v9    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .restart local v14    # "keysList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/Key;>;"
    .restart local v15    # "keysListValue":Lcom/amazonaws/services/dynamodb/model/Key;
    .restart local v23    # "requestItemsListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;>;"
    .restart local v25    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "stringWriter":Ljava/io/StringWriter;
    :cond_9
    :try_start_1
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 136
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v17

    .line 137
    .local v17, "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_d

    .line 139
    const-string v32, "NS"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 140
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 142
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_b
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 143
    .local v18, "nSListValue":Ljava/lang/String;
    if-eqz v18, :cond_b

    .line 144
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_5

    .line 147
    .end local v18    # "nSListValue":Ljava/lang/String;
    :cond_c
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 150
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_d
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v6

    .line 151
    .local v6, "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v6, :cond_10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_10

    .line 153
    const-string v32, "BS"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 154
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 156
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_e
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 157
    .local v7, "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v7, :cond_e

    .line 158
    invoke-virtual {v13, v7}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_6

    .line 161
    .end local v7    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_f
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 163
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 165
    .end local v6    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v17    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    invoke-virtual {v15}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v21

    .line 166
    .local v21, "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v21, :cond_1e

    .line 168
    const-string v32, "RangeKeyElement"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 169
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 171
    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_12

    .line 172
    const-string v32, "S"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v32

    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 174
    :cond_12
    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_13

    .line 175
    const-string v32, "N"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v32

    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 177
    :cond_13
    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v32

    if-eqz v32, :cond_14

    .line 178
    const-string v32, "B"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v32

    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 181
    :cond_14
    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v25

    .line 182
    .restart local v25    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v25, :cond_17

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_17

    .line 184
    const-string v32, "SS"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 185
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 187
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_15
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_16

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 188
    .restart local v26    # "sSListValue":Ljava/lang/String;
    if-eqz v26, :cond_15

    .line 189
    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_7

    .line 192
    .end local v26    # "sSListValue":Ljava/lang/String;
    :cond_16
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 195
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_17
    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v17

    .line 196
    .restart local v17    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_1a

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_1a

    .line 198
    const-string v32, "NS"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 199
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 201
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_18
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_19

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 202
    .restart local v18    # "nSListValue":Ljava/lang/String;
    if-eqz v18, :cond_18

    .line 203
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_8

    .line 206
    .end local v18    # "nSListValue":Ljava/lang/String;
    :cond_19
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 209
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v6

    .line 210
    .restart local v6    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v6, :cond_1d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_1d

    .line 212
    const-string v32, "BS"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 213
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 215
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 216
    .restart local v7    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v7, :cond_1b

    .line 217
    invoke-virtual {v13, v7}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_9

    .line 220
    .end local v7    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_1c
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 222
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 224
    .end local v6    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v17    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1e
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_3

    .line 227
    .end local v9    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .end local v15    # "keysListValue":Lcom/amazonaws/services/dynamodb/model/Key;
    .end local v21    # "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    :cond_1f
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 230
    :cond_20
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;

    invoke-virtual/range {v32 .. v32}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    .line 231
    .local v4, "attributesToGetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_23

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_23

    .line 233
    const-string v32, "AttributesToGet"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 234
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 236
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_22

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 237
    .local v5, "attributesToGetListValue":Ljava/lang/String;
    if-eqz v5, :cond_21

    .line 238
    invoke-virtual {v13, v5}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_a

    .line 241
    .end local v5    # "attributesToGetListValue":Ljava/lang/String;
    :cond_22
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 243
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_23
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;

    invoke-virtual/range {v32 .. v32}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v32

    if-eqz v32, :cond_24

    .line 244
    const-string v32, "ConsistentRead"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;

    invoke-virtual/range {v32 .. v32}, Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 246
    :cond_24
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_2

    .line 249
    .end local v4    # "attributesToGetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "keysList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/Key;>;"
    .end local v23    # "requestItemsListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/KeysAndAttributes;>;"
    :cond_25
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 252
    :cond_26
    invoke-virtual {v13}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 255
    invoke-virtual/range {v28 .. v28}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v27

    .line 256
    .local v27, "snippet":Ljava/lang/String;
    const-string v32, "UTF-8"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 257
    .local v8, "content":[B
    new-instance v32, Lcom/amazonaws/util/StringInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 258
    const-string v32, "Content-Length"

    array-length v0, v8

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    return-object v22
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
    check-cast p1, Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/BatchGetItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/BatchGetItemRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
