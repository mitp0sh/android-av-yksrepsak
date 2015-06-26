.class final Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;
.source "TransducedAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IDREFTransducedAccessorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "TargetT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor",
        "<TBeanT;>;"
    }
.end annotation


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TTargetT;>;"
        }
    .end annotation
.end field

.field private final targetType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTargetT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;TTargetT;>;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl<TBeanT;TTargetT;>;"
    .local p1, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TTargetT;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;-><init>()V

    .line 281
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 282
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->getValueType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->targetType:Ljava/lang/Class;

    .line 283
    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->assign(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V

    return-void
.end method

.method private assign(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V
    .locals 4
    .param p3, "context"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;TTargetT;",
            "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl<TBeanT;TTargetT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    .local p2, "t":Ljava/lang/Object;, "TTargetT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->targetType:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    sget-object v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->UNASSIGNABLE_TYPE:Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->targetType:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
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
    .line 358
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl<TBeanT;TTargetT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 9
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
    .line 309
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl<TBeanT;TTargetT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    invoke-static {p2}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "idref":Ljava/lang/String;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getInstance()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v3

    .line 312
    .local v3, "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    iget-object v0, v0, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->valueType:Ljava/lang/Class;

    invoke-virtual {v3, v5, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getObjectFromId(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/concurrent/Callable;

    move-result-object v2

    .line 313
    .local v2, "callable":Ljava/util/concurrent/Callable;
    if-nez v2, :cond_0

    .line 315
    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getLocator()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    move-result-object v0

    invoke-virtual {v3, p1, v5, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->errorUnresolvedIDREF(Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;)V

    .line 355
    :goto_0
    return-void

    .line 321
    :cond_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 329
    .local v8, "t":Ljava/lang/Object;, "TTargetT;"
    if-eqz v8, :cond_1

    .line 330
    invoke-direct {p0, p1, v8, v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->assign(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V

    goto :goto_0

    .line 322
    .end local v8    # "t":Ljava/lang/Object;, "TTargetT;"
    :catch_0
    move-exception v7

    .line 323
    .local v7, "e":Lorg/xml/sax/SAXException;
    throw v7

    .line 324
    .end local v7    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v7

    .line 325
    .local v7, "e":Ljava/lang/RuntimeException;
    throw v7

    .line 326
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v7

    .line 327
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/sun/istack/SAXException2;

    invoke-direct {v0, v7}, Lcom/sun/istack/SAXException2;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 333
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "t":Ljava/lang/Object;, "TTargetT;"
    :cond_1
    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;

    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getLocator()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;

    move-result-object v0

    invoke-direct {v6, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx$Snapshot;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;)V

    .line 334
    .local v6, "loc":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl$1;-><init>(Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;Ljava/util/concurrent/Callable;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;Ljava/lang/Object;Ljava/lang/String;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/LocatorEx;)V

    invoke-virtual {v3, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->addPatcher(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Patcher;)V

    goto :goto_0
.end method

.method public bridge synthetic print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl<TBeanT;TTargetT;>;"
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl<TBeanT;TTargetT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    const/4 v4, 0x0

    .line 286
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/TransducedAccessor$IDREFTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v5, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 287
    .local v2, "target":Ljava/lang/Object;, "TTargetT;"
    if-nez v2, :cond_1

    move-object v1, v4

    .line 297
    :cond_0
    :goto_0
    return-object v1

    .line 289
    :cond_1
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getInstance()Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    move-result-object v3

    .line 291
    .local v3, "w":Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    :try_start_0
    iget-object v5, v3, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->grammar:Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;->getBeanInfo(Ljava/lang/Object;Z)Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lae/com/sun/xml/bind/v2/runtime/JaxBeanInfo;->getId(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "id":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 293
    invoke-virtual {v3, v2}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->errorMissingId(Ljava/lang/Object;)V
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    .end local v1    # "id":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    invoke-virtual {v3, v4, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    .line 297
    goto :goto_0
.end method
