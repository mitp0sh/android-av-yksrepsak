.class final Lcs;
.super Lcr;
.source "SourceFile"


# instance fields
.field private final b:Lcom/kaspersky/components/webfilter/Request;

.field private final c:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/kaspersky/components/webfilter/Request;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcr;-><init>(Ljava/io/InputStream;)V

    .line 16
    if-nez p2, :cond_0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19
    :cond_0
    iput-object p2, p0, Lcs;->b:Lcom/kaspersky/components/webfilter/Request;

    .line 20
    invoke-direct {p0}, Lcs;->i()I

    move-result v0

    iput v0, p0, Lcs;->c:I

    .line 21
    return-void
.end method

.method private b(Ljava/io/OutputStream;)I
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcs;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, LcF;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 75
    sget-object v1, Lcs;->a:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return v0

    .line 78
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid chunk size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i()I
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcs;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 67
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcr;->a(Ljava/io/OutputStream;)V

    .line 26
    invoke-virtual {p0}, Lcs;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p0}, Lcs;->b()Ljava/io/InputStream;

    move-result-object v1

    .line 28
    invoke-direct {p0, p1}, Lcs;->b(Ljava/io/OutputStream;)I

    move-result v0

    .line 30
    :goto_0
    if-lez v0, :cond_0

    .line 31
    invoke-static {v1, p1, v0}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 32
    invoke-static {v1}, LcF;->b(Ljava/io/InputStream;)Ljava/lang/String;

    .line 33
    sget-object v0, Lcs;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 34
    invoke-direct {p0, p1}, Lcs;->b(Ljava/io/OutputStream;)I

    move-result v0

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lcp;

    invoke-direct {v0, v1}, Lcp;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, p1}, Lcp;->a(Ljava/io/OutputStream;)V

    .line 46
    :cond_1
    :goto_1
    return-void

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcs;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcs;->e()I

    move-result v0

    .line 40
    if-lez v0, :cond_3

    .line 41
    invoke-virtual {p0}, Lcs;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lcs;->e()I

    move-result v1

    invoke-static {v0, p1, v1}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    goto :goto_1

    .line 42
    :cond_3
    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lcs;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    goto :goto_1
.end method

.method final h()Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcs;->b:Lcom/kaspersky/components/webfilter/Request;

    invoke-virtual {v0}, Lcom/kaspersky/components/webfilter/Request;->h()Lcom/kaspersky/components/webfilter/Request$Method;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/components/webfilter/Request$Method;->HEAD:Lcom/kaspersky/components/webfilter/Request$Method;

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcs;->c:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcs;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcs;->c:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcs;->c:I

    const/16 v1, 0x130

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
