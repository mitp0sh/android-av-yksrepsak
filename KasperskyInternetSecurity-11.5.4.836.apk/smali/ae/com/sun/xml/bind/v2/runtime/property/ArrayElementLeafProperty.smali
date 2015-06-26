.class final Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty;
.super Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;
.source "ArrayElementLeafProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ListT:Ljava/lang/Object;",
        "ItemT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty",
        "<TBeanT;T",
        "ListT;",
        "TItemT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TItemT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;)V
    .locals 2
    .param p1, "p"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p2, "prop"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;

    .prologue
    .line 70
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty<TBeanT;TListT;TItemT;>;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementProperty;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;)V

    .line 73
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_0
    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeElementPropertyInfo;->getTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeTypeRef;->getTransducer()Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 77
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_1
    return-void
.end method


# virtual methods
.method public serializeItem(Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 2
    .param p1, "bi"    # Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;
    .param p3, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;",
            "TItemT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lae/com/sun/xml/bind/api/AccessorException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty;, "Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty<TBeanT;TListT;TItemT;>;"
    .local p2, "item":Ljava/lang/Object;, "TItemT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v0, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 82
    invoke-virtual {p3, p2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p3}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 86
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/property/ArrayElementLeafProperty;->fieldName:Ljava/lang/String;

    invoke-interface {v0, p3, p2, v1}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    return-void
.end method
