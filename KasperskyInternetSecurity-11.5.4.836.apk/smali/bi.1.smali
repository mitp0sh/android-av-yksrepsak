.class public final Lbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaO;
.implements LcL;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:[B

.field private static final c:[B

.field private static final d:[Ljava/lang/String;

.field private static final e:Landroid/net/Uri;

.field private static final f:Landroid/net/Uri;

.field private static final g:[Ljava/lang/String;


# instance fields
.field private final h:Landroid/content/Context;

.field private final i:Lcom/kaspersky/components/webfilter/ProxySettings;

.field private j:Ljava/util/List;

.field private final k:I

.field private l:LcJ;

.field private final m:Lcom/kaspersky/components/urlchecker/UrlChecker;

.field private final n:Lbk;

.field private o:Ljava/util/regex/Pattern;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:J

.field private u:Lbo;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.android.browser"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.browser"

    aput-object v1, v0, v3

    const-string v1, "com.sony.nfx.app.browser"

    aput-object v1, v0, v4

    sput-object v0, Lbi;->a:[Ljava/lang/String;

    .line 49
    const-string v0, "HTTP/1.1 200 OK\nContent-Type: text/html; charset=utf-8\nDate: Wed, 30 Nov 2011 12:38:20 GMT\nConnection: close\n\n<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lbi;->b:[B

    .line 52
    const-string v0, "<html><head><noscript><META HTTP-EQUIV=\"REFRESH\" CONTENT=\"0\";URL=\"permission_denied.html\"></noscript></head><body><script type=\'text/javascript\'>function deny(){window.location.href=\"permission_denied.html\";};window.setInterval(\'deny()\',30);</script></body></html>"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lbi;->c:[B

    .line 56
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Mozilla/"

    aput-object v1, v0, v2

    const-string v1, "Opera/"

    aput-object v1, v0, v3

    const-string v1, "Dolphin http client/"

    aput-object v1, v0, v4

    sput-object v0, Lbi;->d:[Ljava/lang/String;

    .line 62
    const-string v0, "content://com.sec.android.app.sbrowser.browser/history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lbi;->e:Landroid/net/Uri;

    .line 63
    const-string v0, "content://com.android.chrome.browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lbi;->f:Landroid/net/Uri;

    .line 66
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "BrowserActivity"

    aput-object v1, v0, v2

    const-string v1, "HtcBookmarkUtility"

    aput-object v1, v0, v3

    sput-object v0, Lbi;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbk;I)V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbi;->j:Ljava/util/List;

    .line 108
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal flags combination"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    iput-object p1, p0, Lbi;->h:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lbi;->n:Lbk;

    .line 116
    iput p3, p0, Lbi;->k:I

    .line 117
    new-instance v0, Lcom/kaspersky/components/urlchecker/UrlChecker;

    invoke-direct {v0}, Lcom/kaspersky/components/urlchecker/UrlChecker;-><init>()V

    iput-object v0, p0, Lbi;->m:Lcom/kaspersky/components/urlchecker/UrlChecker;

    .line 119
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 120
    invoke-static {p1}, Lcom/kaspersky/components/webfilter/ProxySettings;->a(Landroid/content/Context;)Lcom/kaspersky/components/webfilter/ProxySettings;

    move-result-object v0

    iput-object v0, p0, Lbi;->i:Lcom/kaspersky/components/webfilter/ProxySettings;

    .line 122
    new-instance v0, LcJ;

    invoke-direct {v0, p1}, LcJ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbi;->l:LcJ;

    .line 123
    iget-object v0, p0, Lbi;->l:LcJ;

    invoke-virtual {v0}, LcJ;->b()V

    .line 128
    :goto_0
    invoke-direct {p0}, Lbi;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "(?:url|dat|query)\\s*=\\s*(.*?)(?:$|;|\\s)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lbi;->o:Ljava/util/regex/Pattern;

    .line 131
    :cond_2
    return-void

    .line 125
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lbi;->i:Lcom/kaspersky/components/webfilter/ProxySettings;

    goto :goto_0
.end method

.method static synthetic a(Lbi;)LcJ;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbi;->l:LcJ;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Z)V
    .locals 3

    .prologue
    .line 229
    new-instance v0, Lbj;

    invoke-direct {v0, p0, p1, p2}, Lbj;-><init>(Lbi;Landroid/net/Uri;Z)V

    .line 230
    iget-object v1, p0, Lbi;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    iget-object v1, p0, Lbi;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 316
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 644 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lbi;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 288
    invoke-static {p0, p1}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 289
    return-void
.end method

.method private a(ZZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 323
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 324
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    if-eqz p1, :cond_0

    .line 328
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 329
    const v0, 0x40800004    # 4.000002f

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 330
    if-eqz p2, :cond_0

    .line 331
    const v0, -0x400001

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 335
    :cond_0
    iget-object v0, p0, Lbi;->p:Ljava/lang/String;

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    if-eqz p1, :cond_1

    iget-object v0, p0, Lbi;->r:Ljava/lang/String;

    .line 337
    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "text/html"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-direct {p0}, Lbi;->h()Landroid/content/ComponentName;

    move-result-object v0

    .line 339
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 340
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    :try_start_0
    iget-object v0, p0, Lbi;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 343
    iget-object v0, p0, Lbi;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_1
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lbi;->q:Ljava/lang/String;

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lbi;LcI;Ljava/io/OutputStream;Z)Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lbi;->a(LcI;Ljava/io/OutputStream;Z)Z

    move-result v0

    return v0
.end method

.method private a(LcI;Ljava/io/OutputStream;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 350
    invoke-virtual {p1}, LcI;->b()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, LcI;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "127.0.0.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v1

    .line 354
    :cond_1
    invoke-virtual {p1}, LcI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    iget-object v0, p0, Lbi;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/kaspersky/components/urlfilter/ExclusionList;->a(Landroid/content/Context;)Lcom/kaspersky/components/urlfilter/ExclusionList;

    move-result-object v0

    invoke-virtual {p1}, LcI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/kaspersky/components/urlfilter/ExclusionList;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lbi;->m:Lcom/kaspersky/components/urlchecker/UrlChecker;

    invoke-virtual {p1}, LcI;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;->WebClient:Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;

    invoke-virtual {v0, v3, v4}, Lcom/kaspersky/components/urlchecker/UrlChecker;->a(Ljava/lang/String;Lcom/kaspersky/components/urlchecker/UrlCheckerClientEnum;)Lcom/kaspersky/components/urlchecker/UrlInfo;

    move-result-object v3

    .line 360
    if-eqz v3, :cond_5

    .line 362
    invoke-direct {p0, v3}, Lbi;->a(Lcom/kaspersky/components/urlchecker/UrlInfo;)Z

    move-result v0

    .line 363
    if-eqz v0, :cond_2

    .line 364
    iget-object v4, p0, Lbi;->n:Lbk;

    invoke-interface {v4, v2, v3}, Lbk;->a(Ljava/lang/String;Lcom/kaspersky/components/urlchecker/UrlInfo;)Ljava/io/InputStream;

    move-result-object v2

    .line 365
    if-eqz v2, :cond_0

    .line 369
    if-eqz p2, :cond_3

    .line 370
    :try_start_0
    invoke-static {v2, p2}, Lbi;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    :goto_2
    move v1, v0

    .line 391
    goto :goto_0

    .line 373
    :cond_3
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lbi;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "permission_denied.html"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 374
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lbi;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "permission_denied.png"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 375
    invoke-static {v2}, LcF;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-static {v4, v1}, Lbr;->a([BLjava/io/File;)V

    .line 376
    invoke-static {v1}, Lbi;->a(Ljava/io/File;)V

    .line 377
    invoke-static {v3}, Lbi;->a(Ljava/io/File;)V

    .line 379
    if-eqz p3, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_4

    .line 380
    const/4 v1, 0x1

    invoke-virtual {p1}, LcI;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3, v1, v3}, Lbi;->a(ZZLjava/lang/String;)V

    .line 382
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1}, LcI;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3, v1, v3}, Lbi;->a(ZZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 385
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private a(Lcom/kaspersky/components/urlchecker/UrlInfo;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 395
    iget v1, p1, Lcom/kaspersky/components/urlchecker/UrlInfo;->mVerdict:I

    packed-switch v1, :pswitch_data_0

    .line 402
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 398
    :pswitch_1
    iget-wide v1, p1, Lcom/kaspersky/components/urlchecker/UrlInfo;->mCategories:J

    iget-wide v3, p0, Lbi;->t:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/kaspersky/components/webfilter/Request;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 271
    iget v2, p0, Lbi;->k:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 272
    const-string v2, "User-Agent"

    invoke-virtual {p1, v2}, Lcom/kaspersky/components/webfilter/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(KHTML, like Gecko) Chrome/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "X-Requested-With"

    invoke-virtual {p1, v2}, Lcom/kaspersky/components/webfilter/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbi;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 283
    :cond_1
    :goto_0
    return v0

    .line 274
    :cond_2
    iget v2, p0, Lbi;->k:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 275
    const-string v2, "User-Agent"

    invoke-virtual {p1, v2}, Lcom/kaspersky/components/webfilter/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    sget-object v4, Lbi;->d:[Ljava/lang/String;

    array-length v5, v4

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 277
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v1

    .line 278
    goto :goto_0

    .line 276
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 283
    goto :goto_0
.end method

.method static synthetic b(Lbi;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lbi;->f()Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 134
    if-eqz p0, :cond_0

    move v0, v1

    .line 135
    :goto_0
    sget-object v3, Lbi;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 136
    sget-object v3, Lbi;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 148
    :cond_0
    :goto_1
    return v1

    .line 135
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    .line 141
    goto :goto_1

    .line 144
    :cond_3
    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 145
    goto :goto_1
.end method

.method static synthetic c(Lbi;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbi;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lbi;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lbi;->l:LcJ;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lbi;->l:LcJ;

    invoke-virtual {v0, p0}, LcJ;->a(LcL;)V

    .line 238
    :cond_0
    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lbi;->l:LcJ;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lbi;->l:LcJ;

    invoke-virtual {v0, p0}, LcJ;->b(LcL;)V

    .line 244
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lbi;->l:LcJ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbi;->i:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-virtual {v0}, Lcom/kaspersky/components/webfilter/ProxySettings;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 4

    .prologue
    .line 251
    iget-boolean v0, p0, Lbi;->s:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lbi;->t:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 292
    const/4 v1, 0x0

    .line 294
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lbi;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "blocked.html"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbi;->r:Ljava/lang/String;

    .line 298
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 299
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :try_start_1
    sget-object v1, Lbi;->c:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 301
    invoke-static {v2}, Lbi;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 305
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 305
    :goto_1
    if-eqz v0, :cond_0

    .line 307
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 309
    :catch_1
    move-exception v0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    .line 307
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 309
    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 305
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 302
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private h()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lbi;->h:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 437
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 438
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 439
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/kaspersky/components/webfilter/Request;Ljava/io/OutputStream;)I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 256
    invoke-direct {p0}, Lbi;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lbi;->a(Lcom/kaspersky/components/webfilter/Request;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/kaspersky/components/webfilter/Request;->i()LcI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lbi;->a(LcI;Ljava/io/OutputStream;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(J)V
    .locals 0

    .prologue
    .line 152
    iput-wide p1, p0, Lbi;->t:J

    .line 153
    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lbi;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lbi;->s:Z

    .line 161
    iget-boolean v1, p0, Lbi;->s:Z

    if-eqz v1, :cond_5

    .line 162
    invoke-direct {p0}, Lbi;->c()V

    .line 164
    sget-object v1, Lbi;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lbi;->p:Ljava/lang/String;

    .line 166
    :goto_1
    sget-object v1, Lbi;->a:[Ljava/lang/String;

    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v0, v1, :cond_2

    .line 168
    :try_start_2
    iget-object v1, p0, Lbi;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lbi;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_4

    .line 170
    sget-object v1, Lbi;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lbi;->p:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lbi;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-static {p0}, LaP;->a(LaO;)V

    .line 181
    :cond_3
    invoke-direct {p0}, Lbi;->g()V

    .line 185
    sget-object v0, Lbi;->f:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbi;->a(Landroid/net/Uri;Z)V

    .line 186
    sget-object v0, Lbi;->e:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbi;->a(Landroid/net/Uri;Z)V

    .line 187
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lbi;->a(Landroid/net/Uri;Z)V

    .line 189
    new-instance v0, Lbo;

    iget-object v1, p0, Lbi;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbi;->u:Lbo;

    .line 190
    iget-object v0, p0, Lbi;->u:Lbo;

    invoke-virtual {v0}, Lbo;->a()V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://127.0.0.1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbi;->u:Lbo;

    invoke-virtual {v1}, Lbo;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/kis/permission_denied.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbi;->q:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 173
    :catch_0
    move-exception v1

    .line 166
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_5
    :try_start_4
    invoke-direct {p0}, Lbi;->d()V

    .line 196
    invoke-direct {p0}, Lbi;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    invoke-static {p0}, LaP;->b(LaO;)V

    .line 200
    :cond_6
    iget-object v0, p0, Lbi;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/ContentObserver;

    .line 201
    iget-object v2, p0, Lbi;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_2

    .line 203
    :cond_7
    iget-object v0, p0, Lbi;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    iget-object v0, p0, Lbi;->u:Lbo;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lbi;->u:Lbo;

    invoke-virtual {v0}, Lbo;->b()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lbi;->u:Lbo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 413
    invoke-direct {p0}, Lbi;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    sget-object v1, Lbi;->g:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    sget-object v1, Lbi;->g:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 421
    :cond_2
    :try_start_0
    iget-object v1, p0, Lbi;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 422
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    new-instance v2, LcI;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, LcI;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lbi;->a(LcI;Ljava/io/OutputStream;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lbi;->l:LcJ;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lbi;->i:Lcom/kaspersky/components/webfilter/ProxySettings;

    invoke-virtual {v0}, Lcom/kaspersky/components/webfilter/ProxySettings;->e()V

    .line 221
    :try_start_0
    iget-object v0, p0, Lbi;->l:LcJ;

    invoke-virtual {v0}, LcJ;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
