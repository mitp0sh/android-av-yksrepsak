.class final Lco;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/kaspersky/components/webfilter/Request;Lcu;Lcu;)V
    .locals 4

    .prologue
    .line 14
    invoke-virtual {p2}, Lcu;->b()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/components/webfilter/Request;->a(Ljava/io/OutputStream;)V

    .line 17
    new-instance v0, Lcs;

    invoke-virtual {p2}, Lcu;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcs;-><init>(Ljava/io/InputStream;Lcom/kaspersky/components/webfilter/Request;)V

    .line 18
    invoke-virtual {v0}, Lcs;->g()Lcp;

    move-result-object v1

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Lcp;->c(Ljava/lang/String;)Z

    .line 24
    invoke-virtual {v0}, Lcs;->f()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcs;->g()Lcp;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lcp;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcs;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v0}, Lcs;->g()Lcp;

    move-result-object v1

    const-string v2, "Connection"

    const-string v3, "Close"

    invoke-virtual {v1, v2, v3}, Lcp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->d()V

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcu;->b()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcs;->a(Ljava/io/OutputStream;)V

    .line 29
    return-void
.end method
