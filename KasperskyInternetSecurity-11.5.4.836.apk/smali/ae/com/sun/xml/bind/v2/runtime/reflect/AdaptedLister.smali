.class final Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.source "AdaptedLister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "PropT:",
        "Ljava/lang/Object;",
        "InMemItemT:",
        "Ljava/lang/Object;",
        "OnWireItemT:",
        "Ljava/lang/Object;",
        "PackT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
        "<TBeanT;TPropT;TOnWireItemT;TPackT;>;"
    }
.end annotation


# instance fields
.field private final adapter:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
            "<TOnWireItemT;TInMemItemT;>;>;"
        }
    .end annotation
.end field

.field private final core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
            "<TBeanT;TPropT;TInMemItemT;TPackT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
            "<TBeanT;TPropT;TInMemItemT;TPackT;>;",
            "Ljava/lang/Class",
            "<+",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
            "<TOnWireItemT;TInMemItemT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister<TBeanT;TPropT;TInMemItemT;TOnWireItemT;TPackT;>;"
    .local p1, "core":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister<TBeanT;TPropT;TInMemItemT;TPackT;>;"
    .local p2, "adapter":Ljava/lang/Class;, "Ljava/lang/Class<+Lae/javax/xml/bind/annotation/adapters/XmlAdapter<TOnWireItemT;TInMemItemT;>;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;-><init>()V

    .line 63
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 64
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;->adapter:Ljava/lang/Class;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;

    .prologue
    .line 55
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;->getAdapter()Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v0

    return-object v0
.end method

.method private getAdapter()Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
            "<TOnWireItemT;TInMemItemT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister<TBeanT;TPropT;TInMemItemT;TOnWireItemT;TPackT;>;"
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->_getInstance()Lae/com/sun/xml/bind/v2/runtime/Coordinator;

    move-result-object v0

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;->adapter:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->getAdapter(Ljava/lang/Class;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addToPack(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPackT;TOnWireItemT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister<TBeanT;TPropT;TInMemItemT;TOnWireItemT;TPackT;>;"
    .local p1, "pack":Ljava/lang/Object;, "TPackT;"
    .local p2, "item":Ljava/lang/Object;, "TOnWireItemT;"
    :try_start_0
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;->getAdapter()Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;->unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    .local v1, "r":Ljava/lang/Object;, "TInMemItemT;"
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v2, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->addToPack(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    return-void

    .line 83
    .end local v1    # "r":Ljava/lang/Object;, "TInMemItemT;"
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lae/com/sun/xml/bind/api/AccessorException;

    invoke-direct {v2, v0}, Lae/com/sun/xml/bind/api/AccessorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public endPacking(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPackT;TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TPropT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister<TBeanT;TPropT;TInMemItemT;TOnWireItemT;TPackT;>;"
    .local p1, "pack":Ljava/lang/Object;, "TPackT;"
    .local p2, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p3, "accessor":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TPropT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->endPacking(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    .line 91
    return-void
.end method

.method public iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 2
    .param p2, "context"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPropT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
            "<TOnWireItemT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister<TBeanT;TPropT;TInMemItemT;TOnWireItemT;TPackT;>;"
    .local p1, "prop":Ljava/lang/Object;, "TPropT;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v1, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister$ListIteratorImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    return-object v0
.end method

.method public reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TPropT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister<TBeanT;TPropT;TInMemItemT;TOnWireItemT;TPackT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p2, "accessor":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TPropT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    .line 95
    return-void
.end method

.method public startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TPropT;>;)TPackT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister<TBeanT;TPropT;TInMemItemT;TOnWireItemT;TPackT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p2, "accessor":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TPropT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
