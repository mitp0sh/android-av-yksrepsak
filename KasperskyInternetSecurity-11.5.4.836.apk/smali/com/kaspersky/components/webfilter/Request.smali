.class public final Lcom/kaspersky/components/webfilter/Request;
.super Lcr;
.source "SourceFile"


# instance fields
.field private final b:LcB;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcr;-><init>(Ljava/io/InputStream;)V

    .line 54
    new-instance v0, LcB;

    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, LcB;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/kaspersky/components/webfilter/Request;->b:LcB;

    .line 56
    if-nez p2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->g()Lcp;

    move-result-object v0

    const-string v1, "Connection"

    invoke-virtual {v0, v1}, Lcp;->c(Ljava/lang/String;)Z

    .line 58
    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->g()Lcp;

    move-result-object v0

    const-string v1, "Connection"

    const-string v2, "Close"

    invoke-virtual {v0, v1, v2}, Lcp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->g()Lcp;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    invoke-virtual {v0, v1}, Lcp;->c(Ljava/lang/String;)Z

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/kaspersky/components/webfilter/Request;->b:LcB;

    invoke-virtual {v1}, LcB;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 67
    sget-object v1, Lcom/kaspersky/components/webfilter/Request;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 68
    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->g()Lcp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcp;->a(Ljava/io/OutputStream;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 70
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 72
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/Request;->b:LcB;

    invoke-virtual {v0}, LcB;->a()Lcom/kaspersky/components/webfilter/Request$Method;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/components/webfilter/Request$Method;->POST:Lcom/kaspersky/components/webfilter/Request$Method;

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->e()I

    move-result v0

    if-lez v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->e()I

    move-result v1

    invoke-static {v0, p1, v1}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->e()I

    move-result v0

    if-gez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->i()LcI;

    move-result-object v0

    invoke-virtual {v0}, LcI;->b()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->h()Lcom/kaspersky/components/webfilter/Request$Method;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/components/webfilter/Request$Method;->CONNECT:Lcom/kaspersky/components/webfilter/Request$Method;

    if-ne v0, v1, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcr;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public final h()Lcom/kaspersky/components/webfilter/Request$Method;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/Request;->b:LcB;

    invoke-virtual {v0}, LcB;->a()Lcom/kaspersky/components/webfilter/Request$Method;

    move-result-object v0

    return-object v0
.end method

.method public final i()LcI;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/Request;->b:LcB;

    invoke-virtual {v0}, LcB;->b()LcI;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kaspersky/components/webfilter/Request;->b:LcB;

    invoke-static {v0}, LcB;->a(LcB;)Z

    move-result v0

    return v0
.end method
