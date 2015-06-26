.class final LcE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:[B

.field private final b:Ljava/io/InputStream;

.field private final c:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 21
    :cond_1
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, LcE;->a:[B

    .line 22
    iput-object p1, p0, LcE;->b:Ljava/io/InputStream;

    .line 23
    iput-object p2, p0, LcE;->c:Ljava/io/OutputStream;

    .line 24
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 31
    .line 32
    :goto_0
    :try_start_0
    iget-object v0, p0, LcE;->b:Ljava/io/InputStream;

    iget-object v1, p0, LcE;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 34
    iget-object v1, p0, LcE;->c:Ljava/io/OutputStream;

    iget-object v2, p0, LcE;->a:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 41
    :cond_0
    return-void
.end method
