.class public Lcr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# instance fields
.field private final b:Ljava/io/InputStream;

.field private final c:Ljava/lang/String;

.field private final d:Lcp;

.field private e:Z

.field private final f:I

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcr;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x400

    invoke-direct {v0, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcr;->b:Ljava/io/InputStream;

    .line 28
    iget-object v0, p0, Lcr;->b:Ljava/io/InputStream;

    invoke-static {v0}, LcF;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcr;->c:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcr;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/kaspersky/components/webfilter/ConnectionClosedException;

    invoke-direct {v0}, Lcom/kaspersky/components/webfilter/ConnectionClosedException;-><init>()V

    throw v0

    .line 33
    :cond_0
    new-instance v0, Lcp;

    iget-object v2, p0, Lcr;->b:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lcp;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcr;->d:Lcp;

    .line 35
    invoke-direct {p0}, Lcr;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcr;->e:Z

    .line 37
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcr;->f:I

    .line 40
    iget v0, p0, Lcr;->f:I

    if-ne v0, v1, :cond_2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcr;->g:Z

    .line 41
    return-void

    :cond_1
    move v0, v1

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private h()Z
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x1

    .line 74
    const-string v1, "Connection"

    invoke-virtual {p0, v1}, Lcr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Proxy-Connection"

    invoke-virtual {p0, v1}, Lcr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    :cond_1
    return v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcr;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcr;->d:Lcp;

    invoke-virtual {v0, p1}, Lcp;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcr;->d:Lcp;

    invoke-virtual {v0, p1}, Lcp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    iget-object v1, p0, Lcr;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 96
    sget-object v1, Lcr;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 97
    iget-object v1, p0, Lcr;->d:Lcp;

    invoke-virtual {v1, v0}, Lcp;->a(Ljava/io/OutputStream;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 99
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 100
    return-void
.end method

.method protected final b()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcr;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcr;->e:Z

    return v0
.end method

.method final d()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcr;->e:Z

    .line 60
    return-void
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcr;->f:I

    return v0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcr;->g:Z

    return v0
.end method

.method protected final g()Lcp;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcr;->d:Lcp;

    return-object v0
.end method
