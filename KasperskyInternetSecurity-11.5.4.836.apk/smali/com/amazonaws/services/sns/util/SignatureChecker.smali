.class public Lcom/amazonaws/services/sns/util/SignatureChecker;
.super Ljava/lang/Object;
.source "SignatureChecker.java"


# instance fields
.field private final MESSAGE:Ljava/lang/String;

.field private final MESSAGE_ID:Ljava/lang/String;

.field private final NOTIFICATION_TYPE:Ljava/lang/String;

.field private final SIGNATURE:Ljava/lang/String;

.field private final SIGNATURE_VERSION:Ljava/lang/String;

.field private final SUBJECT:Ljava/lang/String;

.field private final SUBSCRIBE_TYPE:Ljava/lang/String;

.field private final SUBSCRIBE_URL:Ljava/lang/String;

.field private final TIMESTAMP:Ljava/lang/String;

.field private final TOKEN:Ljava/lang/String;

.field private final TOPIC:Ljava/lang/String;

.field private final TYPE:Ljava/lang/String;

.field private final UNSUBSCRIBE_TYPE:Ljava/lang/String;

.field private sigChecker:Ljava/security/Signature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "Notification"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->NOTIFICATION_TYPE:Ljava/lang/String;

    .line 42
    const-string v0, "SubscriptionConfirmation"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->SUBSCRIBE_TYPE:Ljava/lang/String;

    .line 43
    const-string v0, "UnsubscriptionConfirmation"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->UNSUBSCRIBE_TYPE:Ljava/lang/String;

    .line 45
    const-string v0, "Type"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->TYPE:Ljava/lang/String;

    .line 46
    const-string v0, "SubscribeURL"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->SUBSCRIBE_URL:Ljava/lang/String;

    .line 47
    const-string v0, "Message"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->MESSAGE:Ljava/lang/String;

    .line 48
    const-string v0, "Timestamp"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->TIMESTAMP:Ljava/lang/String;

    .line 49
    const-string v0, "SignatureVersion"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->SIGNATURE_VERSION:Ljava/lang/String;

    .line 50
    const-string v0, "Signature"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->SIGNATURE:Ljava/lang/String;

    .line 51
    const-string v0, "MessageId"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->MESSAGE_ID:Ljava/lang/String;

    .line 52
    const-string v0, "Subject"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->SUBJECT:Ljava/lang/String;

    .line 53
    const-string v0, "TopicArn"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->TOPIC:Ljava/lang/String;

    .line 54
    const-string v0, "Token"

    iput-object v0, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->TOKEN:Ljava/lang/String;

    return-void
.end method

.method private parseJSON(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "jsonmessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v3, "parsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v2}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    .line 139
    .local v2, "jf":Lorg/codehaus/jackson/JsonFactory;
    :try_start_0
    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v4

    .line 140
    .local v4, "parser":Lorg/codehaus/jackson/JsonParser;
    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 141
    :goto_0
    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v6

    sget-object v7, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v6, v7, :cond_0

    .line 142
    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "fieldname":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 144
    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 147
    .end local v1    # "fieldname":Ljava/lang/String;
    .end local v4    # "parser":Lorg/codehaus/jackson/JsonParser;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lorg/codehaus/jackson/JsonParseException;
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->printStackTrace()V

    .line 153
    .end local v0    # "e":Lorg/codehaus/jackson/JsonParseException;
    :cond_0
    :goto_1
    return-object v3

    .line 150
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private publishMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "parsedMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 158
    .local v5, "signables":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x6

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Message"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "MessageId"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "Subject"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "Type"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string v7, "Timestamp"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string v7, "TopicArn"

    aput-object v7, v3, v6

    .line 159
    .local v3, "keys":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 160
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 161
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method private subscribeMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "parsedMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 169
    .local v5, "signables":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x7

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "SubscribeURL"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "Message"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "MessageId"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "Type"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string v7, "Timestamp"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string v7, "Token"

    aput-object v7, v3, v6

    const/4 v6, 0x6

    const-string v7, "TopicArn"

    aput-object v7, v3, v6

    .line 170
    .local v3, "keys":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 171
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-object v5
.end method


# virtual methods
.method protected stringToSign(Ljava/util/SortedMap;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "signables":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {p1, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    .end local v1    # "k":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method public verifyMessageSignature(Ljava/lang/String;Ljava/security/PublicKey;)Z
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/security/PublicKey;

    .prologue
    .line 71
    const/4 v4, 0x0

    .line 73
    .local v4, "valid":Z
    invoke-direct {p0, p1}, Lcom/amazonaws/services/sns/util/SignatureChecker;->parseJSON(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 74
    .local v0, "parsed":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "SignatureVersion"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 75
    .local v5, "version":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    const-string v6, "Type"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 78
    .local v3, "type":Ljava/lang/String;
    const-string v6, "Signature"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    .local v1, "signature":Ljava/lang/String;
    const-string v2, ""

    .line 80
    .local v2, "signed":Ljava/lang/String;
    const-string v6, "Notification"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    invoke-direct {p0, v0}, Lcom/amazonaws/services/sns/util/SignatureChecker;->publishMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/amazonaws/services/sns/util/SignatureChecker;->stringToSign(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object v2

    .line 89
    :goto_0
    invoke-virtual {p0, v2, v1, p2}, Lcom/amazonaws/services/sns/util/SignatureChecker;->verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Z

    move-result v4

    .line 91
    .end local v1    # "signature":Ljava/lang/String;
    .end local v2    # "signed":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    return v4

    .line 82
    .restart local v1    # "signature":Ljava/lang/String;
    .restart local v2    # "signed":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    const-string v6, "SubscriptionConfirmation"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 83
    invoke-direct {p0, v0}, Lcom/amazonaws/services/sns/util/SignatureChecker;->subscribeMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/amazonaws/services/sns/util/SignatureChecker;->stringToSign(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 84
    :cond_2
    const-string v6, "UnsubscriptionConfirmation"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 85
    invoke-direct {p0, v0}, Lcom/amazonaws/services/sns/util/SignatureChecker;->subscribeMessageValues(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/amazonaws/services/sns/util/SignatureChecker;->stringToSign(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 87
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot process message of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Z
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "publicKey"    # Ljava/security/PublicKey;

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 109
    .local v1, "sigbytes":[B
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 110
    const-string v2, "SHA1withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->sigChecker:Ljava/security/Signature;

    .line 111
    iget-object v2, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->sigChecker:Ljava/security/Signature;

    invoke-virtual {v2, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 112
    iget-object v2, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->sigChecker:Ljava/security/Signature;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/Signature;->update([B)V

    .line 113
    iget-object v2, p0, Lcom/amazonaws/services/sns/util/SignatureChecker;->sigChecker:Ljava/security/Signature;

    invoke-virtual {v2, v1}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 121
    :goto_0
    return v0

    .line 118
    :catch_0
    move-exception v2

    goto :goto_0

    .line 116
    :catch_1
    move-exception v2

    goto :goto_0

    .line 114
    :catch_2
    move-exception v2

    goto :goto_0
.end method
