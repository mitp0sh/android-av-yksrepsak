.class Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;
.super Ljava/lang/Object;
.source "PrimitiveArrayListerByte.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;->iterator([BLae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# instance fields
.field idx:I

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;

.field final synthetic val$objects:[B


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;[B)V
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte.1;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;->this$0:Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;

    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;->val$objects:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;->idx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 66
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte.1;"
    iget v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;->idx:I

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;->val$objects:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Byte;
    .locals 3

    .prologue
    .line 70
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte.1;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;->val$objects:[B

    iget v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;->idx:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte.1;"
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
