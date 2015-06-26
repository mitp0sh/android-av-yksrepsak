.class final Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.source "Lister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayLister"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ItemT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
        "<TBeanT;[TItemT;TItemT;",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack",
        "<TItemT;>;>;"
    }
.end annotation


# instance fields
.field private final itemType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TItemT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TItemT;>;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister<TBeanT;TItemT;>;"
    .local p1, "itemType":Ljava/lang/Class;, "Ljava/lang/Class<TItemT;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;-><init>()V

    .line 211
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;->itemType:Ljava/lang/Class;

    .line 212
    return-void
.end method


# virtual methods
.method public addToPack(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack",
            "<TItemT;>;TItemT;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister<TBeanT;TItemT;>;"
    .local p1, "objects":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack<TItemT;>;"
    .local p2, "o":Ljava/lang/Object;, "TItemT;"
    invoke-virtual {p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;->add(Ljava/lang/Object;)Z

    .line 233
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
    .line 206
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister<TBeanT;TItemT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;->addToPack(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;Ljava/lang/Object;)V

    return-void
.end method

.method public endPacking(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack",
            "<TItemT;>;TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;[TItemT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister<TBeanT;TItemT;>;"
    .local p1, "pack":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack<TItemT;>;"
    .local p2, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p3, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;[TItemT;>;"
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;->build()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
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
    .line 206
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister<TBeanT;TItemT;>;"
    check-cast p1, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;->endPacking(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    return-void
.end method

.method public bridge synthetic iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 206
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister<TBeanT;TItemT;>;"
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;->iterator([Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator([Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 1
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TItemT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
            "<TItemT;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister<TBeanT;TItemT;>;"
    .local p1, "objects":[Ljava/lang/Object;, "[TItemT;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;

    invoke-direct {v0, p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;[TItemT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister<TBeanT;TItemT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    .local p2, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;[TItemT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;->itemType:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;[TItemT;>;)",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister<TBeanT;TItemT;>;"
    .local p1, "current":Ljava/lang/Object;, "TBeanT;"
    .local p2, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;[TItemT;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;->itemType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;-><init>(Ljava/lang/Class;)V

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
    .line 206
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister<TBeanT;TItemT;>;"
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;->startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;

    move-result-object v0

    return-object v0
.end method
