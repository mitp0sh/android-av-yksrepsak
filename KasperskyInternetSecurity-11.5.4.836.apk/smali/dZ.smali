.class public final LdZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg;


# instance fields
.field private final a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x1bb

    iput v0, p0, LdZ;->a:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, LdZ;->b:I

    .line 51
    iput-object v2, p0, LdZ;->c:Ljava/lang/String;

    .line 52
    iput v1, p0, LdZ;->d:I

    .line 53
    iput-object v2, p0, LdZ;->e:Landroid/content/Context;

    .line 60
    const v0, 0x7f060012

    iput v0, p0, LdZ;->b:I

    .line 61
    iput-object p2, p0, LdZ;->c:Ljava/lang/String;

    .line 62
    iput v1, p0, LdZ;->d:I

    .line 63
    iput-object p3, p0, LdZ;->e:Landroid/content/Context;

    .line 64
    iput-object p5, p0, LdZ;->f:Ljava/lang/String;

    .line 65
    iput-boolean p6, p0, LdZ;->g:Z

    .line 66
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 191
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    new-instance v0, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;

    invoke-direct {v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;-><init>()V

    throw v0

    .line 197
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 198
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_2

    .line 204
    :try_start_0
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 206
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;

    invoke-direct {v1, v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 209
    :catch_1
    move-exception v0

    .line 210
    new-instance v1, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;

    invoke-direct {v1, v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 211
    :catch_2
    move-exception v0

    .line 212
    new-instance v1, Lcom/kaspersky/kts/antitheft/WrongProtocolException;

    invoke-direct {v1, v0}, Lcom/kaspersky/kts/antitheft/WrongProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 217
    :cond_2
    new-instance v0, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;-><init>(Lorg/apache/http/StatusLine;)V

    throw v0
.end method

.method static synthetic a(LdZ;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, LdZ;->g:Z

    return v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, LdZ;->e:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .prologue
    const v7, 0xea60

    .line 132
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 134
    iget v2, p0, LdZ;->d:I

    .line 135
    if-gez v2, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 137
    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    .line 138
    const/16 v2, 0x1bb

    .line 140
    :cond_0
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 141
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {v6, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v6, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    new-instance v0, Lea;

    iget v3, p0, LdZ;->b:I

    iget-object v4, p0, LdZ;->c:Ljava/lang/String;

    iget-object v5, p0, LdZ;->e:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lea;-><init>(LdZ;IILjava/lang/String;Landroid/content/Context;)V

    .line 156
    const-class v1, Lorg/apache/http/protocol/RequestExpectContinue;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    .line 158
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 159
    invoke-static {v1, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 167
    invoke-static {v1, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 169
    const-string v2, "http.protocol.version"

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 170
    :try_start_1
    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 185
    invoke-static {v0}, LdZ;->a(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 148
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :catch_1
    move-exception v0

    .line 180
    new-instance v1, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;

    invoke-direct {v1, v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 181
    :catch_2
    move-exception v0

    .line 182
    new-instance v1, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;

    invoke-direct {v1, v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
