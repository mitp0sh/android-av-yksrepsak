.class public Lcom/amazonaws/services/dynamodb/model/transform/DeleteItemRequestMarshaller;
.super Ljava/lang/Object;
.source "DeleteItemRequestMarshaller.java"

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
        "Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;",
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
    .line 312
    if-nez p1, :cond_0

    const-string p1, ""

    .line 313
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;)Lcom/amazonaws/Request;
    .locals 32
    .param p1, "deleteItemRequest"    # Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v29, Lcom/amazonaws/AmazonClientException;

    const-string v30, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v29 .. v30}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 49
    :cond_0
    new-instance v19, Lcom/amazonaws/DefaultRequest;

    const-string v29, "AmazonDynamoDB"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 50
    .local v19, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;>;"
    const-string v26, "DynamoDB_20111205.DeleteItem"

    .line 51
    .local v26, "target":Ljava/lang/String;
    const-string v29, "X-Amz-Target"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v29, "Content-Type"

    const-string v30, "application/x-amz-json-1.0"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v29, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 58
    const-string v27, ""

    .line 60
    .local v27, "uriResourcePath":Ljava/lang/String;
    const-string v29, "//"

    const-string v30, "/"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 62
    const-string v29, "?"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 63
    const-string v29, "?"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v29

    add-int/lit8 v29, v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 64
    .local v17, "queryString":Ljava/lang/String;
    const/16 v29, 0x0

    const-string v30, "?"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 66
    const-string v29, "[;&]"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v13, :cond_2

    aget-object v20, v3, v9

    .line 67
    .local v20, "s":Ljava/lang/String;
    const-string v29, "="

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 68
    .local v16, "nameValuePair":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 69
    const/16 v29, 0x0

    aget-object v29, v16, v29

    const/16 v30, 0x1

    aget-object v30, v16, v30

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/16 v29, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v16    # "nameValuePair":[Ljava/lang/String;
    .end local v17    # "queryString":Ljava/lang/String;
    .end local v20    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 81
    :try_start_0
    new-instance v24, Ljava/io/StringWriter;

    invoke-direct/range {v24 .. v24}, Ljava/io/StringWriter;-><init>()V

    .line 82
    .local v24, "stringWriter":Ljava/io/StringWriter;
    new-instance v11, Lcom/amazonaws/util/json/JSONWriter;

    move-object/from16 v0, v24

    invoke-direct {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    .line 86
    .local v11, "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_3

    .line 89
    const-string v29, "TableName"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 91
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v12

    .line 92
    .local v12, "key":Lcom/amazonaws/services/dynamodb/model/Key;
    if-eqz v12, :cond_1e

    .line 94
    const-string v29, "Key"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 95
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 97
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v8

    .line 98
    .local v8, "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v8, :cond_10

    .line 100
    const-string v29, "HashKeyElement"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 101
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 103
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_4

    .line 104
    const-string v29, "S"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v29

    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 106
    :cond_4
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_5

    .line 107
    const-string v29, "N"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v29

    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 109
    :cond_5
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v29

    if-eqz v29, :cond_6

    .line 110
    const-string v29, "B"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v29

    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 113
    :cond_6
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v21

    .line 114
    .local v21, "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v21, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_9

    .line 116
    const-string v29, "SS"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 117
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 119
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 120
    .local v22, "sSListValue":Ljava/lang/String;
    if-eqz v22, :cond_7

    .line 121
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 303
    .end local v8    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .end local v12    # "key":Lcom/amazonaws/services/dynamodb/model/Key;
    .end local v21    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "sSListValue":Ljava/lang/String;
    .end local v24    # "stringWriter":Ljava/io/StringWriter;
    :catch_0
    move-exception v25

    .line 304
    .local v25, "t":Ljava/lang/Throwable;
    new-instance v29, Lcom/amazonaws/AmazonClientException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unable to marshall request to JSON: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v29

    .line 124
    .end local v25    # "t":Ljava/lang/Throwable;
    .restart local v8    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .restart local v12    # "key":Lcom/amazonaws/services/dynamodb/model/Key;
    .restart local v21    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "stringWriter":Ljava/io/StringWriter;
    :cond_8
    :try_start_1
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 127
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v14

    .line 128
    .local v14, "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_c

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_c

    .line 130
    const-string v29, "NS"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 131
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 133
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 134
    .local v15, "nSListValue":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 135
    invoke-virtual {v11, v15}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_3

    .line 138
    .end local v15    # "nSListValue":Ljava/lang/String;
    :cond_b
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 141
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {v8}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v4

    .line 142
    .local v4, "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v4, :cond_f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_f

    .line 144
    const-string v29, "BS"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 145
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 147
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 148
    .local v5, "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_d

    .line 149
    invoke-virtual {v11, v5}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_4

    .line 152
    .end local v5    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_e
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 154
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 156
    .end local v4    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v14    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v18

    .line 157
    .local v18, "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v18, :cond_1d

    .line 159
    const-string v29, "RangeKeyElement"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 160
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 162
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_11

    .line 163
    const-string v29, "S"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v29

    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 165
    :cond_11
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_12

    .line 166
    const-string v29, "N"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v29

    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 168
    :cond_12
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v29

    if-eqz v29, :cond_13

    .line 169
    const-string v29, "B"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v29

    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 172
    :cond_13
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v21

    .line 173
    .restart local v21    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v21, :cond_16

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_16

    .line 175
    const-string v29, "SS"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 176
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 178
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_14
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 179
    .restart local v22    # "sSListValue":Ljava/lang/String;
    if-eqz v22, :cond_14

    .line 180
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_5

    .line 183
    .end local v22    # "sSListValue":Ljava/lang/String;
    :cond_15
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 186
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_16
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v14

    .line 187
    .restart local v14    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_19

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_19

    .line 189
    const-string v29, "NS"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 190
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 192
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_17
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 193
    .restart local v15    # "nSListValue":Ljava/lang/String;
    if-eqz v15, :cond_17

    .line 194
    invoke-virtual {v11, v15}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_6

    .line 197
    .end local v15    # "nSListValue":Ljava/lang/String;
    :cond_18
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 200
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_19
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v4

    .line 201
    .restart local v4    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v4, :cond_1c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_1c

    .line 203
    const-string v29, "BS"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 204
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 206
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 207
    .restart local v5    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_1a

    .line 208
    invoke-virtual {v11, v5}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_7

    .line 211
    .end local v5    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_1b
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 213
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 215
    .end local v4    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v14    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 217
    .end local v8    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .end local v18    # "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v29

    if-eqz v29, :cond_2f

    .line 218
    const-string v29, "Expected"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 219
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1f
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 221
    .local v7, "expectedListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_1f

    .line 222
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 224
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 225
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;

    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v28

    .line 226
    .local v28, "value":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v28, :cond_2c

    .line 228
    const-string v29, "Value"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 229
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 231
    invoke-virtual/range {v28 .. v28}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_20

    .line 232
    const-string v29, "S"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v29

    invoke-virtual/range {v28 .. v28}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 234
    :cond_20
    invoke-virtual/range {v28 .. v28}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_21

    .line 235
    const-string v29, "N"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v29

    invoke-virtual/range {v28 .. v28}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 237
    :cond_21
    invoke-virtual/range {v28 .. v28}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v29

    if-eqz v29, :cond_22

    .line 238
    const-string v29, "B"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v29

    invoke-virtual/range {v28 .. v28}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 241
    :cond_22
    invoke-virtual/range {v28 .. v28}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v21

    .line 242
    .restart local v21    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v21, :cond_25

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_25

    .line 244
    const-string v29, "SS"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 245
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 247
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_24

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 248
    .restart local v22    # "sSListValue":Ljava/lang/String;
    if-eqz v22, :cond_23

    .line 249
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_9

    .line 252
    .end local v22    # "sSListValue":Ljava/lang/String;
    :cond_24
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 255
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_25
    invoke-virtual/range {v28 .. v28}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v14

    .line 256
    .restart local v14    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_28

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_28

    .line 258
    const-string v29, "NS"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 259
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 261
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_26
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_27

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 262
    .restart local v15    # "nSListValue":Ljava/lang/String;
    if-eqz v15, :cond_26

    .line 263
    invoke-virtual {v11, v15}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_a

    .line 266
    .end local v15    # "nSListValue":Ljava/lang/String;
    :cond_27
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 269
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_28
    invoke-virtual/range {v28 .. v28}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v4

    .line 270
    .restart local v4    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v4, :cond_2b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_2b

    .line 272
    const-string v29, "BS"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 273
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 275
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_29
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_2a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 276
    .restart local v5    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v5, :cond_29

    .line 277
    invoke-virtual {v11, v5}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_b

    .line 280
    .end local v5    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_2a
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 282
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_2b
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 284
    .end local v4    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v14    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2c
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;

    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v29

    if-eqz v29, :cond_2d

    .line 285
    const-string v29, "Exists"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;

    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 287
    :cond_2d
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_8

    .line 290
    .end local v7    # "expectedListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;>;"
    .end local v28    # "value":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    :cond_2e
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 292
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_30

    .line 293
    const-string v29, "ReturnValues"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 296
    :cond_30
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 299
    invoke-virtual/range {v24 .. v24}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v23

    .line 300
    .local v23, "snippet":Ljava/lang/String;
    const-string v29, "UTF-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 301
    .local v6, "content":[B
    new-instance v29, Lcom/amazonaws/util/StringInputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 302
    const-string v29, "Content-Length"

    array-length v0, v6

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 308
    return-object v19
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
    check-cast p1, Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/DeleteItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/DeleteItemRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
