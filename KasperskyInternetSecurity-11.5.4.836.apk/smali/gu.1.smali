.class public final Lgu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LbA;

.field private b:[C

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILbA;[C)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p3, p0, Lgu;->a:LbA;

    .line 32
    iput-object p4, p0, Lgu;->b:[C

    .line 33
    iput p2, p0, Lgu;->c:I

    .line 34
    iput-object p1, p0, Lgu;->d:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic a(Lgu;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lgu;->c:I

    return v0
.end method

.method static synthetic b(Lgu;)LbA;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lgu;->a:LbA;

    return-object v0
.end method

.method static synthetic c(Lgu;)[C
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lgu;->b:[C

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lgv;

    invoke-direct {v0, p0}, Lgv;-><init>(Lgu;)V

    .line 84
    return-object v0
.end method

.method public final b()Lorg/apache/http/protocol/HttpContext;
    .locals 5

    .prologue
    .line 89
    new-instance v0, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    .line 90
    new-instance v1, Lorg/apache/http/auth/AuthScope;

    iget-object v2, p0, Lgu;->d:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/apache/http/auth/UsernamePasswordCredentials;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 93
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 94
    const-string v2, "http.auth.credentials-provider"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    return-object v1
.end method
