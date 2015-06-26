.class final Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.source "PrimitiveArrayListerFloat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
        "<TBeanT;[F",
        "Ljava/lang/Float;",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat<TBeanT;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;-><init>()V

    .line 59
    return-void
.end method

.method static register()V
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->primitiveArrayListers:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;

    invoke-direct {v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method


# virtual methods
.method public addToPack(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;Ljava/lang/Float;)V
    .locals 0
    .param p1, "objects"    # Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;
    .param p2, "o"    # Ljava/lang/Float;

    .prologue
    .line 83
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat<TBeanT;>;"
    invoke-virtual {p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;->add(Ljava/lang/Float;)V

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
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat<TBeanT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;->addToPack(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;Ljava/lang/Float;)V

    return-void
.end method

.method public endPacking(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .param p1, "pack"    # Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;",
            "TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;[F>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat<TBeanT;>;"
    .local p2, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p3, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;[F>;"
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;->build()[F

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
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat<TBeanT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;->endPacking(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    return-void
.end method

.method public bridge synthetic iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 56
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat<TBeanT;>;"
    check-cast p1, [F

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;->iterator([FLae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator([FLae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 1
    .param p1, "objects"    # [F
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat<TBeanT;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$1;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;[F)V

    return-object v0
.end method

.method public reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;[F>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    .local p2, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;[F>;"
    const/4 v0, 0x0

    new-array v0, v0, [F

    invoke-virtual {p2, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;[F>;)",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat<TBeanT;>;"
    .local p1, "current":Ljava/lang/Object;, "TBeanT;"
    .local p2, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;[F>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;-><init>()V

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
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;, "Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat<TBeanT;>;"
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;->startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat$FloatArrayPack;

    move-result-object v0

    return-object v0
.end method
