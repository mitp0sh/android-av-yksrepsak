.class final Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;
.super Ljava/lang/Object;
.source "RuntimeClassInfoImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/runtime/Transducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransducerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/runtime/Transducer",
        "<TBeanT;>;"
    }
.end annotation


# instance fields
.field private final ownerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TBeanT;>;"
        }
    .end annotation
.end field

.field private final xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor",
            "<TBeanT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TBeanT;>;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor",
            "<TBeanT;>;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl<TBeanT;>;"
    .local p1, "ownerClass":Ljava/lang/Class;, "Ljava/lang/Class<TBeanT;>;"
    .local p2, "xacc":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor<TBeanT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    .line 359
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;->ownerClass:Ljava/lang/Class;

    .line 360
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
    .line 372
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl<TBeanT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    :try_start_0
    iget-object v1, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v1, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lae/com/sun/xml/bind/api/AccessorException;

    invoke-direct {v1, v0}, Lae/com/sun/xml/bind/api/AccessorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTypeName(Ljava/lang/Object;)Ljavax/xml/namespace/QName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljavax/xml/namespace/QName;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl<TBeanT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TBeanT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 367
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl<TBeanT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 3
    .param p1, "lexical"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TBeanT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl<TBeanT;>;"
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    .line 392
    .local v0, "ctxt":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    if-eqz v0, :cond_0

    .line 393
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;->ownerClass:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->createInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 399
    .local v1, "inst":Ljava/lang/Object;, "TBeanT;"
    :goto_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v2, v1, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->parse(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 400
    return-object v1

    .line 397
    .end local v1    # "inst":Ljava/lang/Object;, "TBeanT;"
    :cond_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;->ownerClass:Ljava/lang/Class;

    invoke-static {v2}, Lae/com/sun/xml/bind/v2/ClassFactory;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "inst":Ljava/lang/Object;, "TBeanT;"
    goto :goto_0
.end method

.method public print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 6
    .annotation build Lcom/sun/istack/NotNull;
    .end annotation

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
    .line 380
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl<TBeanT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    :try_start_0
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v2, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->print(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 381
    .local v1, "value":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 382
    new-instance v2, Lae/com/sun/xml/bind/api/AccessorException;

    sget-object v3, Lae/com/sun/xml/bind/v2/model/impl/Messages;->THERE_MUST_BE_VALUE_IN_XMLVALUE:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lae/com/sun/xml/bind/api/AccessorException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v1    # "value":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Lae/com/sun/xml/bind/api/AccessorException;

    invoke-direct {v2, v0}, Lae/com/sun/xml/bind/api/AccessorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 383
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .restart local v1    # "value":Ljava/lang/CharSequence;
    :cond_0
    return-object v1
.end method

.method public useNamespace()Z
    .locals 1

    .prologue
    .line 363
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl<TBeanT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->useNamespace()Z

    move-result v0

    return v0
.end method

.method public writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
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
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 410
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl<TBeanT;>;"
    .local p3, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->hasValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lae/com/sun/xml/bind/api/AccessorException;

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/Messages;->THERE_MUST_BE_VALUE_IN_XMLVALUE:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/api/AccessorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->writeLeafElement(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Lae/com/sun/xml/bind/v2/runtime/Name;Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
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
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lae/javax/xml/stream/XMLStreamException;,
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;, "Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl<TBeanT;>;"
    .local p2, "o":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->hasValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Lae/com/sun/xml/bind/api/AccessorException;

    sget-object v1, Lae/com/sun/xml/bind/v2/model/impl/Messages;->THERE_MUST_BE_VALUE_IN_XMLVALUE:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lae/com/sun/xml/bind/api/AccessorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/RuntimeClassInfoImpl$TransducerImpl;->xacc:Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;

    invoke-virtual {v0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;->writeText(Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    return-void
.end method
