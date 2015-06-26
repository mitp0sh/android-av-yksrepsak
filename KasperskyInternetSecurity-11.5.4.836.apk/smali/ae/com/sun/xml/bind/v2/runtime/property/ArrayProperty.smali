.class abstract Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;
.super Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;
.source "ArrayProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ListT:Ljava/lang/Object;",
        "ItemT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl",
        "<TBeanT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;T",
            "ListT;",
            ">;"
        }
    .end annotation
.end field

.field protected final lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
            "<TBeanT;T",
            "ListT;",
            "TItemT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)V
    .locals 3
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    .prologue
    .line 63
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty<TBeanT;TListT;TItemT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/PropertyImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)V

    .line 65
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->isCollection()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_0
    sget-object v0, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->id()Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v1

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->create(Ljava/lang/reflect/Type;Lae/com/sun/xml/bind/v2/model/core/ID;Lae/com/sun/xml/bind/v2/model/core/Adapter;)Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 68
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_1
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->optimize(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 70
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_2
    return-void
.end method


# virtual methods
.method public final getIdValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty<TBeanT;TListT;TItemT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty<TBeanT;TListT;TItemT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayProperty;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->reset(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    .line 75
    return-void
.end method
