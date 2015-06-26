.class final Lgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lgr;

.field private final b:Lorg/apache/http/client/methods/HttpPost;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method constructor <init>(Lgr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lgs;->a:Lgr;

    .line 239
    iput-object p2, p0, Lgs;->c:Ljava/lang/String;

    .line 240
    iput-object p3, p0, Lgs;->d:Ljava/lang/String;

    .line 241
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    iput-object v0, p0, Lgs;->b:Lorg/apache/http/client/methods/HttpPost;

    .line 242
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lgs;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgs;->e:Ljava/lang/String;

    .line 247
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 248
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    iput v0, p0, Lgs;->f:I

    .line 249
    iget-object v0, p0, Lgs;->b:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setURI(Ljava/net/URI;)V

    .line 250
    iget-object v0, p0, Lgs;->b:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "User-Agent"

    const-string v2, "KAV Mobile"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lgs;->b:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lgs;->b:Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lgs;->b:Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v2, p0, Lgs;->d:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 254
    return-void

    .line 248
    :cond_0
    const/16 v0, 0x1bb

    goto :goto_0
.end method

.method static synthetic a(Lgs;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lgs;->a()V

    return-void
.end method

.method static synthetic b(Lgs;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lgs;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lgs;)I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lgs;->f:I

    return v0
.end method

.method static synthetic d(Lgs;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lgs;->b:Lorg/apache/http/client/methods/HttpPost;

    return-object v0
.end method
