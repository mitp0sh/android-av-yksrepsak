.class public Lcom/kaspersky/components/urlchecker/UrlChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Collection;

.field private mUrlChecker:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/kaspersky/components/urlchecker/UrlChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kaspersky/components/urlchecker/UrlChecker;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/components/urlchecker/UrlChecker;->b:Ljava/util/Collection;

    .line 25
    invoke-direct {p0}, Lcom/kaspersky/components/urlchecker/UrlChecker;->init()I

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to initialize url_checker"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    return-void
.end method

.method private native checkUrl(ILjava/lang/String;Z)Lcom/kaspersky/components/urlchecker/UrlInfo;
.end method

.method private native free()V
.end method

.method private native init()I
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;)Lcom/kaspersky/components/urlchecker/UrlInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->a()Lcom/kms/ksn/locator/ServiceLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/ksn/locator/ServiceLocator;->b()I

    move-result v2

    sget-object v0, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;->SmsClient:Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v2, p1, v0}, Lcom/kaspersky/components/urlchecker/UrlChecker;->checkUrl(ILjava/lang/String;Z)Lcom/kaspersky/components/urlchecker/UrlInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    sget-object v2, Lcom/kaspersky/components/urlchecker/UrlChecker;->a:Ljava/lang/String;

    const-string v3, "Exception in native call"

    invoke-static {v2, v3, v0}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlInfo;

    invoke-direct {v0}, Lcom/kaspersky/components/urlchecker/UrlInfo;-><init>()V

    .line 54
    iput v1, v0, Lcom/kaspersky/components/urlchecker/UrlInfo;->mVerdict:I

    goto :goto_1
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 34
    :try_start_0
    invoke-direct {p0}, Lcom/kaspersky/components/urlchecker/UrlChecker;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
