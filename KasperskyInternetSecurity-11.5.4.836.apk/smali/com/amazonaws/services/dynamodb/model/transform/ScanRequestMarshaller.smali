.class public Lcom/amazonaws/services/dynamodb/model/transform/ScanRequestMarshaller;
.super Ljava/lang/Object;
.source "ScanRequestMarshaller.java"

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
        "Lcom/amazonaws/services/dynamodb/model/ScanRequest;",
        ">;",
        "Lcom/amazonaws/services/dynamodb/model/ScanRequest;",
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
    .line 336
    if-nez p1, :cond_0

    const-string p1, ""

    .line 337
    .end local p1    # "s":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/dynamodb/model/ScanRequest;)Lcom/amazonaws/Request;
    .locals 36
    .param p1, "scanRequest"    # Lcom/amazonaws/services/dynamodb/model/ScanRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/dynamodb/model/ScanRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/dynamodb/model/ScanRequest;",
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
    new-instance v23, Lcom/amazonaws/DefaultRequest;

    const-string v33, "AmazonDynamoDB"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 50
    .local v23, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/dynamodb/model/ScanRequest;>;"
    const-string v31, "DynamoDB_20111205.Scan"

    .line 51
    .local v31, "target":Ljava/lang/String;
    const-string v33, "X-Amz-Target"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v33, "Content-Type"

    const-string v34, "application/x-amz-json-1.0"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v33, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    move-object/from16 v0, v23

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
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    move/from16 v0, v17

    if-ge v13, v0, :cond_2

    aget-object v24, v3, v13

    .line 67
    .local v24, "s":Ljava/lang/String;
    const-string v33, "="

    move-object/from16 v0, v24

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

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/16 v33, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v17    # "len$":I
    .end local v20    # "nameValuePair":[Ljava/lang/String;
    .end local v21    # "queryString":Ljava/lang/String;
    .end local v24    # "s":Ljava/lang/String;
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
    new-instance v16, Lcom/amazonaws/util/json/JSONWriter;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;-><init>(Ljava/io/Writer;)V

    .line 86
    .local v16, "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_3

    .line 89
    const-string v33, "TableName"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getTableName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 92
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getAttributesToGet()Ljava/util/List;

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

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    .line 327
    .end local v6    # "attributesToGetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "attributesToGetListValue":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .end local v29    # "stringWriter":Ljava/io/StringWriter;
    :catch_0
    move-exception v30

    .line 328
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
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v16    # "jsonWriter":Lcom/amazonaws/util/json/JSONWriter;
    .restart local v29    # "stringWriter":Ljava/io/StringWriter;
    :cond_5
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 105
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v33

    if-eqz v33, :cond_7

    .line 106
    const-string v33, "Limit"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 108
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v33

    if-eqz v33, :cond_8

    .line 109
    const-string v33, "Count"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->isCount()Ljava/lang/Boolean;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 111
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v33

    if-eqz v33, :cond_1b

    .line 112
    const-string v33, "ScanFilter"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 113
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getScanFilter()Ljava/util/Map;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_9
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_1a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 115
    .local v27, "scanFilterListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/Condition;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    if-eqz v33, :cond_9

    .line 116
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 118
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 120
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/amazonaws/services/dynamodb/model/Condition;

    invoke-virtual/range {v33 .. v33}, Lcom/amazonaws/services/dynamodb/model/Condition;->getAttributeValueList()Ljava/util/List;

    move-result-object v4

    .line 121
    .local v4, "attributeValueListList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    if-eqz v4, :cond_18

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_18

    .line 123
    const-string v33, "AttributeValueList"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 124
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 126
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_a
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_17

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    .line 127
    .local v5, "attributeValueListListValue":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v5, :cond_a

    .line 128
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 129
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_b

    .line 130
    const-string v33, "S"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 132
    :cond_b
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_c

    .line 133
    const-string v33, "N"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 135
    :cond_c
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v33

    if-eqz v33, :cond_d

    .line 136
    const-string v33, "B"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 139
    :cond_d
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v25

    .line 140
    .local v25, "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v25, :cond_10

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_10

    .line 142
    const-string v33, "SS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 143
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 145
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 146
    .local v26, "sSListValue":Ljava/lang/String;
    if-eqz v26, :cond_e

    .line 147
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_5

    .line 150
    .end local v26    # "sSListValue":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 153
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v18

    .line 154
    .local v18, "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_13

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_13

    .line 156
    const-string v33, "NS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 157
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 159
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_11
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_12

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 160
    .local v19, "nSListValue":Ljava/lang/String;
    if-eqz v19, :cond_11

    .line 161
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_6

    .line 164
    .end local v19    # "nSListValue":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 167
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_13
    invoke-virtual {v5}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v8

    .line 168
    .local v8, "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v8, :cond_16

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_16

    .line 170
    const-string v33, "BS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 171
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 173
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_14
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_15

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 174
    .local v9, "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v9, :cond_14

    .line 175
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_7

    .line 178
    .end local v9    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_15
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 180
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_16
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_4

    .line 183
    .end local v5    # "attributeValueListListValue":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .end local v8    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v18    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 185
    :cond_18
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/amazonaws/services/dynamodb/model/Condition;

    invoke-virtual/range {v33 .. v33}, Lcom/amazonaws/services/dynamodb/model/Condition;->getComparisonOperator()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_19

    .line 186
    const-string v33, "ComparisonOperator"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v34

    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/amazonaws/services/dynamodb/model/Condition;

    invoke-virtual/range {v33 .. v33}, Lcom/amazonaws/services/dynamodb/model/Condition;->getComparisonOperator()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 188
    :cond_19
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    goto/16 :goto_3

    .line 191
    .end local v4    # "attributeValueListList":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/dynamodb/model/AttributeValue;>;"
    .end local v27    # "scanFilterListValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/dynamodb/model/Condition;>;"
    :cond_1a
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 193
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/dynamodb/model/ScanRequest;->getExclusiveStartKey()Lcom/amazonaws/services/dynamodb/model/Key;

    move-result-object v11

    .line 194
    .local v11, "exclusiveStartKey":Lcom/amazonaws/services/dynamodb/model/Key;
    if-eqz v11, :cond_36

    .line 196
    const-string v33, "ExclusiveStartKey"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 197
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 199
    invoke-virtual {v11}, Lcom/amazonaws/services/dynamodb/model/Key;->getHashKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v12

    .line 200
    .local v12, "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v12, :cond_28

    .line 202
    const-string v33, "HashKeyElement"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 203
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 205
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_1c

    .line 206
    const-string v33, "S"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 208
    :cond_1c
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_1d

    .line 209
    const-string v33, "N"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 211
    :cond_1d
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v33

    if-eqz v33, :cond_1e

    .line 212
    const-string v33, "B"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 215
    :cond_1e
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v25

    .line 216
    .restart local v25    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v25, :cond_21

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_21

    .line 218
    const-string v33, "SS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 219
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 221
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_20

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 222
    .restart local v26    # "sSListValue":Ljava/lang/String;
    if-eqz v26, :cond_1f

    .line 223
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_8

    .line 226
    .end local v26    # "sSListValue":Ljava/lang/String;
    :cond_20
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 229
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_21
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v18

    .line 230
    .restart local v18    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_24

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_24

    .line 232
    const-string v33, "NS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 233
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 235
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_22
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_23

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 236
    .restart local v19    # "nSListValue":Ljava/lang/String;
    if-eqz v19, :cond_22

    .line 237
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_9

    .line 240
    .end local v19    # "nSListValue":Ljava/lang/String;
    :cond_23
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 243
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_24
    invoke-virtual {v12}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v8

    .line 244
    .restart local v8    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v8, :cond_27

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_27

    .line 246
    const-string v33, "BS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 247
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 249
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_25
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_26

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 250
    .restart local v9    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v9, :cond_25

    .line 251
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_a

    .line 254
    .end local v9    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_26
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 256
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_27
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 258
    .end local v8    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v18    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_28
    invoke-virtual {v11}, Lcom/amazonaws/services/dynamodb/model/Key;->getRangeKeyElement()Lcom/amazonaws/services/dynamodb/model/AttributeValue;

    move-result-object v22

    .line 259
    .local v22, "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    if-eqz v22, :cond_35

    .line 261
    const-string v33, "RangeKeyElement"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 262
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->object()Lcom/amazonaws/util/json/JSONWriter;

    .line 264
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_29

    .line 265
    const-string v33, "S"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getS()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 267
    :cond_29
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_2a

    .line 268
    const-string v33, "N"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getN()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    .line 270
    :cond_2a
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v33

    if-eqz v33, :cond_2b

    .line 271
    const-string v33, "B"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v33

    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getB()Ljava/nio/ByteBuffer;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    .line 274
    :cond_2b
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getSS()Ljava/util/List;

    move-result-object v25

    .line 275
    .restart local v25    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v25, :cond_2e

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_2e

    .line 277
    const-string v33, "SS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 278
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 280
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_2d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 281
    .restart local v26    # "sSListValue":Ljava/lang/String;
    if-eqz v26, :cond_2c

    .line 282
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_b

    .line 285
    .end local v26    # "sSListValue":Ljava/lang/String;
    :cond_2d
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 288
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_2e
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getNS()Ljava/util/List;

    move-result-object v18

    .line 289
    .restart local v18    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_31

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_31

    .line 291
    const-string v33, "NS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 292
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 294
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_2f
    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_30

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 295
    .restart local v19    # "nSListValue":Ljava/lang/String;
    if-eqz v19, :cond_2f

    .line 296
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_c

    .line 299
    .end local v19    # "nSListValue":Ljava/lang/String;
    :cond_30
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 302
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_31
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/services/dynamodb/model/AttributeValue;->getBS()Ljava/util/List;

    move-result-object v8

    .line 303
    .restart local v8    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    if-eqz v8, :cond_34

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_34

    .line 305
    const-string v33, "BS"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 306
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->array()Lcom/amazonaws/util/json/JSONWriter;

    .line 308
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_32
    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_33

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 309
    .restart local v9    # "bSListValue":Ljava/nio/ByteBuffer;
    if-eqz v9, :cond_32

    .line 310
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;

    goto :goto_d

    .line 313
    .end local v9    # "bSListValue":Ljava/nio/ByteBuffer;
    :cond_33
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endArray()Lcom/amazonaws/util/json/JSONWriter;

    .line 315
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_34
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 317
    .end local v8    # "bSList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .end local v18    # "nSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "sSList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_35
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 320
    .end local v12    # "hashKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    .end local v22    # "rangeKeyElement":Lcom/amazonaws/services/dynamodb/model/AttributeValue;
    :cond_36
    invoke-virtual/range {v16 .. v16}, Lcom/amazonaws/util/json/JSONWriter;->endObject()Lcom/amazonaws/util/json/JSONWriter;

    .line 323
    invoke-virtual/range {v29 .. v29}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v28

    .line 324
    .local v28, "snippet":Ljava/lang/String;
    const-string v33, "UTF-8"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 325
    .local v10, "content":[B
    new-instance v33, Lcom/amazonaws/util/StringInputStream;

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 326
    const-string v33, "Content-Length"

    array-length v0, v10

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 332
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
    check-cast p1, Lcom/amazonaws/services/dynamodb/model/ScanRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodb/model/transform/ScanRequestMarshaller;->marshall(Lcom/amazonaws/services/dynamodb/model/ScanRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
