.class public abstract Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
.super Ljava/lang/Object;
.source "TransducedAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;,
        Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;,
        Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor<TBeanT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method public static get(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;)Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
    .locals 7
    .param p0, "context"    # Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;
    .param p1, "ref"    # Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;",
            "Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;",
            ")",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/model/impl/RuntimeModelBuilder;->createTransducer(Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;)Lae/com/sun/xml/bind/v2/runtime/Transducer;

    move-result-object v2

    .line 159
    .local v2, "xducer":Lae/com/sun/xml/bind/v2/runtime/Transducer;
    invoke-interface {p1}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimeNonElementRef;->getSource()Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;

    move-result-object v0

    .line 161
    .local v0, "prop":Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->isCollection()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v3

    sget-object v4, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->REFLECTION:Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/nav/ReflectionNavigator;->erasure(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->id()Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v5

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getAdapter()Lae/com/sun/xml/bind/v2/model/core/Adapter;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->create(Ljava/lang/reflect/Type;Lae/com/sun/xml/bind/v2/model/core/ID;Lae/com/sun/xml/bind/v2/model/core/Adapter;)Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;)V

    .line 178
    :cond_0
    :goto_0
    return-object v1

    .line 167
    :cond_1
    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->id()Lae/com/sun/xml/bind/v2/model/core/ID;

    move-result-object v3

    sget-object v4, Lae/com/sun/xml/bind/v2/model/core/ID;->IDREF:Lae/com/sun/xml/bind/v2/model/core/ID;

    if-ne v3, v4, :cond_2

    .line 168
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v3

    invoke-direct {v1, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p0, :cond_3

    iget-boolean v3, p0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->fastBoot:Z

    if-nez v3, :cond_3

    .line 171
    invoke-static {v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/opt/OptimizedTransducedAccessorFactory;->get(Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;)Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    move-result-object v1

    .line 172
    .local v1, "xa":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
    if-nez v1, :cond_0

    .line 175
    .end local v1    # "xa":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
    :cond_3
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->useNamespace()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeContextDependentTransducedAccessorImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/Transducer;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    goto :goto_0

    .line 178
    :cond_4
    new-instance v1, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/model/runtime/RuntimePropertyInfo;->getAccessor()Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$CompositeTransducedAccessorImpl;-><init>(Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;Lae/com/sun/xml/bind/v2/runtime/Transducer;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    goto :goto_0
.end method


# virtual methods
.method public declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 0
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
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    return-void
.end method

.method public abstract hasValue(Ljava/lang/Object;)Z
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
.end method

.method public abstract parse(Ljava/lang/Object;Ljava/lang/CharSequence;)V
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
.end method

.method public abstract print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/sun/istack/NotNull;
        .end annotation
    .end param
    .annotation build Lcom/sun/istack/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public useNamespace()Z
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor<TBeanT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V
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
.end method

.method public abstract writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V
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
.end method
