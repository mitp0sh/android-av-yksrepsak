.class public Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemRequestMarshaller;
.super Ljava/lang/Object;
.source "UpdateItemRequestMarshaller.java"

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
        "Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;",
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
    .line 387
    if-nez p1, :cond_0

    const-string p1, ""

    .line 388
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;)Lcom/amazonaws/Request;
    .locals 33
    .param p1, "updateItemRequest"    # Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v30, Lcom/amazonaws/AmazonClientException;

    const-string v31, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v30 .. v31}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 49
    :cond_0
    new-instance v20, Lcom/amazonaws/DefaultRequest;

    const-string v30, "AmazonDynamoDB"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 50
    .local v20, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;>;"
    const-string v27, "DynamoDB_20111205.UpdateItem"

    .line 51
    .local v27, "target":Ljava/lang/String;
    const-string v30, "X-Amz-Target"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v30, "Content-Type"

    const-string v31, "application/x-amz-json-1.0"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v30, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 58
    const-string v28, ""

    .line 60
    .local v28, "uriResourcePath":Ljava/lang/String;
    const-string v30, "//"

    const-string v31, "/"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 62
    const-string v30, "?"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 63
    const-string v30, "?"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 64
    .local v18, "queryString":Ljava/lang/String;
    const/16 v30, 0x0

    const-string v31, "?"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 66
    const-string v30, "[;&]"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v14, :cond_2

    aget-object v21, v3, v10

    .line 67
    .local v21, "s":Ljava/lang/String;
    const-string v30, "="

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 68
    .local v17, "nameValuePair":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 69
    const/16 v30, 0x0

    aget-object v30, v17, v30

    const/16 v31, 0x1

    aget-object v31, v17, v31

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/16 v30, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "nameValuePair":[Ljava/lang/String;
    .end local v18    # "queryString":Ljava/lang/String;
    .end local v21    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 81
    :try_start_0
    new-instance v25, Ljava/io/StringWriter;

    invoke-direct/range {v25 .. v25}, Ljava/io/StringWriter;-><init>()V

    .line 82
    .local v25, "stringWriter":Ljava/io/StringWriter;
    new-instance v12, Lcom/amazonaws/util/json/JSONWriter;

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    .line 86
    .local v12, "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_3

    .line 89
    const-string v30, "TableName"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 91
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v13

    .line 92
    .local v13, "key":Lcom/amazonaws/services/dynamodb/model/Key;
    if-eqz v13, :cond_1e

    .line 94
    const-string v30, "Key"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 95
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 97
    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v9

    .line 98
    .local v9, "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v9, :cond_10

    .line 100
    const-string v30, "HashKeyElement"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 101
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 103
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_4

    .line 104
    const-string v30, "S"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 106
    :cond_4
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_5

    .line 107
    const-string v30, "N"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 109
    :cond_5
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v30

    if-eqz v30, :cond_6

    .line 110
    const-string v30, "B"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 113
    :cond_6
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v22

    .line 114
    .local v22, "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_9

    .line 116
    const-string v30, "SS"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 117
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 119
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 120
    .local v23, "sSListValue":Ljava/lang/String;
    if-eqz v23, :cond_7

    .line 121
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 378
    .end local v9    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .end local v13    # "key":Lcom/amazonaws/services/dynamodb/model/Key;
    .end local v22    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "sSListValue":Ljava/lang/String;
    .end local v25    # "stringWriter":Ljava/io/StringWriter;
    :catch_0
    move-exception v26

    .line 379
    .local v26, "t":Ljava/lang/Throwable;
    new-instance v30, Lcom/amazonaws/AmazonClientException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unable to marshall request to JSON: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v30

    .line 124
    .end local v26    # "t":Ljava/lang/Throwable;
    .restart local v9    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .restart local v13    # "key":Lcom/amazonaws/services/dynamodb/model/Key;
    .restart local v22    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "stringWriter":Ljava/io/StringWriter;
    :cond_8
    :try_start_1
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 127
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v15

    .line 128
    .local v15, "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_c

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_c

    .line 130
    const-string v30, "NS"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 131
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 133
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 134
    .local v16, "nSListValue":Ljava/lang/String;
    if-eqz v16, :cond_a

    .line 135
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_3

    .line 138
    .end local v16    # "nSListValue":Ljava/lang/String;
    :cond_b
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 141
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v5

    .line 142
    .local v5, "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v5, :cond_f

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_f

    .line 144
    const-string v30, "BS"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 145
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 147
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 148
    .local v6, "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v6, :cond_d

    .line 149
    invoke-virtual {v12, v6}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_4

    .line 152
    .end local v6    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_e
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 154
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 156
    .end local v5    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v15    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v19

    .line 157
    .local v19, "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v19, :cond_1d

    .line 159
    const-string v30, "RangeKeyElement"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 160
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 162
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_11

    .line 163
    const-string v30, "S"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 165
    :cond_11
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_12

    .line 166
    const-string v30, "N"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 168
    :cond_12
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v30

    if-eqz v30, :cond_13

    .line 169
    const-string v30, "B"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 172
    :cond_13
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v22

    .line 173
    .restart local v22    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_16

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_16

    .line 175
    const-string v30, "SS"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 176
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 178
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_14
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 179
    .restart local v23    # "sSListValue":Ljava/lang/String;
    if-eqz v23, :cond_14

    .line 180
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_5

    .line 183
    .end local v23    # "sSListValue":Ljava/lang/String;
    :cond_15
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 186
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_16
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v15

    .line 187
    .restart local v15    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_19

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_19

    .line 189
    const-string v30, "NS"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 190
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 192
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_17
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 193
    .restart local v16    # "nSListValue":Ljava/lang/String;
    if-eqz v16, :cond_17

    .line 194
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_6

    .line 197
    .end local v16    # "nSListValue":Ljava/lang/String;
    :cond_18
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 200
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_19
    invoke-virtual/range {v19 .. v19}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v5

    .line 201
    .restart local v5    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v5, :cond_1c

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_1c

    .line 203
    const-string v30, "BS"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 204
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 206
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 207
    .restart local v6    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v6, :cond_1a

    .line 208
    invoke-virtual {v12, v6}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_7

    .line 211
    .end local v6    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_1b
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 213
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 215
    .end local v5    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v15    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 217
    .end local v9    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .end local v19    # "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v30

    if-eqz v30, :cond_2f

    .line 218
    const-string v30, "AttributeUpdates"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 219
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getAttributeUpdates()Ljava/util/Map;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1f
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 221
    .local v4, "attributeUpdatesListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_1f

    .line 222
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 224
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 225
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;

    invoke-virtual/range {v30 .. v30}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v29

    .line 226
    .local v29, "value":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v29, :cond_2c

    .line 228
    const-string v30, "Value"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 229
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 231
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_20

    .line 232
    const-string v30, "S"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 234
    :cond_20
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_21

    .line 235
    const-string v30, "N"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 237
    :cond_21
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v30

    if-eqz v30, :cond_22

    .line 238
    const-string v30, "B"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 241
    :cond_22
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v22

    .line 242
    .restart local v22    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_25

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_25

    .line 244
    const-string v30, "SS"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 245
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 247
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_24

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 248
    .restart local v23    # "sSListValue":Ljava/lang/String;
    if-eqz v23, :cond_23

    .line 249
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_9

    .line 252
    .end local v23    # "sSListValue":Ljava/lang/String;
    :cond_24
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 255
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_25
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v15

    .line 256
    .restart local v15    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_28

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_28

    .line 258
    const-string v30, "NS"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 259
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 261
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_26
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_27

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 262
    .restart local v16    # "nSListValue":Ljava/lang/String;
    if-eqz v16, :cond_26

    .line 263
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_a

    .line 266
    .end local v16    # "nSListValue":Ljava/lang/String;
    :cond_27
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 269
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_28
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v5

    .line 270
    .restart local v5    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v5, :cond_2b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_2b

    .line 272
    const-string v30, "BS"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 273
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 275
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_29
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_2a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 276
    .restart local v6    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v6, :cond_29

    .line 277
    invoke-virtual {v12, v6}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_b

    .line 280
    .end local v6    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_2a
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 282
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_2b
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 284
    .end local v5    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v15    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2c
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;

    invoke-virtual/range {v30 .. v30}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_2d

    .line 285
    const-string v30, "Action"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v31

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;

    invoke-virtual/range {v30 .. v30}, Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;->getAction()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 287
    :cond_2d
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_8

    .line 290
    .end local v4    # "attributeUpdatesListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/AttributeValueUpdate;>;"
    .end local v29    # "value":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    :cond_2e
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 292
    :cond_2f
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v30

    if-eqz v30, :cond_40

    .line 293
    const-string v30, "Expected"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 294
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 295
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getExpected()Ljava/util/Map;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_30
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_3f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 296
    .local v8, "expectedListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_30

    .line 297
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 299
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 300
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;

    invoke-virtual/range {v30 .. v30}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->getValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v29

    .line 301
    .restart local v29    # "value":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v29, :cond_3d

    .line 303
    const-string v30, "Value"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 304
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 306
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_31

    .line 307
    const-string v30, "S"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 309
    :cond_31
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_32

    .line 310
    const-string v30, "N"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 312
    :cond_32
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v30

    if-eqz v30, :cond_33

    .line 313
    const-string v30, "B"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 316
    :cond_33
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v22

    .line 317
    .restart local v22    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_36

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_36

    .line 319
    const-string v30, "SS"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 320
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 322
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_34
    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_35

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 323
    .restart local v23    # "sSListValue":Ljava/lang/String;
    if-eqz v23, :cond_34

    .line 324
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_d

    .line 327
    .end local v23    # "sSListValue":Ljava/lang/String;
    :cond_35
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 330
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_36
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v15

    .line 331
    .restart local v15    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_39

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_39

    .line 333
    const-string v30, "NS"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 334
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 336
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_37
    :goto_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_38

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 337
    .restart local v16    # "nSListValue":Ljava/lang/String;
    if-eqz v16, :cond_37

    .line 338
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_e

    .line 341
    .end local v16    # "nSListValue":Ljava/lang/String;
    :cond_38
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 344
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_39
    invoke-virtual/range {v29 .. v29}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v5

    .line 345
    .restart local v5    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v5, :cond_3c

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v30

    if-lez v30, :cond_3c

    .line 347
    const-string v30, "BS"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 348
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 350
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_3a
    :goto_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_3b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 351
    .restart local v6    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v6, :cond_3a

    .line 352
    invoke-virtual {v12, v6}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_f

    .line 355
    .end local v6    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_3b
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 357
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_3c
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 359
    .end local v5    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v15    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3d
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;

    invoke-virtual/range {v30 .. v30}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v30

    if-eqz v30, :cond_3e

    .line 360
    const-string v30, "Exists"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v31

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;

    invoke-virtual/range {v30 .. v30}, Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;->isExists()Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 362
    :cond_3e
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_c

    .line 365
    .end local v8    # "expectedListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/ExpectedAttributeValue;>;"
    .end local v29    # "value":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    :cond_3f
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 367
    :cond_40
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_41

    .line 368
    const-string v30, "ReturnValues"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;->getReturnValues()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 371
    :cond_41
    invoke-virtual {v12}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 374
    invoke-virtual/range {v25 .. v25}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v24

    .line 375
    .local v24, "snippet":Ljava/lang/String;
    const-string v30, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 376
    .local v7, "content":[B
    new-instance v30, Lcom/amazonaws/util/StringInputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 377
    const-string v30, "Content-Length"

    array-length v0, v7

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 383
    return-object v20
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
    check-cast p1, Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/UpdateItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/UpdateItemRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
