.class public final Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteArrayOutputStreamEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 58
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->buf:[B

    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 73
    :goto_0
    iget v2, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->count:I

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->buf:[B

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 75
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->buf:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 76
    .local v0, "data":[B
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->buf:[B

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->buf:[B

    array-length v3, v3

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->buf:[B

    .line 80
    .end local v0    # "data":[B
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->buf:[B

    iget v3, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->count:I

    iget-object v4, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->buf:[B

    array-length v4, v4

    iget v5, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->count:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 81
    .local v1, "sz":I
    if-gez v1, :cond_1

    return-void

    .line 82
    :cond_1
    iget v2, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->count:I

    add-int/2addr v2, v1

    iput v2, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->count:I

    goto :goto_0
.end method

.method public set(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;Ljava/lang/String;)V
    .locals 2
    .param p1, "dt"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->buf:[B

    iget v1, p0, Lae/com/sun/xml/bind/v2/util/ByteArrayOutputStreamEx;->count:I

    invoke-virtual {p1, v0, v1, p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Base64Data;->set([BILjava/lang/String;)V

    .line 62
    return-void
.end method
