.class public abstract Lae/javax/xml/bind/JAXBContext;
.super Ljava/lang/Object;
.source "JAXBContext.java"


# static fields
.field public static final JAXB_CONTEXT_FACTORY:Ljava/lang/String; = "ae.javax.xml.bind.context.factory"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 767
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 768
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 770
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lae/javax/xml/bind/JAXBContext$1;

    invoke-direct {v0}, Lae/javax/xml/bind/JAXBContext$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lae/javax/xml/bind/JAXBContext;
    .locals 1
    .param p0, "contextPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {}, Lae/javax/xml/bind/JAXBContext;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Lae/javax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Lae/javax/xml/bind/JAXBContext;
    .locals 1
    .param p0, "contextPath"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lae/javax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;
    .locals 1
    .param p0, "contextPath"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lae/javax/xml/bind/JAXBContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 446
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v0, "ae.javax.xml.bind.context.factory"

    invoke-static {v0, p0, p1, p2}, Lae/javax/xml/bind/ContextFinder;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newInstance([Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;
    .locals 1
    .param p0, "classesToBeBound"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 599
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lae/javax/xml/bind/JAXBContext;->newInstance([Ljava/lang/Class;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([Ljava/lang/Class;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;
    .locals 2
    .param p0, "classesToBeBound"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lae/javax/xml/bind/JAXBContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 645
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 648
    :cond_0
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 649
    aget-object v1, p0, v0

    if-nez v1, :cond_1

    .line 650
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 648
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 652
    :cond_2
    invoke-static {p0, p1}, Lae/javax/xml/bind/ContextFinder;->find([Ljava/lang/Class;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createBinder()Lae/javax/xml/bind/Binder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/javax/xml/bind/Binder",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 722
    const-class v0, Lorg/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lae/javax/xml/bind/JAXBContext;->createBinder(Ljava/lang/Class;)Lae/javax/xml/bind/Binder;

    move-result-object v0

    return-object v0
.end method

.method public createBinder(Ljava/lang/Class;)Lae/javax/xml/bind/Binder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lae/javax/xml/bind/Binder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, "domType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createJAXBIntrospector()Lae/javax/xml/bind/JAXBIntrospector;
    .locals 1

    .prologue
    .line 741
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract createMarshaller()Lae/javax/xml/bind/Marshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract createUnmarshaller()Lae/javax/xml/bind/Unmarshaller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public abstract createValidator()Lae/javax/xml/bind/Validator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public generateSchema(Lae/javax/xml/bind/SchemaOutputResolver;)V
    .locals 1
    .param p1, "outputResolver"    # Lae/javax/xml/bind/SchemaOutputResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
