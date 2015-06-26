.class public Lcom/amazonaws/services/s3/internal/RestUtils;
.super Ljava/lang/Object;
.source "RestUtils.java"


# static fields
.field private static final SIGNED_PARAMETERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "acl"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "torrent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "logging"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "policy"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "requestPayment"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "versioning"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "versions"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "versionId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "notification"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "uploadId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "uploads"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "partNumber"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "website"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "delete"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lifecycle"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "tagging"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cors"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "restore"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "response-cache-control"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "response-content-disposition"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "response-content-encoding"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "response-content-language"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "response-content-type"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "response-expires"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/RestUtils;->SIGNED_PARAMETERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeS3CanonicalString(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "resource"    # Ljava/lang/String;
    .param p3, "expires"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazonaws/Request",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<TT;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v3, "buf":Ljava/lang/StringBuilder;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v6

    .line 65
    .local v6, "headersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 66
    .local v9, "interestingHeaders":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v19

    if-lez v19, :cond_2

    .line 67
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 68
    .local v5, "headerIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 69
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 70
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 71
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 73
    .local v18, "value":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 74
    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 77
    .local v12, "lk":Ljava/lang/String;
    const-string v19, "content-type"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "content-md5"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "date"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "x-amz-"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 80
    :cond_1
    move-object/from16 v0, v18

    invoke-interface {v9, v12, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "headerIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10    # "key":Ljava/lang/String;
    .end local v12    # "lk":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :cond_2
    const-string v19, "x-amz-date"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 87
    const-string v19, "date"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v9, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_3
    if-eqz p3, :cond_4

    .line 93
    const-string v19, "date"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v9, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_4
    const-string v19, "content-type"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 99
    const-string v19, "content-type"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v9, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_5
    const-string v19, "content-md5"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 102
    const-string v19, "content-md5"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v9, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_6
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 108
    .local v13, "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string v20, "x-amz-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 109
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v9, v0, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 114
    .end local v13    # "parameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    invoke-interface {v9}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 115
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 116
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 117
    .restart local v10    # "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    .line 119
    .local v18, "value":Ljava/lang/Object;
    const-string v19, "x-amz-"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 120
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3a

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    :goto_3
    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 122
    :cond_9
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 128
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "key":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    .line 131
    .local v15, "parameterNames":[Ljava/lang/String;
    invoke-static {v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 132
    const/16 v17, 0x3f

    .line 133
    .local v17, "separator":C
    move-object v2, v15

    .local v2, "arr$":[Ljava/lang/String;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4
    if-ge v8, v11, :cond_d

    aget-object v14, v2, v8

    .line 135
    .local v14, "parameterName":Ljava/lang/String;
    sget-object v19, Lcom/amazonaws/services/s3/internal/RestUtils;->SIGNED_PARAMETERS:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 133
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 137
    :cond_b
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 140
    .local v16, "parameterValue":Ljava/lang/String;
    if-eqz v16, :cond_c

    .line 141
    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_c
    const/16 v17, 0x26

    goto :goto_5

    .line 147
    .end local v14    # "parameterName":Ljava/lang/String;
    .end local v16    # "parameterValue":Ljava/lang/String;
    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19
.end method
