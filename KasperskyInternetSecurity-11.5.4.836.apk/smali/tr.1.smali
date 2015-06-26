.class public final Ltr;
.super Lte;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltf;Ltd;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lte;-><init>()V

    .line 51
    iput-object p1, p0, Ltr;->d:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Ltr;->b:Ltf;

    .line 53
    iput-object p3, p0, Ltr;->c:Ltd;

    .line 54
    return-void
.end method

.method private static a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 96
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 97
    invoke-static {}, Lcom/kms/kmsshared/Utils;->i()Ljava/lang/String;

    move-result-object v1

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "ACT_CODE"

    invoke-direct {v3, v4, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "IMEI"

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "TIME"

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v1, 0x7f0701f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "REGION"

    invoke-direct {v1, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "APP_ID"

    const-string v3, "1335"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 114
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-lt v1, v3, :cond_0

    .line 116
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "C"

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "T"

    const/4 v4, 0x5

    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 126
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "VER"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "OS"

    const-string v3, "AndroidOS"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "MODEL"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LjJ;->p()Ll;

    move-result-object v1

    const-string v3, "licensing.activation_1_url"

    invoke-interface {v1, v3}, Ll;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-static {v2, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 143
    const-string v0, "http.useragent"

    const-string v2, "KAV Mobile"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lorg/apache/http/client/methods/HttpGet;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 58
    :try_start_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 61
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 63
    invoke-virtual {v1, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 64
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/vnd.wap.wml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {v1, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 71
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_1

    .line 72
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 73
    iget-object v0, p0, Ltr;->b:Ltf;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ltf;->b(I)V

    .line 75
    iget-object v0, p0, Ltr;->c:Ltd;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Ltd;->a([B)V

    .line 76
    iget-object v0, p0, Ltr;->b:Ltf;

    const/4 v1, 0x1

    iget-object v2, p0, Ltr;->c:Ltd;

    invoke-interface {v2}, Ltd;->a()Ltc;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ltf;->a(ILtc;)V

    .line 93
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Ltr;->b:Ltf;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ltf;->a(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 87
    const-string v0, "HttpActivation"

    const-string v1, "sendRequest() Exception occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Ltr;->b:Ltf;

    invoke-interface {v0, v5, v6, v7}, Ltf;->a(IILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Ltr;->b:Ltf;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltf;->a(I)V

    .line 46
    iget-object v0, p0, Ltr;->d:Ljava/lang/String;

    invoke-static {v0}, Ltr;->a(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    invoke-direct {p0, v0}, Ltr;->a(Lorg/apache/http/client/methods/HttpGet;)V

    .line 47
    return-void
.end method
