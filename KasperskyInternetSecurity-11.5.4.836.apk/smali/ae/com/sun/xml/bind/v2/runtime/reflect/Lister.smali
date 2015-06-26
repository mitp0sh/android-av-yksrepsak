.class public abstract Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
.super Ljava/lang/Object;
.source "Lister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFSIterator;,
        Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;,
        Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;,
        Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$Pack;,
        Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "PropT:",
        "Ljava/lang/Object;",
        "ItemT:",
        "Ljava/lang/Object;",
        "PackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COLLECTION_IMPL_CLASSES:[Ljava/lang/Class;

.field private static final EMPTY_ITERATOR:Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

.field public static final ERROR:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

.field private static final arrayListerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;",
            ">;>;"
        }
    .end annotation
.end field

.field static final primitiveArrayListers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->$assertionsDisabled:Z

    .line 176
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->arrayListerCache:Ljava/util/Map;

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->primitiveArrayListers:Ljava/util/Map;

    .line 264
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerBoolean;->register()V

    .line 265
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerByte;->register()V

    .line 266
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerCharacter;->register()V

    .line 267
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerDouble;->register()V

    .line 268
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerFloat;->register()V

    .line 269
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerInteger;->register()V

    .line 270
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerLong;->register()V

    .line 271
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/reflect/PrimitiveArrayListerShort;->register()V

    .line 480
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$1;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$1;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->ERROR:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 499
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$2;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$2;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->EMPTY_ITERATOR:Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    .line 509
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Ljava/util/ArrayList;

    aput-object v3, v0, v2

    const-class v2, Ljava/util/LinkedList;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/util/HashSet;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/util/TreeSet;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Ljava/util/Stack;

    aput-object v2, v0, v1

    sput-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->COLLECTION_IMPL_CLASSES:[Ljava/lang/Class;

    return-void

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister<TBeanT;TPropT;TItemT;TPackT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->EMPTY_ITERATOR:Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    return-object v0
.end method

.method public static create(Ljava/lang/reflect/Type;Lae/com/sun/xml/bind/v2/model/core/ID;Lae/com/sun/xml/bind/v2/model/core/Adapter;)Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .locals 8
    .param p0, "fieldType"    # Ljava/lang/reflect/Type;
    .param p1, "idness"    # Lae/com/sun/xml/bind/v2/model/core/ID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BeanT:",
            "Ljava/lang/Object;",
            "PropT:",
            "Ljava/lang/Object;",
            "ItemT:",
            "Ljava/lang/Object;",
            "PackT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lae/com/sun/xml/bind/v2/model/core/ID;",
            "Lae/com/sun/xml/bind/v2/model/core/Adapter",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            ">;)",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
            "<TBeanT;TPropT;TItemT;TPackT;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "adapter":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    sget-object v5, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-virtual {v5, p0}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 146
    .local v4, "rawType":Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 148
    .local v1, "itemType":Ljava/lang/Class;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->getArrayLister(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    move-result-object v2

    .line 160
    .local v2, "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    :goto_0
    sget-object v5, Lae/com/sun/xml/bind/v2/model/core/ID;->IDREF:Lae/com/sun/xml/bind/v2/model/core/ID;

    if-ne p1, v5, :cond_4

    .line 161
    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;

    invoke-direct {v3, v2, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$IDREFS;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;Ljava/lang/Class;)V

    .line 163
    .end local v2    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .local v3, "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    :goto_1
    if-eqz p2, :cond_3

    .line 164
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;

    iget-object v5, p2, Lae/com/sun/xml/bind/v2/model/core/Adapter;->adapterType:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Class;

    invoke-direct {v2, v3, v5}, Lae/com/sun/xml/bind/v2/runtime/reflect/AdaptedLister;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;Ljava/lang/Class;)V

    .line 166
    .end local v1    # "itemType":Ljava/lang/Class;
    .end local v3    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    :goto_2
    return-object v2

    .line 150
    :cond_0
    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    sget-object v5, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    const-class v6, Ljava/util/Collection;

    invoke-virtual {v5, p0, v6}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->getBaseClass(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 152
    .local v0, "bt":Ljava/lang/reflect/Type;
    instance-of v5, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_1

    .line 153
    sget-object v5, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "bt":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 156
    .restart local v1    # "itemType":Ljava/lang/Class;
    :goto_3
    new-instance v2, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;

    invoke-static {v4}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->getImplClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v2, v5}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$CollectionLister;-><init>(Ljava/lang/Class;)V

    .line 157
    .restart local v2    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    goto :goto_0

    .line 155
    .end local v1    # "itemType":Ljava/lang/Class;
    .end local v2    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .restart local v0    # "bt":Ljava/lang/reflect/Type;
    :cond_1
    const-class v1, Ljava/lang/Object;

    .restart local v1    # "itemType":Ljava/lang/Class;
    goto :goto_3

    .line 158
    .end local v0    # "bt":Ljava/lang/reflect/Type;
    .end local v1    # "itemType":Ljava/lang/Class;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .restart local v1    # "itemType":Ljava/lang/Class;
    .restart local v3    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    :cond_3
    move-object v2, v3

    .end local v3    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .restart local v2    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    goto :goto_2

    :cond_4
    move-object v3, v2

    .end local v2    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .restart local v3    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    goto :goto_1
.end method

.method private static getArrayLister(Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .locals 4
    .param p0, "componentType"    # Ljava/lang/Class;

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->primitiveArrayListers:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 195
    .restart local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    :cond_0
    :goto_0
    sget-boolean v2, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 187
    :cond_1
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->arrayListerCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 188
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;>;"
    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 190
    .restart local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    :cond_2
    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;

    .end local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister$ArrayLister;-><init>(Ljava/lang/Class;)V

    .line 192
    .restart local v0    # "l":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    sget-object v2, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->arrayListerCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;>;"
    :cond_3
    return-object v0
.end method

.method public static getErrorInstance()Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">()",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
            "<TA;TB;TC;TD;>;"
        }
    .end annotation

    .prologue
    .line 477
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->ERROR:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    return-object v0
.end method

.method private static getImplClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->COLLECTION_IMPL_CLASSES:[Ljava/lang/Class;

    invoke-static {p0, v0}, Lae/com/sun/xml/bind/v2/ClassFactory;->inferImplClass(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addToPack(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPackT;TItemT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation
.end method

.method public abstract endPacking(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
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
.end method

.method public abstract iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TPropT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator",
            "<TItemT;>;"
        }
    .end annotation
.end method

.method public abstract reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
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
.end method

.method public abstract startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Ljava/lang/Object;
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
.end method
