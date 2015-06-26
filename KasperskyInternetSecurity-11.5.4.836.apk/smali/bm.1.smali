.class final Lbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/entity/ContentProducer;


# instance fields
.field private synthetic a:Ljava/io/InputStream;

.field private synthetic b:Lbl;


# direct methods
.method constructor <init>(Lbl;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lbm;->b:Lbl;

    iput-object p2, p0, Lbm;->a:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 65
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 67
    :goto_0
    const/4 v1, -0x1

    iget-object v2, p0, Lbm;->a:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 69
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 72
    return-void
.end method
