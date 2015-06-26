.class public Lbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandler;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lbl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lbl;->b:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 90
    const-string v0, "text/html"

    .line 91
    new-instance v1, Lorg/apache/http/entity/EntityTemplate;

    new-instance v2, Lbp;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<html><body>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</body></html>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbp;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    .line 92
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/EntityTemplate;->setContentType(Ljava/lang/String;)V

    .line 93
    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 94
    const/16 v0, 0x190

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 95
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 98
    const-string v0, "text/html"

    .line 99
    new-instance v1, Lorg/apache/http/entity/EntityTemplate;

    new-instance v2, Lbp;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<html><body>File not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</body></html>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbp;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    .line 100
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/EntityTemplate;->setContentType(Ljava/lang/String;)V

    .line 101
    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 102
    const/16 v0, 0x194

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 103
    return-void
.end method


# virtual methods
.method public handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6

    .prologue
    .line 42
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 47
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v2, "/kis/permission_denied.html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "/kis/permission_denied.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wrong path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    :catch_0
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lbl;->a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 54
    :cond_0
    :try_start_1
    invoke-static {v1}, Lbn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    if-nez v3, :cond_1

    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot guess content type for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :catch_1
    move-exception v1

    .line 85
    invoke-static {p2, v1}, Lbl;->a(Lorg/apache/http/HttpResponse;Ljava/lang/Exception;)V

    goto :goto_0

    .line 60
    :cond_1
    const/4 v2, 0x5

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lbl;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 63
    new-instance v2, Lorg/apache/http/entity/EntityTemplate;

    new-instance v1, Lbm;

    invoke-direct {v1, p0, v4}, Lbm;-><init>(Lbl;Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Lorg/apache/http/entity/EntityTemplate;-><init>(Lorg/apache/http/entity/ContentProducer;)V

    .line 74
    move-object v0, v2

    check-cast v0, Lorg/apache/http/entity/EntityTemplate;

    move-object v1, v0

    invoke-virtual {v1, v3}, Lorg/apache/http/entity/EntityTemplate;->setContentType(Ljava/lang/String;)V

    .line 75
    invoke-interface {p2, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
