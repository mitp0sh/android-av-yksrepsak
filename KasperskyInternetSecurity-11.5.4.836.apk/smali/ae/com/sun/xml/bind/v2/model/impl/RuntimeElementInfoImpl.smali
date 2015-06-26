.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;
.super Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;
.source "RuntimeElementInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl$RuntimePropertyImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementInfo;"
    }
.end annotation


# instance fields
.field private final adapterType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lae/javax/xml/bind/annotation/adapters/XmlAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "modelBuilder"    # Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;
    .param p2, "registry"    # Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Lae/com/sun/xml/bind/v2/model/impl/RegistryInfoImpl;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;->getProperty()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    move-result-object v1

    invoke-interface {v1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;

    move-result-object v0

    .line 76
    .local v0, "a":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<Ljava/lang/reflect/Type;Ljava/lang/Class;>;"
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, v0, Lae/com/sun/xml/bind/v2/model/core/Adapter;->adapterType:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;->adapterType:Ljava/lang/Class;

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;->adapterType:Ljava/lang/Class;

    goto :goto_0
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;

    .prologue
    .line 68
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;->adapterType:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method protected createPropertyImpl()Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl$PropertyImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ">.PropertyImpl;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl$RuntimePropertyImpl;

    invoke-direct {v0, p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl$RuntimePropertyImpl;-><init>(Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;)V

    return-object v0
.end method

.method public bridge synthetic getContentType()Lae/com/sun/xml/bind/v2/model/core/NonElement;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;->getContentType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->getContentType()Lae/com/sun/xml/bind/v2/model/core/NonElement;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElement;

    return-object v0
.end method

.method public bridge synthetic getProperty()Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;->getProperty()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getProperty()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->getProperty()Lae/com/sun/xml/bind/v2/model/core/ElementPropertyInfo;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    return-object v0
.end method

.method public bridge synthetic getScope()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;->getScope()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    move-result-object v0

    return-object v0
.end method

.method public getScope()Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->getScope()Lae/com/sun/xml/bind/v2/model/core/ClassInfo;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeClassInfo;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lae/javax/xml/bind/JAXBElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v1, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-super {p0}, Lae/com/sun/xml/bind/v2/model/impl/ElementInfoImpl;->getType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-virtual {v1, v0}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeElementInfoImpl;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
