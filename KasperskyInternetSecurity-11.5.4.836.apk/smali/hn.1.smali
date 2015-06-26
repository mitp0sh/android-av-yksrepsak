.class public Lhn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lhn;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lhn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhn;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0}, Lhn;->b()Z

    .line 45
    return-void
.end method

.method public static a()Lhn;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lhn;->a:Lhn;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lhn;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lhn;->a:Lhn;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lhn;

    invoke-direct {v0}, Lhn;-><init>()V

    sput-object v0, Lhn;->a:Lhn;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lhn;->a:Lhn;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lorg/w3c/dom/NodeList;)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 81
    move v0, v1

    move v2, v3

    .line 82
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 83
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 84
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "threat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-direct {p0, v4}, Lhn;->b(Lorg/w3c/dom/NodeList;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    return v2
.end method

.method private b(Lorg/w3c/dom/NodeList;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    move v3, v4

    move-object v2, v1

    .line 98
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 99
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v6, v5, :cond_4

    .line 101
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v7, "Threat_type"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v2, v0

    .line 106
    :cond_0
    const-string v7, "Description"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v1, v2

    .line 98
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 111
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    move v4, v5

    .line 121
    :cond_2
    if-eqz v4, :cond_3

    .line 122
    iget-object v0, p0, Lhn;->c:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_3
    return v4

    :cond_4
    move-object v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 63
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lgy;->a()Ljava/io/File;

    move-result-object v2

    const-string v3, "Description.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 66
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 68
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "threats"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lhn;->a(Lorg/w3c/dom/NodeList;)Z

    move-result v0

    .line 74
    :cond_0
    return v0
.end method


# virtual methods
.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhn;->c:Ljava/util/Map;

    .line 50
    invoke-direct {p0}, Lhn;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 55
    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
