.class public Lcom/amazonaws/services/dynamodb/model/transform/QueryRequestMarshaller;
.super Ljava/lang/Object;
.source "QueryRequestMarshaller.java"

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
        "Lcom/amazonaws/services/dynamodb/model/QueryRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodb/model/QueryRequest;",
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
    .line 396
    if-nez p1, :cond_0

    const-string p1, ""

    .line 397
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodb/model/QueryRequest;)Lcom/amazonaws/Request;
    .locals 36
    .param p1, "queryRequest"    # Lcom/amazonaws/services/dynamodb/model/QueryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/QueryRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/QueryRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v33, Lcom/amazonaws/AmazonClientException;

    const-string v34, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v33 .. v34}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 49
    :cond_0
    new-instance v24, Lcom/amazonaws/DefaultRequest;

    const-string v33, "AmazonDynamoDB"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 50
    .local v24, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/QueryRequest;>;"
    const-string v31, "DynamoDB_20111205.Query"

    .line 51
    .local v31, "target":Ljava/lang/String;
    const-string v33, "X-Amz-Target"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v33, "Content-Type"

    const-string v34, "application/x-amz-json-1.0"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v33, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setHttpMethod(Lcom/amazonaws/http/HttpMethodName;)V

    .line 58
    const-string v32, ""

    .line 60
    .local v32, "uriResourcePath":Ljava/lang/String;
    const-string v33, "//"

    const-string v34, "/"

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 62
    const-string v33, "?"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 63
    const-string v33, "?"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    add-int/lit8 v33, v33, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 64
    .local v21, "queryString":Ljava/lang/String;
    const/16 v33, 0x0

    const-string v34, "?"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 66
    const-string v33, "[;&]"

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    aget-object v25, v3, v14

    .line 67
    .local v25, "s":Ljava/lang/String;
    const-string v33, "="

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 68
    .local v20, "nameValuePair":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1

    .line 69
    const/16 v33, 0x0

    aget-object v33, v20, v33

    const/16 v34, 0x1

    aget-object v34, v20, v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    .end local v20    # "nameValuePair":[Ljava/lang/String;
    .end local v21    # "queryString":Ljava/lang/String;
    .end local v25    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 81
    :try_start_0
    new-instance v29, Ljava/io/StringWriter;

    invoke-direct/range {v29 .. v29}, Ljava/io/StringWriter;-><init>()V

    .line 82
    .local v29, "stringWriter":Ljava/io/StringWriter;
    new-instance v16, Lcom/amazonaws/util/json/JSONWriter;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    .line 86
    .local v16, "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_3

    .line 89
    const-string v33, "TableName"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getTableName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 92
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getAttributesToGet()Ljava/util/List;

    move-result-object v6

    .line 93
    .local v6, "attributesToGetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_6

    .line 95
    const-string v33, "AttributesToGet"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 96
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 98
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 99
    .local v7, "attributesToGetListValue":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 100
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 387
    .end local v6    # "attributesToGetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "attributesToGetListValue":Ljava/lang/String;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .end local v29    # "stringWriter":Ljava/io/StringWriter;
    :catch_0
    move-exception v30

    .line 388
    .local v30, "t":Ljava/lang/Throwable;
    new-instance v33, Lcom/amazonaws/AmazonClientException;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Unable to marshall request to JSON: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v33

    .line 103
    .end local v30    # "t":Ljava/lang/Throwable;
    .restart local v6    # "attributesToGetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v16    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .restart local v29    # "stringWriter":Ljava/io/StringWriter;
    :cond_5
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 105
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v33

    if-eqz v33, :cond_7

    .line 106
    const-string v33, "Limit"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 108
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v33

    if-eqz v33, :cond_8

    .line 109
    const-string v33, "ConsistentRead"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isConsistentRead()Ljava/lang/Boolean;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 111
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v33

    if-eqz v33, :cond_9

    .line 112
    const-string v33, "Count"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 114
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getHashKeyValue()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v13

    .line 115
    .local v13, "hashKeyValue":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v13, :cond_16

    .line 117
    const-string v33, "HashKeyValue"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 118
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 120
    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_a

    .line 121
    const-string v33, "S"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 123
    :cond_a
    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_b

    .line 124
    const-string v33, "N"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 126
    :cond_b
    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v33

    if-eqz v33, :cond_c

    .line 127
    const-string v33, "B"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 130
    :cond_c
    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v26

    .line 131
    .local v26, "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_f

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_f

    .line 133
    const-string v33, "SS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 134
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 136
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 137
    .local v27, "sSListValue":Ljava/lang/String;
    if-eqz v27, :cond_d

    .line 138
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_3

    .line 141
    .end local v27    # "sSListValue":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 144
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v18

    .line 145
    .local v18, "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_12

    .line 147
    const-string v33, "NS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 148
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 150
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_10
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 151
    .local v19, "nSListValue":Ljava/lang/String;
    if-eqz v19, :cond_10

    .line 152
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_4

    .line 155
    .end local v19    # "nSListValue":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 158
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_12
    invoke-virtual {v13}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v8

    .line 159
    .local v8, "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v8, :cond_15

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_15

    .line 161
    const-string v33, "BS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 162
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 164
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_13
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 165
    .local v9, "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v9, :cond_13

    .line 166
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_5

    .line 169
    .end local v9    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_14
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 171
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_15
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 173
    .end local v8    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v18    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getRangeKeyCondition()Lcom/amazonaws/services/dynamodb/model/Condition;

    move-result-object v22

    .line 174
    .local v22, "rangeKeyCondition":Lcom/amazonaws/services/dynamodb/model/Condition;
    if-eqz v22, :cond_27

    .line 176
    const-string v33, "RangeKeyCondition"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 177
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 180
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/Condition;->getAttributeValueList()Ljava/util/List;

    move-result-object v4

    .line 181
    .local v4, "attributeValueListList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    if-eqz v4, :cond_25

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_25

    .line 183
    const-string v33, "AttributeValueList"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 184
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 186
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_17
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_24

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 187
    .local v5, "attributeValueListListValue":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v5, :cond_17

    .line 188
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 189
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_18

    .line 190
    const-string v33, "S"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 192
    :cond_18
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_19

    .line 193
    const-string v33, "N"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 195
    :cond_19
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v33

    if-eqz v33, :cond_1a

    .line 196
    const-string v33, "B"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 199
    :cond_1a
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v26

    .line 200
    .restart local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_1d

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_1d

    .line 202
    const-string v33, "SS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 203
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 205
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 206
    .restart local v27    # "sSListValue":Ljava/lang/String;
    if-eqz v27, :cond_1b

    .line 207
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_7

    .line 210
    .end local v27    # "sSListValue":Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 213
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v18

    .line 214
    .restart local v18    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_20

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_20

    .line 216
    const-string v33, "NS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 217
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 219
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 220
    .restart local v19    # "nSListValue":Ljava/lang/String;
    if-eqz v19, :cond_1e

    .line 221
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_8

    .line 224
    .end local v19    # "nSListValue":Ljava/lang/String;
    :cond_1f
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 227
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_20
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v8

    .line 228
    .restart local v8    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v8, :cond_23

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_23

    .line 230
    const-string v33, "BS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 231
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 233
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_21
    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_22

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 234
    .restart local v9    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v9, :cond_21

    .line 235
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_9

    .line 238
    .end local v9    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_22
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 240
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_23
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_6

    .line 243
    .end local v5    # "attributeValueListListValue":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .end local v8    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v18    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_24
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 245
    :cond_25
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/Condition;->getComparisonOperator()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_26

    .line 246
    const-string v33, "ComparisonOperator"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/Condition;->getComparisonOperator()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 248
    :cond_26
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 250
    .end local v4    # "attributeValueListList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v33

    if-eqz v33, :cond_28

    .line 251
    const-string v33, "ScanIndexForward"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->isScanIndexForward()Ljava/lang/Boolean;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 253
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/QueryRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v11

    .line 254
    .local v11, "exclusiveStartKey":Lcom/amazonaws/services/dynamodb/model/Key;
    if-eqz v11, :cond_43

    .line 256
    const-string v33, "ExclusiveStartKey"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 257
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 259
    invoke-virtual {v11}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v12

    .line 260
    .local v12, "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v12, :cond_35

    .line 262
    const-string v33, "HashKeyElement"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 263
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 265
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_29

    .line 266
    const-string v33, "S"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 268
    :cond_29
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_2a

    .line 269
    const-string v33, "N"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 271
    :cond_2a
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v33

    if-eqz v33, :cond_2b

    .line 272
    const-string v33, "B"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 275
    :cond_2b
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v26

    .line 276
    .restart local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_2e

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_2e

    .line 278
    const-string v33, "SS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 279
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 281
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_2d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 282
    .restart local v27    # "sSListValue":Ljava/lang/String;
    if-eqz v27, :cond_2c

    .line 283
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_a

    .line 286
    .end local v27    # "sSListValue":Ljava/lang/String;
    :cond_2d
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 289
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_2e
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v18

    .line 290
    .restart local v18    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_31

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_31

    .line 292
    const-string v33, "NS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 293
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 295
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_2f
    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_30

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 296
    .restart local v19    # "nSListValue":Ljava/lang/String;
    if-eqz v19, :cond_2f

    .line 297
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_b

    .line 300
    .end local v19    # "nSListValue":Ljava/lang/String;
    :cond_30
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 303
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_31
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v8

    .line 304
    .restart local v8    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v8, :cond_34

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_34

    .line 306
    const-string v33, "BS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 307
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 309
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_32
    :goto_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_33

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 310
    .restart local v9    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v9, :cond_32

    .line 311
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_c

    .line 314
    .end local v9    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_33
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 316
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_34
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 318
    .end local v8    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v18    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_35
    invoke-virtual {v11}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v23

    .line 319
    .local v23, "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v23, :cond_42

    .line 321
    const-string v33, "RangeKeyElement"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 322
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 324
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_36

    .line 325
    const-string v33, "S"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 327
    :cond_36
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_37

    .line 328
    const-string v33, "N"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 330
    :cond_37
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v33

    if-eqz v33, :cond_38

    .line 331
    const-string v33, "B"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 334
    :cond_38
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v26

    .line 335
    .restart local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v26, :cond_3b

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_3b

    .line 337
    const-string v33, "SS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 338
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 340
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_39
    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_3a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 341
    .restart local v27    # "sSListValue":Ljava/lang/String;
    if-eqz v27, :cond_39

    .line 342
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_d

    .line 345
    .end local v27    # "sSListValue":Ljava/lang/String;
    :cond_3a
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 348
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_3b
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v18

    .line 349
    .restart local v18    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_3e

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_3e

    .line 351
    const-string v33, "NS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 352
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 354
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_3c
    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_3d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 355
    .restart local v19    # "nSListValue":Ljava/lang/String;
    if-eqz v19, :cond_3c

    .line 356
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_e

    .line 359
    .end local v19    # "nSListValue":Ljava/lang/String;
    :cond_3d
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 362
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_3e
    invoke-virtual/range {v23 .. v23}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v8

    .line 363
    .restart local v8    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v8, :cond_41

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_41

    .line 365
    const-string v33, "BS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 366
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 368
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_3f
    :goto_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_40

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 369
    .restart local v9    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v9, :cond_3f

    .line 370
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_f

    .line 373
    .end local v9    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_40
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 375
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_41
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 377
    .end local v8    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v18    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_42
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 380
    .end local v12    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .end local v23    # "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    :cond_43
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 383
    invoke-virtual/range {v29 .. v29}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v28

    .line 384
    .local v28, "snippet":Ljava/lang/String;
    const-string v33, "UTF-8"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 385
    .local v10, "content":[B
    new-instance v33, Lcom/amazonaws/util/StringInputStream;

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 386
    const-string v33, "Content-Length"

    array-length v0, v10

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 392
    return-object v24
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
    check-cast p1, Lcom/amazonaws/services/dynamodb/model/QueryRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/QueryRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/QueryRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
