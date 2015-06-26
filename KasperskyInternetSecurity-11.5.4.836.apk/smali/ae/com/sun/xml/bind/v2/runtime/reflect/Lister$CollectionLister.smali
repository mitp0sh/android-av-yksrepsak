.class public final Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.source "Lister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionLister"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "T::",
        "Ljava/util/Collection;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
        "<TBeanT;TT;",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final implClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
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
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister<TBeanT;TT;>;"
    .local p1, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;-><init>()V

    .line 286
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;->implClass:Ljava/lang/Class;

    .line 287
    return-void
.end method


# virtual methods
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
    .line 277
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister<TBeanT;TT;>;"
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;->addToPack(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public addToPack(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 0
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister<TBeanT;TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "TT;"
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 314
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
    .line 277
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister<TBeanT;TT;>;"
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;->endPacking(Ljava/util/Collection;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    return-void
.end method

.method public endPacking(Ljava/util/Collection;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister<TBeanT;TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "TT;"
    .local p2, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p3, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TT;>;"
    :try_start_0
    invoke-virtual {p3, p2, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lae/com/sun/xml/bind/api/AccessorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :cond_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "ae":Lae/com/sun/xml/bind/api/AccessorException;
    invoke-virtual {p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->isAdapted()Z

    move-result v1

    if-eqz v1, :cond_0

    throw v0
.end method

.method public bridge synthetic iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    .prologue
    .line 277
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister<TBeanT;TT;>;"
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;->iterator(Ljava/util/Collection;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Ljava/util/Collection;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 2
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister<TBeanT;TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "TT;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 291
    .local v0, "itr":Ljava/util/Iterator;
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister$1;

    invoke-direct {v1, p0, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister<TBeanT;TT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p2, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TT;>;"
    invoke-virtual {p2, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 334
    .local v0, "collection":Ljava/util/Collection;, "TT;"
    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0
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
    .line 277
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister<TBeanT;TT;>;"
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;->startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister<TBeanT;TT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p2, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TT;>;"
    invoke-virtual {p2, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 303
    .local v0, "collection":Ljava/util/Collection;, "TT;"
    if-nez v0, :cond_0

    .line 304
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;->implClass:Ljava/lang/Class;

    invoke-static {v1}, Lae/com/sun/xml/bind/v2/ClassFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "collection":Ljava/util/Collection;, "TT;"
    check-cast v0, Ljava/util/Collection;

    .line 305
    .restart local v0    # "collection":Ljava/util/Collection;, "TT;"
    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->isAdapted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    invoke-virtual {p2, p1, v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 309
    return-object v0
.end method
