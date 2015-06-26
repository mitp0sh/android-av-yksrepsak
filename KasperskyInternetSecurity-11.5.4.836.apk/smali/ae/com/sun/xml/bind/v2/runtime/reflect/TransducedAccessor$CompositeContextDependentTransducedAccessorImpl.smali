.class Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;
.source "TransducedAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompositeContextDependentTransducedAccessorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ValueT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl",
        "<TBeanT;TValueT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    const-class v0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/Transducer;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .param p1, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TValueT;>;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TValueT;>;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl<TBeanT;TValueT;>;"
    .local p2, "xducer":Lae/com/sun/xml/bind/v2/runtime/Transducer;, "Lae/com/sun/xml/bind/v2/runtime/Transducer<TValueT;>;"
    .local p3, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    invoke-direct {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/Transducer;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    .line 201
    sget-boolean v0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->useNamespace()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 2
    .param p2, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    .local v0, "o":Ljava/lang/Object;, "TValueT;"
    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, v0, p2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 214
    :cond_0
    return-void
.end method

.method public useNamespace()Z
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl<TBeanT;TValueT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p2, "tagName"    # Lae/com/sun/xml/bind/v2/runtime/Name;
    .param p4, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            "Lae/com/sun/xml/bind/v2/runtime/Name;",
            "TBeanT;",
            "Ljava/lang/String;",
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
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl<TBeanT;TValueT;>;"
    .local p3, "o":Ljava/lang/Object;, "TBeanT;"
    const/4 v0, 0x0

    .line 218
    invoke-virtual {p1, p2, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->startElement(Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p0, p3, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;->declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V

    .line 220
    invoke-virtual {p1, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endNamespaceDecls(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endAttributes()V

    .line 222
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v1, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1, p4}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->endElement()V

    .line 224
    return-void
.end method
