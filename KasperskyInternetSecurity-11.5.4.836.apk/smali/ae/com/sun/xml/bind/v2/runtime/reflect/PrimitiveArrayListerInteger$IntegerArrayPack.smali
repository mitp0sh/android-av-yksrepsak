.class final Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;
.super Ljava/lang/Object;
.source "PrimitiveArrayListerInteger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntegerArrayPack"
.end annotation


# instance fields
.field buf:[I

.field size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->buf:[I

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "b"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->buf:[I

    array-length v1, v1

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->size:I

    if-ne v1, v2, :cond_0

    .line 101
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->buf:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 102
    .local v0, "nb":[I
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->buf:[I

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->buf:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->buf:[I

    .line 105
    .end local v0    # "nb":[I
    :cond_0
    if-eqz p1, :cond_1

    .line 106
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->buf:[I

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->size:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 107
    :cond_1
    return-void
.end method

.method build()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->buf:[I

    array-length v1, v1

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->size:I

    if-ne v1, v2, :cond_0

    .line 112
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->buf:[I

    .line 116
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->size:I

    new-array v0, v1, [I

    .line 115
    .local v0, "r":[I
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->buf:[I

    iget v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
