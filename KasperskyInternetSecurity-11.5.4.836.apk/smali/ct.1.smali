.class final Lct;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/kaspersky/components/webfilter/Request;Lcu;Lcu;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/kaspersky/components/webfilter/Request;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p2}, Lcu;->b()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kaspersky/components/webfilter/Request;->a(Ljava/io/OutputStream;)V

    .line 21
    :goto_0
    new-instance v0, LcE;

    invoke-virtual {p2}, Lcu;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Lcu;->b()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LcE;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 22
    new-instance v0, LcE;

    invoke-virtual {p1}, Lcu;->a()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p2}, Lcu;->b()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LcE;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, LcE;->run()V

    .line 23
    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcu;->b()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "HTTP/1.1 200 Connection established\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method
