.class final Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.source "PrimitiveArrayListerByte.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
        "<TBeanT;[B",
        "Ljava/lang/Byte;",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte<TBeanT;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;-><init>()V

    .line 56
    return-void
.end method

.method static register()V
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->primitiveArrayListers:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;

    invoke-direct {v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method public addToPack(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;Ljava/lang/Byte;)V
    .locals 0
    .param p1, "objects"    # Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;
    .param p2, "o"    # Ljava/lang/Byte;

    .prologue
    .line 80
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte<TBeanT;>;"
    invoke-virtual {p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->add(Ljava/lang/Byte;)V

    .line 81
    return-void
.end method

.method public bridge synthetic addToPack(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte<TBeanT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;->addToPack(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;Ljava/lang/Byte;)V

    return-void
.end method

.method public endPacking(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .param p1, "pack"    # Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;",
            "TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte<TBeanT;>;"
    .local p2, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p3, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;[B>;"
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;->build()[B

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public bridge synthetic endPacking(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte<TBeanT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;->endPacking(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    return-void
.end method

.method public bridge synthetic iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 53
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte<TBeanT;>;"
    check-cast p1, [B

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;->iterator([BLae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator([BLae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 1
    .param p1, "objects"    # [B
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte<TBeanT;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;[B)V

    return-object v0
.end method

.method public reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    .local p2, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;[B>;"
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p2, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;[B>;)",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte<TBeanT;>;"
    .local p1, "current":Ljava/lang/Object;, "TBeanT;"
    .local p2, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;[B>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;-><init>()V

    return-object v0
.end method

.method public bridge synthetic startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte<TBeanT;>;"
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;->startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte$ByteArrayPack;

    move-result-object v0

    return-object v0
.end method
