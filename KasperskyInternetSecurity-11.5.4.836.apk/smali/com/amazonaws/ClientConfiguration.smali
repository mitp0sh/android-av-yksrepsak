.class public Lcom/amazonaws/ClientConfiguration;
.super Ljava/lang/Object;
.source "ClientConfiguration.java"


# static fields
.field public static final DEFAULT_MAX_CONNECTIONS:I = 0x32

.field public static final DEFAULT_MAX_RETRIES:I = 0x3

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0xc350

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String;


# instance fields
.field private connectionTimeout:I

.field private maxConnections:I

.field private maxErrorRetry:I

.field private protocol:Lcom/amazonaws/Protocol;

.field private proxyDomain:Ljava/lang/String;

.field private proxyHost:Ljava/lang/String;

.field private proxyPassword:Ljava/lang/String;

.field private proxyPort:I

.field private proxyUsername:Ljava/lang/String;

.field private proxyWorkstation:Ljava/lang/String;

.field private socketReceiveBufferSizeHint:I

.field private socketSendBufferSizeHint:I

.field private socketTimeout:I

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, 0xc350

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    .line 51
    sget-object v0, Lcom/amazonaws/Protocol;->HTTPS:Lcom/amazonaws/Protocol;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    .line 54
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    .line 60
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    .line 72
    const/16 v0, 0x32

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    .line 79
    iput v3, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    .line 86
    iput v3, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    .line 93
    iput v2, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    .line 100
    iput v2, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 4
    .param p1, "other"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    const v3, 0xc350

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    .line 51
    sget-object v0, Lcom/amazonaws/Protocol;->HTTPS:Lcom/amazonaws/Protocol;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    .line 54
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    .line 60
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    .line 72
    const/16 v0, 0x32

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    .line 79
    iput v3, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    .line 86
    iput v3, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    .line 93
    iput v2, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    .line 100
    iput v2, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    .line 106
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    .line 107
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    .line 108
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    .line 109
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    .line 110
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    .line 113
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    .line 114
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    .line 116
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    .line 117
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    .line 119
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    .line 120
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    .line 121
    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    return v0
.end method

.method public getMaxConnections()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    return v0
.end method

.method public getMaxErrorRetry()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    return v0
.end method

.method public getProtocol()Lcom/amazonaws/Protocol;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    return-object v0
.end method

.method public getProxyDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    return v0
.end method

.method public getProxyUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyWorkstation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketBufferSizeHints()[I
    .locals 3

    .prologue
    .line 626
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 572
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    .line 573
    return-void
.end method

.method public setMaxConnections(I)V
    .locals 0
    .param p1, "maxConnections"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    .line 198
    return-void
.end method

.method public setMaxErrorRetry(I)V
    .locals 0
    .param p1, "maxErrorRetry"    # I

    .prologue
    .line 485
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    .line 486
    return-void
.end method

.method public setProtocol(Lcom/amazonaws/Protocol;)V
    .locals 0
    .param p1, "protocol"    # Lcom/amazonaws/Protocol;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    .line 156
    return-void
.end method

.method public setProxyDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyDomain"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyHost"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setProxyPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyPassword"    # Ljava/lang/String;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setProxyPort(I)V
    .locals 0
    .param p1, "proxyPort"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    .line 297
    return-void
.end method

.method public setProxyUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyUsername"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setProxyWorkstation(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyWorkstation"    # Ljava/lang/String;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setSocketBufferSizeHints(II)V
    .locals 0
    .param p1, "socketSendBufferSizeHint"    # I
    .param p2, "socketReceiveBufferSizeHint"    # I

    .prologue
    .line 666
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    .line 667
    iput p2, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    .line 668
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0
    .param p1, "socketTimeout"    # I

    .prologue
    .line 529
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    .line 530
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public withConnectionTimeout(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setConnectionTimeout(I)V

    .line 589
    return-object p0
.end method

.method public withMaxConnections(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "maxConnections"    # I

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setMaxConnections(I)V

    .line 211
    return-object p0
.end method

.method public withMaxErrorRetry(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "maxErrorRetry"    # I

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setMaxErrorRetry(I)V

    .line 501
    return-object p0
.end method

.method public withProtocol(Lcom/amazonaws/Protocol;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "protocol"    # Lcom/amazonaws/Protocol;

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProtocol(Lcom/amazonaws/Protocol;)V

    .line 178
    return-object p0
.end method

.method public withProxyDomain(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "proxyDomain"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyDomain(Ljava/lang/String;)V

    .line 420
    return-object p0
.end method

.method public withProxyHost(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "proxyHost"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyHost(Ljava/lang/String;)V

    .line 277
    return-object p0
.end method

.method public withProxyPassword(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "proxyPassword"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyPassword(Ljava/lang/String;)V

    .line 379
    return-object p0
.end method

.method public withProxyPort(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "proxyPort"    # I

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyPort(I)V

    .line 310
    return-object p0
.end method

.method public withProxyUsername(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "proxyUsername"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyUsername(Ljava/lang/String;)V

    .line 345
    return-object p0
.end method

.method public withProxyWorkstation(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "proxyWorkstation"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyWorkstation(Ljava/lang/String;)V

    .line 462
    return-object p0
.end method

.method public withSocketBufferSizeHints(II)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "socketSendBufferSizeHint"    # I
    .param p2, "socketReceiveBufferSizeHint"    # I

    .prologue
    .line 712
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/ClientConfiguration;->setSocketBufferSizeHints(II)V

    .line 713
    return-object p0
.end method

.method public withSocketTimeout(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "socketTimeout"    # I

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setSocketTimeout(I)V

    .line 547
    return-object p0
.end method

.method public withUserAgent(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setUserAgent(Ljava/lang/String;)V

    .line 244
    return-object p0
.end method
