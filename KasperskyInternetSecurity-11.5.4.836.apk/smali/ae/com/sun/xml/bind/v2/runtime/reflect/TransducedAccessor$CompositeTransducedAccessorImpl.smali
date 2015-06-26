.class public Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
.source "TransducedAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompositeTransducedAccessorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ValueT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor",
        "<TBeanT;>;"
    }
.end annotation


# instance fields
.field protected final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TValueT;>;"
        }
    .end annotation
.end field

.field protected final xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TValueT;>;"
        }
    .end annotation
.end field


# direct methods
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
    .line 236
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl<TBeanT;TValueT;>;"
    .local p2, "xducer":Lae/com/sun/xml/bind/v2/runtime/Transducer;, "Lae/com/sun/xml/bind/v2/runtime/Transducer<TValueT;>;"
    .local p3, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TValueT;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;-><init>()V

    .line 237
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 238
    invoke-virtual {p3, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->optimize(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;)Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 239
    return-void
.end method


# virtual methods
.method public hasValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->getUnadapted(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 2
    .param p2, "lexical"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, p2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->parse(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl<TBeanT;TValueT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v1, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 243
    .local v0, "o":Ljava/lang/Object;, "TValueT;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 244
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v1, v0}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->print(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
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
    .line 257
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl<TBeanT;TValueT;>;"
    .local p3, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v1, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1, p4}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            "TBeanT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lae/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl<TBeanT;TValueT;>;"
    .local p2, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    iget-object v1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    return-void
.end method
