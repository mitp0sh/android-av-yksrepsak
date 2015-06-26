.class public Lcom/amazonaws/http/ExecutionContext;
.super Ljava/lang/Object;
.source "ExecutionContext.java"


# instance fields
.field private awsRequestMetrics:Lcom/amazonaws/util/AWSRequestMetrics;

.field private backoffStrategy:Lcom/amazonaws/internal/CustomBackoffStrategy;

.field private contextUserAgent:Ljava/lang/String;

.field private credentials:Lcom/amazonaws/auth/AWSCredentials;

.field private requestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private signer:Lcom/amazonaws/auth/Signer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics;

    invoke-direct {v0}, Lcom/amazonaws/util/AWSRequestMetrics;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->awsRequestMetrics:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "requestHandlers":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics;

    invoke-direct {v0}, Lcom/amazonaws/util/AWSRequestMetrics;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->awsRequestMetrics:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 49
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->requestHandlers:Ljava/util/List;

    .line 50
    return-void
.end method


# virtual methods
.method public getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->awsRequestMetrics:Lcom/amazonaws/util/AWSRequestMetrics;

    return-object v0
.end method

.method public getContextUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->contextUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    return-object v0
.end method

.method public getCustomBackoffStrategy()Lcom/amazonaws/internal/CustomBackoffStrategy;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->backoffStrategy:Lcom/amazonaws/internal/CustomBackoffStrategy;

    return-object v0
.end method

.method public getRequestHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->requestHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getSigner()Lcom/amazonaws/auth/Signer;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->signer:Lcom/amazonaws/auth/Signer;

    return-object v0
.end method

.method public setAwsRequestMetrics(Lcom/amazonaws/util/AWSRequestMetrics;)V
    .locals 0
    .param p1, "awsRequestMetrics"    # Lcom/amazonaws/util/AWSRequestMetrics;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->awsRequestMetrics:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 68
    return-void
.end method

.method public setContextUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextUserAgent"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->contextUserAgent:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 0
    .param p1, "credentials"    # Lcom/amazonaws/auth/AWSCredentials;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->credentials:Lcom/amazonaws/auth/AWSCredentials;

    .line 111
    return-void
.end method

.method public setCustomBackoffStrategy(Lcom/amazonaws/internal/CustomBackoffStrategy;)V
    .locals 0
    .param p1, "backoffStrategy"    # Lcom/amazonaws/internal/CustomBackoffStrategy;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->backoffStrategy:Lcom/amazonaws/internal/CustomBackoffStrategy;

    .line 135
    return-void
.end method

.method public setSigner(Lcom/amazonaws/auth/Signer;)V
    .locals 0
    .param p1, "signer"    # Lcom/amazonaws/auth/Signer;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->signer:Lcom/amazonaws/auth/Signer;

    .line 89
    return-void
.end method
