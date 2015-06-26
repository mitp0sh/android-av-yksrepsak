.class public Lcom/kaspersky/components/updater/Index;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# static fields
.field private static final a:Ljava/text/DateFormat;

.field private static final serialVersionUID:J = 0x7193428406868674L


# instance fields
.field private transient b:Lcom/kaspersky/components/updater/SignatureChecker;

.field private final transient c:Ljava/net/URL;

.field private mDate:Ljava/util/Date;

.field private final mEntries:Ljava/util/Map;

.field private mHashMap:Ljava/util/Map;

.field private mMobileThreatsCount:J

.field private final mRegistries:Ljava/util/List;

.field private mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ddMMyyyy HHmm"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/kaspersky/components/updater/Index;->a:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/components/updater/Index;->mEntries:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/components/updater/Index;->mRegistries:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/components/updater/Index;->mHashMap:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/kaspersky/components/updater/Index;->mDate:Ljava/util/Date;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/components/updater/Index;->c:Ljava/net/URL;

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lbg;)V
    .locals 4

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/components/updater/Index;->mEntries:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/components/updater/Index;->mRegistries:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/components/updater/Index;->mHashMap:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/kaspersky/components/updater/Index;->mDate:Ljava/util/Date;

    .line 178
    iput-object p1, p0, Lcom/kaspersky/components/updater/Index;->c:Ljava/net/URL;

    .line 180
    new-instance v0, Lcom/kaspersky/components/updater/TinyUpdater;

    invoke-direct {v0, p2}, Lcom/kaspersky/components/updater/TinyUpdater;-><init>(Lbg;)V

    .line 182
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "index/"

    invoke-direct {v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    const-string v2, "u0607g.xml"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kaspersky/components/updater/Index;->a(Lcom/kaspersky/components/updater/TinyUpdater;Ljava/net/URL;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 184
    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/ConnectException;

    invoke-direct {v0}, Ljava/net/ConnectException;-><init>()V

    throw v0
.end method

.method private a()Lcom/kaspersky/components/updater/SignatureChecker;
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/kaspersky/components/updater/Index;->b:Lcom/kaspersky/components/updater/SignatureChecker;

    if-nez v0, :cond_0

    .line 225
    new-instance v1, Lcom/kaspersky/components/updater/SignatureChecker;

    iget-object v0, p0, Lcom/kaspersky/components/updater/Index;->mRegistries:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [[B

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-direct {v1, v0}, Lcom/kaspersky/components/updater/SignatureChecker;-><init>([[B)V

    iput-object v1, p0, Lcom/kaspersky/components/updater/Index;->b:Lcom/kaspersky/components/updater/SignatureChecker;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/kaspersky/components/updater/Index;->b:Lcom/kaspersky/components/updater/SignatureChecker;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 423
    :cond_0
    return-object p0
.end method

.method private static a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 451
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lorg/w3c/dom/NamedNodeMap;Ljava/net/URL;)Ljava/net/URL;
    .locals 2

    .prologue
    .line 428
    const-string v0, "RelativeSrvPath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 429
    const-string v1, "ServerFolder"

    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 432
    if-eqz v0, :cond_1

    .line 434
    new-instance p2, Ljava/net/URL;

    iget-object v1, p0, Lcom/kaspersky/components/updater/Index;->c:Ljava/net/URL;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kaspersky/components/updater/Index;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 445
    :cond_0
    :goto_0
    return-object p2

    .line 436
    :cond_1
    if-eqz v1, :cond_0

    .line 438
    new-instance v0, Ljava/net/URL;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kaspersky/components/updater/Index;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_0
.end method

.method private a(Lcom/kaspersky/components/updater/TinyUpdater;Ljava/net/URL;Ljava/lang/String;Z)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 271
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2, p3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kaspersky/components/updater/Index;->a(Ljava/net/URL;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 278
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    invoke-virtual {p0, v3}, Lcom/kaspersky/components/updater/Index;->getXMLDataLength([B)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 281
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    move v2, v1

    .line 282
    :goto_0
    if-ge v2, v5, :cond_9

    .line 284
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 285
    const-string v6, "UpdateFiles"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 287
    if-eqz p4, :cond_0

    .line 289
    sget-object v6, Lcom/kaspersky/components/updater/Index;->a:Ljava/text/DateFormat;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string v8, "UpdateDate"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lcom/kaspersky/components/updater/Index;->mDate:Ljava/util/Date;

    .line 291
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 292
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    move v0, v1

    .line 295
    :goto_1
    if-ge v0, v7, :cond_2

    .line 297
    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 298
    const-string v9, "Registry"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 300
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 301
    if-eqz v8, :cond_1

    .line 303
    const-string v9, "Body"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 304
    if-eqz v8, :cond_1

    .line 306
    iget-object v9, p0, Lcom/kaspersky/components/updater/Index;->mRegistries:Ljava/util/List;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v8, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v8, p0, Lcom/kaspersky/components/updater/Index;->b:Lcom/kaspersky/components/updater/SignatureChecker;

    if-eqz v8, :cond_1

    .line 309
    iget-object v8, p0, Lcom/kaspersky/components/updater/Index;->b:Lcom/kaspersky/components/updater/SignatureChecker;

    invoke-virtual {v8}, Lcom/kaspersky/components/updater/SignatureChecker;->a()V

    .line 310
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/kaspersky/components/updater/Index;->b:Lcom/kaspersky/components/updater/SignatureChecker;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/ConnectException;

    invoke-direct {v0}, Ljava/net/ConnectException;-><init>()V

    throw v0

    .line 318
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/kaspersky/components/updater/Index;->a()Lcom/kaspersky/components/updater/SignatureChecker;

    move-result-object v0

    invoke-virtual {v0, p3, v3}, Lcom/kaspersky/components/updater/SignatureChecker;->verifySignature(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 320
    new-instance v0, Ljava/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index signature for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 362
    :catch_1
    move-exception v0

    .line 364
    new-instance v1, Lcom/kaspersky/components/updater/IndexParserException;

    invoke-direct {v1, v0}, Lcom/kaspersky/components/updater/IndexParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move v0, v1

    .line 323
    :goto_2
    if-ge v0, v7, :cond_8

    .line 325
    :try_start_3
    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 326
    const-string v9, "FileDescription"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 328
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 329
    if-eqz v8, :cond_5

    .line 331
    const-string v9, "ComponentID"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 332
    if-eqz v9, :cond_5

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, p1, v9}, Lcom/kaspersky/components/updater/Index;->a(Lorg/w3c/dom/NamedNodeMap;Lcom/kaspersky/components/updater/TinyUpdater;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 334
    const-string v9, "UpdateType"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 335
    const-string v10, "desc"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 337
    const-string v9, "Filename"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 338
    if-nez v9, :cond_4

    .line 340
    new-instance v0, Lcom/kaspersky/components/updater/IndexParserException;

    const-string v1, "Missed file name node: Filename"

    invoke-direct {v0, v1}, Lcom/kaspersky/components/updater/IndexParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_4
    invoke-direct {p0, v8, p2}, Lcom/kaspersky/components/updater/Index;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/net/URL;)Ljava/net/URL;

    move-result-object v8

    .line 345
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, p1, v8, v9, v10}, Lcom/kaspersky/components/updater/Index;->a(Lcom/kaspersky/components/updater/TinyUpdater;Ljava/net/URL;Ljava/lang/String;Z)V

    .line 323
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 347
    :cond_6
    const-string v10, "base"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 349
    invoke-direct {p0, v8, p1, p2}, Lcom/kaspersky/components/updater/Index;->a(Lorg/w3c/dom/NamedNodeMap;Lcom/kaspersky/components/updater/TinyUpdater;Ljava/net/URL;)V

    goto :goto_3

    .line 353
    :cond_7
    new-instance v0, Lcom/kaspersky/components/updater/IndexParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported file type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kaspersky/components/updater/IndexParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 282
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 365
    :cond_9
    return-void
.end method

.method private a(Lorg/w3c/dom/NamedNodeMap;Lcom/kaspersky/components/updater/TinyUpdater;Ljava/net/URL;)V
    .locals 7

    .prologue
    .line 475
    const-string v0, "ComponentID"

    invoke-static {p1, v0}, Lcom/kaspersky/components/updater/Index;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-static {p1, p2, v1}, Lcom/kaspersky/components/updater/Index;->a(Lorg/w3c/dom/NamedNodeMap;Lcom/kaspersky/components/updater/TinyUpdater;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    const-string v0, "Filename"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 480
    const-string v2, "FileDate"

    invoke-interface {p1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 481
    invoke-direct {p0, p1, p3}, Lcom/kaspersky/components/updater/Index;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/net/URL;)Ljava/net/URL;

    move-result-object v3

    .line 483
    if-nez v0, :cond_0

    .line 485
    new-instance v0, Lcom/kaspersky/components/updater/IndexParserException;

    const-string v1, "Filename not specified"

    invoke-direct {v0, v1}, Lcom/kaspersky/components/updater/IndexParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 489
    iget-object v5, p0, Lcom/kaspersky/components/updater/Index;->mEntries:Ljava/util/Map;

    new-instance v6, Lcom/kaspersky/components/updater/Index$Entry;

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v6, v3, v4, v0, v1}, Lcom/kaspersky/components/updater/Index$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v0, "FileSize"

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_1

    .line 494
    iget-wide v1, p0, Lcom/kaspersky/components/updater/Index;->mSize:J

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/kaspersky/components/updater/Index;->mSize:J

    .line 497
    :cond_1
    return-void

    .line 489
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/w3c/dom/NamedNodeMap;Lcom/kaspersky/components/updater/TinyUpdater;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 455
    const-string v0, "App"

    invoke-static {p0, v0}, Lcom/kaspersky/components/updater/Index;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    const-string v1, "AppName"

    invoke-static {p0, v1}, Lcom/kaspersky/components/updater/Index;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    const-string v2, "Lang"

    invoke-static {p0, v2}, Lcom/kaspersky/components/updater/Index;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    const-string v2, "Arch"

    invoke-static {p0, v2}, Lcom/kaspersky/components/updater/Index;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 459
    const-string v2, "OS"

    invoke-static {p0, v2}, Lcom/kaspersky/components/updater/Index;->a(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    if-eqz v1, :cond_2

    .line 463
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 464
    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kaspersky/components/updater/TinyUpdater;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/net/URL;)[B
    .locals 4

    .prologue
    .line 382
    .line 383
    const/4 v1, 0x0

    .line 387
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 390
    if-eqz v2, :cond_0

    const-string v3, "text/vnd.wap.wml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 399
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_1

    .line 401
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, LcF;->a(Ljava/io/Closeable;)V

    throw v0

    .line 404
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 407
    invoke-static {v2, v0}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 409
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 413
    invoke-static {v2}, LcF;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/kaspersky/components/updater/Index;->a:Ljava/text/DateFormat;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/kaspersky/components/updater/Index;->b:Lcom/kaspersky/components/updater/SignatureChecker;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/kaspersky/components/updater/Index;->b:Lcom/kaspersky/components/updater/SignatureChecker;

    invoke-virtual {v0}, Lcom/kaspersky/components/updater/SignatureChecker;->a()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kaspersky/components/updater/Index;->b:Lcom/kaspersky/components/updater/SignatureChecker;

    .line 195
    :cond_0
    return-void
.end method

.method public containsHash([B)Z
    .locals 1

    .prologue
    .line 243
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/kaspersky/components/updater/Index;->a()Lcom/kaspersky/components/updater/SignatureChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kaspersky/components/updater/SignatureChecker;->findHash([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findHash(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/kaspersky/components/updater/Index;->mHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/kaspersky/components/updater/Index$Entry;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/kaspersky/components/updater/Index;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/components/updater/Index$Entry;

    .line 260
    if-nez v0, :cond_0

    .line 262
    # getter for: Lcom/kaspersky/components/updater/Index$Entry;->a:Lcom/kaspersky/components/updater/Index$Entry;
    invoke-static {}, Lcom/kaspersky/components/updater/Index$Entry;->access$100()Lcom/kaspersky/components/updater/Index$Entry;

    move-result-object v0

    .line 264
    :cond_0
    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/kaspersky/components/updater/Index;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getMobileThreatsCount()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/kaspersky/components/updater/Index;->mMobileThreatsCount:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/kaspersky/components/updater/Index;->mSize:J

    return-wide v0
.end method

.method getXMLDataLength([B)I
    .locals 3

    .prologue
    .line 370
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x4

    if-ge v0, v1, :cond_2

    .line 372
    aget-byte v1, p1, v0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 377
    :cond_0
    :goto_1
    return v0

    .line 370
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_2
    array-length v0, p1

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/kaspersky/components/updater/Index;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public mergeHash(Lcom/kaspersky/components/updater/Index;)V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/kaspersky/components/updater/Index;->mHashMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 237
    iget-object v1, p0, Lcom/kaspersky/components/updater/Index;->mHashMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 238
    iput-object v0, p0, Lcom/kaspersky/components/updater/Index;->mHashMap:Ljava/util/Map;

    .line 239
    return-void
.end method

.method public setMobileThreatsCount(J)V
    .locals 0

    .prologue
    .line 214
    iput-wide p1, p0, Lcom/kaspersky/components/updater/Index;->mMobileThreatsCount:J

    .line 215
    return-void
.end method

.method public verifyAndRemember(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 2

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/kaspersky/components/updater/Index;->a()Lcom/kaspersky/components/updater/SignatureChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kaspersky/components/updater/SignatureChecker;->calculateHash(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    .line 249
    invoke-direct {p0}, Lcom/kaspersky/components/updater/Index;->a()Lcom/kaspersky/components/updater/SignatureChecker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kaspersky/components/updater/SignatureChecker;->findHash([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/kaspersky/components/updater/Index;->mHashMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/4 v0, 0x1

    goto :goto_0
.end method
