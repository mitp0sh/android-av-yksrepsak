.class final Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.source "PrimitiveArrayListerInteger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
        "<TBeanT;[I",
        "Ljava/lang/Integer;",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger<TBeanT;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;-><init>()V

    .line 59
    return-void
.end method

.method static register()V
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->primitiveArrayListers:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;

    invoke-direct {v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method


# virtual methods
.method public addToPack(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "objects"    # Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;
    .param p2, "o"    # Ljava/lang/Integer;

    .prologue
    .line 83
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger<TBeanT;>;"
    invoke-virtual {p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->add(Ljava/lang/Integer;)V

    .line 84
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
    .line 56
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger<TBeanT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;->addToPack(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;Ljava/lang/Integer;)V

    return-void
.end method

.method public endPacking(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .param p1, "pack"    # Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;",
            "TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;[I>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger<TBeanT;>;"
    .local p2, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p3, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;[I>;"
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;->build()[I

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
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
    .line 56
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger<TBeanT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;->endPacking(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    return-void
.end method

.method public bridge synthetic iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 56
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger<TBeanT;>;"
    check-cast p1, [I

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;->iterator([ILae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator([ILae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 1
    .param p1, "objects"    # [I
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger<TBeanT;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$1;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;[I)V

    return-object v0
.end method

.method public reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;[I>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    .local p2, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;[I>;"
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p2, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;[I>;)",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger<TBeanT;>;"
    .local p1, "current":Ljava/lang/Object;, "TBeanT;"
    .local p2, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;[I>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;-><init>()V

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
    .line 56
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger<TBeanT;>;"
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;->startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger$IntegerArrayPack;

    move-result-object v0

    return-object v0
.end method
