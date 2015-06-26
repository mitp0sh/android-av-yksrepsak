.class final Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
.source "AdaptedAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "InMemValueT:",
        "Ljava/lang/Object;",
        "OnWireValueT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
        "<TBeanT;TOnWireValueT;>;"
    }
.end annotation


# instance fields
.field private final adapter:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
            "<TOnWireValueT;TInMemValueT;>;>;"
        }
    .end annotation
.end field

.field private final core:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TInMemValueT;>;"
        }
    .end annotation
.end field

.field private staticAdapter:Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
            "<TOnWireValueT;TInMemValueT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TOnWireValueT;>;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TInMemValueT;>;",
            "Ljava/lang/Class",
            "<+",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
            "<TOnWireValueT;TInMemValueT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor<TBeanT;TInMemValueT;TOnWireValueT;>;"
    .local p1, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TOnWireValueT;>;"
    .local p2, "extThis":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TInMemValueT;>;"
    .local p3, "adapter":Ljava/lang/Class;, "Ljava/lang/Class<+Lae/javax/xml/bind/annotation/adapters/XmlAdapter<TOnWireValueT;TInMemValueT;>;>;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;-><init>(Ljava/lang/Class;)V

    .line 62
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 63
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;->adapter:Ljava/lang/Class;

    .line 64
    return-void
.end method

.method private getAdapter()Lae/javax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter",
            "<TOnWireValueT;TInMemValueT;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor<TBeanT;TInMemValueT;TOnWireValueT;>;"
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->_getInstance()Lae/com/sun/xml/bind/v2/runtime/Coordinator;

    move-result-object v0

    .line 108
    .local v0, "coordinator":Lae/com/sun/xml/bind/v2/runtime/Coordinator;
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;->adapter:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/Coordinator;->getAdapter(Ljava/lang/Class;)Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 111
    :cond_0
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;->staticAdapter:Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;->adapter:Ljava/lang/Class;

    invoke-static {v1}, Lae/com/sun/xml/bind/v2/ClassFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;->staticAdapter:Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    .line 114
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;->staticAdapter:Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)TOnWireValueT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor<TBeanT;TInMemValueT;TOnWireValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v3, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 74
    .local v2, "v":Ljava/lang/Object;, "TInMemValueT;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;->getAdapter()Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v0

    .line 76
    .local v0, "a":Lae/javax/xml/bind/annotation/adapters/XmlAdapter;, "Lae/javax/xml/bind/annotation/adapters/XmlAdapter<TOnWireValueT;TInMemValueT;>;"
    :try_start_0
    invoke-virtual {v0, v2}, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;->marshal(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lae/com/sun/xml/bind/api/AccessorException;

    invoke-direct {v3, v1}, Lae/com/sun/xml/bind/api/AccessorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getUnadapted(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor<TBeanT;TInMemValueT;TOnWireValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->getUnadapted(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isAdapted()Z
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor<TBeanT;TInMemValueT;TOnWireValueT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;TOnWireValueT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor<TBeanT;TInMemValueT;TOnWireValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p2, "o":Ljava/lang/Object;, "TOnWireValueT;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;->getAdapter()Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    move-result-object v0

    .line 85
    .local v0, "a":Lae/javax/xml/bind/annotation/adapters/XmlAdapter;, "Lae/javax/xml/bind/annotation/adapters/XmlAdapter<TOnWireValueT;TInMemValueT;>;"
    :try_start_0
    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, p1, v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    return-void

    .line 85
    :cond_0
    invoke-virtual {v0, p2}, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;->unmarshal(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lae/com/sun/xml/bind/api/AccessorException;

    invoke-direct {v2, v1}, Lae/com/sun/xml/bind/api/AccessorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setUnadapted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor<TBeanT;TInMemValueT;TOnWireValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedAccessor;->core:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->setUnadapted(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    return-void
.end method
