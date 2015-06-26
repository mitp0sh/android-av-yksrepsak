.class final Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;
.super Ljava/lang/Object;
.source "PrimitiveArrayListerByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ByteArrayPack"
.end annotation


# instance fields
.field buf:[B

.field size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->buf:[B

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Byte;)V
    .locals 4
    .param p1, "b"    # Ljava/lang/Byte;

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->buf:[B

    array-length v1, v1

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->size:I

    if-ne v1, v2, :cond_0

    .line 98
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->buf:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 99
    .local v0, "nb":[B
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->buf:[B

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->buf:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->buf:[B

    .line 102
    .end local v0    # "nb":[B
    :cond_0
    if-eqz p1, :cond_1

    .line 103
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->buf:[B

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->size:I

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 104
    :cond_1
    return-void
.end method

.method build()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->buf:[B

    array-length v1, v1

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->size:I

    if-ne v1, v2, :cond_0

    .line 109
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->buf:[B

    .line 113
    :goto_0
    return-object v0

    .line 111
    :cond_0
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->size:I

    new-array v0, v1, [B

    .line 112
    .local v0, "r":[B
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->buf:[B

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
