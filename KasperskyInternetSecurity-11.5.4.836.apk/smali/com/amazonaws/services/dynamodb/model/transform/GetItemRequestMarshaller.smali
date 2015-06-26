.class public Lcom/amazonaws/services/dynamodb/model/transform/GetItemRequestMarshaller;
.super Ljava/lang/Object;
.source "GetItemRequestMarshaller.java"

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
        "Lcom/amazonaws/services/dynamodb/model/GetItemRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodb/model/GetItemRequest;",
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
    .line 251
    if-nez p1, :cond_0

    const-string p1, ""

    .line 252
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodb/model/GetItemRequest;)Lcom/amazonaws/Request;
    .locals 31
    .param p1, "getItemRequest"    # Lcom/amazonaws/services/dynamodb/model/GetItemRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/GetItemRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/GetItemRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v28, Lcom/amazonaws/AmazonClientException;

    const-string v29, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v28 .. v29}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 49
    :cond_0
    new-instance v19, Lcom/amazonaws/DefaultRequest;

    const-string v28, "AmazonDynamoDB"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 50
    .local v19, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/GetItemRequest;>;"
    const-string v26, "DynamoDB_20111205.GetItem"

    .line 51
    .local v26, "target":Ljava/lang/String;
    const-string v28, "X-Amz-Target"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v28, "Content-Type"

    const-string v29, "application/x-amz-json-1.0"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v28, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 58
    const-string v27, ""

    .line 60
    .local v27, "uriResourcePath":Ljava/lang/String;
    const-string v28, "//"

    const-string v29, "/"

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 62
    const-string v28, "?"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 63
    const-string v28, "?"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 64
    .local v17, "queryString":Ljava/lang/String;
    const/16 v28, 0x0

    const-string v29, "?"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v29

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 66
    const-string v28, "[;&]"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v13, :cond_2

    aget-object v20, v3, v10

    .line 67
    .local v20, "s":Ljava/lang/String;
    const-string v28, "="

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 68
    .local v16, "nameValuePair":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 69
    const/16 v28, 0x0

    aget-object v28, v16, v28

    const/16 v29, 0x1

    aget-object v29, v16, v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/16 v28, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
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
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_3

    .line 89
    const-string v28, "TableName"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getTableName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 91
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v12

    .line 92
    .local v12, "key":Lcom/amazonaws/services/dynamodb/model/Key;
    if-eqz v12, :cond_1e

    .line 94
    const-string v28, "Key"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 95
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 97
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v9

    .line 98
    .local v9, "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v9, :cond_10

    .line 100
    const-string v28, "HashKeyElement"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 101
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 103
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_4

    .line 104
    const-string v28, "S"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v28

    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 106
    :cond_4
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_5

    .line 107
    const-string v28, "N"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v28

    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 109
    :cond_5
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v28

    if-eqz v28, :cond_6

    .line 110
    const-string v28, "B"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v28

    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 113
    :cond_6
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v21

    .line 114
    .local v21, "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v21, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_9

    .line 116
    const-string v28, "SS"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 117
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 119
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    .line 242
    .end local v9    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .end local v12    # "key":Lcom/amazonaws/services/dynamodb/model/Key;
    .end local v21    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "sSListValue":Ljava/lang/String;
    .end local v24    # "stringWriter":Ljava/io/StringWriter;
    :catch_0
    move-exception v25

    .line 243
    .local v25, "t":Ljava/lang/Throwable;
    new-instance v28, Lcom/amazonaws/AmazonClientException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unable to marshall request to JSON: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v28

    .line 124
    .end local v25    # "t":Ljava/lang/Throwable;
    .restart local v9    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .restart local v12    # "key":Lcom/amazonaws/services/dynamodb/model/Key;
    .restart local v21    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "stringWriter":Ljava/io/StringWriter;
    :cond_8
    :try_start_1
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 127
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v14

    .line 128
    .local v14, "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_c

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_c

    .line 130
    const-string v28, "NS"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 131
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 133
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {v9}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v6

    .line 142
    .local v6, "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v6, :cond_f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_f

    .line 144
    const-string v28, "BS"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 145
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 147
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 148
    .local v7, "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v7, :cond_d

    .line 149
    invoke-virtual {v11, v7}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_4

    .line 152
    .end local v7    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_e
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 154
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 156
    .end local v6    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v14    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v18

    .line 157
    .local v18, "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v18, :cond_1d

    .line 159
    const-string v28, "RangeKeyElement"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 160
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 162
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_11

    .line 163
    const-string v28, "S"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 165
    :cond_11
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_12

    .line 166
    const-string v28, "N"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 168
    :cond_12
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v28

    if-eqz v28, :cond_13

    .line 169
    const-string v28, "B"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 172
    :cond_13
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v21

    .line 173
    .restart local v21    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v21, :cond_16

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_16

    .line 175
    const-string v28, "SS"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 176
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 178
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_14
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_16
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v14

    .line 187
    .restart local v14    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_19

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_19

    .line 189
    const-string v28, "NS"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 190
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 192
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_17
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_19
    invoke-virtual/range {v18 .. v18}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v6

    .line 201
    .restart local v6    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v6, :cond_1c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_1c

    .line 203
    const-string v28, "BS"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 204
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 206
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 207
    .restart local v7    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v7, :cond_1a

    .line 208
    invoke-virtual {v11, v7}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_7

    .line 211
    .end local v7    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_1b
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 213
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 215
    .end local v6    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v14    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 218
    .end local v9    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .end local v18    # "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v4

    .line 219
    .local v4, "attributesToGetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_21

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_21

    .line 221
    const-string v28, "AttributesToGet"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 222
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 224
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 225
    .local v5, "attributesToGetListValue":Ljava/lang/String;
    if-eqz v5, :cond_1f

    .line 226
    invoke-virtual {v11, v5}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_8

    .line 229
    .end local v5    # "attributesToGetListValue":Ljava/lang/String;
    :cond_20
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 231
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v28

    if-eqz v28, :cond_22

    .line 232
    const-string v28, "ConsistentRead"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 235
    :cond_22
    invoke-virtual {v11}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 238
    invoke-virtual/range {v24 .. v24}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v23

    .line 239
    .local v23, "snippet":Ljava/lang/String;
    const-string v28, "UTF-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 240
    .local v8, "content":[B
    new-instance v28, Lcom/amazonaws/util/StringInputStream;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 241
    const-string v28, "Content-Length"

    array-length v0, v8

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
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
    check-cast p1, Lcom/amazonaws/services/dynamodb/model/GetItemRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/GetItemRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/GetItemRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
