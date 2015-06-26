.class public final LcF;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;

.field private static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, LcG;

    invoke-direct {v0}, LcG;-><init>()V

    sput-object v0, LcF;->a:Ljava/lang/ThreadLocal;

    .line 23
    new-instance v0, LcH;

    invoke-direct {v0}, LcH;-><init>()V

    sput-object v0, LcF;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 39
    sget-object v0, LcF;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move v0, v1

    .line 44
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 45
    if-lez v3, :cond_1

    .line 47
    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 48
    add-int/2addr v0, v3

    .line 51
    :cond_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 53
    return v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    .locals 7

    .prologue
    const/16 v2, 0x2000

    const/4 v4, 0x0

    .line 58
    if-gtz p2, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_0
    sget-object v0, LcF;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    move v3, v4

    move v1, p2

    .line 63
    :goto_0
    if-lez v1, :cond_1

    .line 66
    if-ge v1, v2, :cond_3

    move v0, v1

    .line 70
    :goto_1
    invoke-virtual {p0, v5, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 71
    if-lez v6, :cond_2

    .line 73
    invoke-virtual {p1, v5, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 74
    add-int v0, v3, v6

    .line 63
    :goto_2
    sub-int/2addr v1, v6

    move v3, v0

    goto :goto_0

    .line 78
    :cond_1
    return v3

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 107
    sget-object v0, LcF;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 108
    const/4 v1, 0x0

    .line 111
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 112
    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 113
    if-nez v1, :cond_1

    if-le v2, v4, :cond_0

    .line 116
    :cond_1
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    if-le v2, v4, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 126
    :cond_3
    if-nez v1, :cond_4

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 83
    if-eqz p0, :cond_0

    .line 87
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 97
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    invoke-static {p0, v0}, LcF;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 99
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, v0}, LcF;->a(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
