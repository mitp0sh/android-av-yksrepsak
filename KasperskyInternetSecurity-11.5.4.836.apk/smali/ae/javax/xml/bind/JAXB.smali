.class public final Lae/javax/xml/bind/JAXB;
.super Ljava/lang/Object;
.source "JAXB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/javax/xml/bind/JAXB$Cache;
    }
.end annotation


# static fields
.field private static volatile cache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lae/javax/xml/bind/JAXB$Cache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _marshal(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p0, "jaxbObject"    # Ljava/lang/Object;
    .param p1, "xml"    # Ljava/lang/Object;

    .prologue
    .line 575
    :try_start_0
    instance-of v7, p0, Lae/javax/xml/bind/JAXBElement;

    if-eqz v7, :cond_1

    .line 576
    move-object v0, p0

    check-cast v0, Lae/javax/xml/bind/JAXBElement;

    move-object v7, v0

    invoke-virtual {v7}, Lae/javax/xml/bind/JAXBElement;->getDeclaredType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lae/javax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v2

    .line 587
    .local v2, "context":Lae/javax/xml/bind/JAXBContext;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lae/javax/xml/bind/JAXBContext;->createMarshaller()Lae/javax/xml/bind/Marshaller;

    move-result-object v5

    .line 588
    .local v5, "m":Lae/javax/xml/bind/Marshaller;
    const-string v7, "jaxb.formatted.output"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lae/javax/xml/bind/Marshaller;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    invoke-static {p1}, Lae/javax/xml/bind/JAXB;->toResult(Ljava/lang/Object;)Ljavax/xml/transform/Result;

    move-result-object v7

    invoke-interface {v5, p0, v7}, Lae/javax/xml/bind/Marshaller;->marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V

    .line 595
    return-void

    .line 578
    .end local v2    # "context":Lae/javax/xml/bind/JAXBContext;
    .end local v5    # "m":Lae/javax/xml/bind/Marshaller;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 579
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Lae/javax/xml/bind/annotation/XmlRootElement;

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lae/javax/xml/bind/annotation/XmlRootElement;

    .line 580
    .local v6, "r":Lae/javax/xml/bind/annotation/XmlRootElement;
    invoke-static {v1}, Lae/javax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v2

    .line 581
    .restart local v2    # "context":Lae/javax/xml/bind/JAXBContext;
    if-nez v6, :cond_0

    .line 583
    new-instance v4, Lae/javax/xml/bind/JAXBElement;

    new-instance v7, Ljavax/xml/namespace/QName;

    invoke-static {v1}, Lae/javax/xml/bind/JAXB;->inferName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7, v1, p0}, Lae/javax/xml/bind/JAXBElement;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v4, "jaxbObject":Lae/javax/xml/bind/JAXBElement;
    move-object p0, v4

    goto :goto_0

    .line 590
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "context":Lae/javax/xml/bind/JAXBContext;
    .end local v4    # "jaxbObject":Lae/javax/xml/bind/JAXBElement;
    .end local v6    # "r":Lae/javax/xml/bind/annotation/XmlRootElement;
    :catch_0
    move-exception v3

    .line 591
    .local v3, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v7, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v7, v3}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 592
    .end local v3    # "e":Lae/javax/xml/bind/JAXBException;
    :catch_1
    move-exception v3

    .line 593
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v7, v3}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static getContext(Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lae/javax/xml/bind/JAXBContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lae/javax/xml/bind/JAXB;->cache:Ljava/lang/ref/WeakReference;

    .line 149
    .local v0, "c":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lae/javax/xml/bind/JAXB$Cache;>;"
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lae/javax/xml/bind/JAXB$Cache;

    .line 151
    .local v1, "d":Lae/javax/xml/bind/JAXB$Cache;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lae/javax/xml/bind/JAXB$Cache;->type:Ljava/lang/Class;

    if-ne v2, p0, :cond_0

    .line 152
    iget-object v2, v1, Lae/javax/xml/bind/JAXB$Cache;->context:Lae/javax/xml/bind/JAXBContext;

    .line 159
    :goto_0
    return-object v2

    .line 156
    .end local v1    # "d":Lae/javax/xml/bind/JAXB$Cache;
    :cond_0
    new-instance v1, Lae/javax/xml/bind/JAXB$Cache;

    invoke-direct {v1, p0}, Lae/javax/xml/bind/JAXB$Cache;-><init>(Ljava/lang/Class;)V

    .line 157
    .restart local v1    # "d":Lae/javax/xml/bind/JAXB$Cache;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lae/javax/xml/bind/JAXB;->cache:Ljava/lang/ref/WeakReference;

    .line 159
    iget-object v2, v1, Lae/javax/xml/bind/JAXB$Cache;->context:Lae/javax/xml/bind/JAXBContext;

    goto :goto_0
.end method

.method private static inferName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 598
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static marshal(Ljava/lang/Object;Ljava/io/File;)V
    .locals 0
    .param p0, "jaxbObject"    # Ljava/lang/Object;
    .param p1, "xml"    # Ljava/io/File;

    .prologue
    .line 349
    invoke-static {p0, p1}, Lae/javax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method public static marshal(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "jaxbObject"    # Ljava/lang/Object;
    .param p1, "xml"    # Ljava/io/OutputStream;

    .prologue
    .line 449
    invoke-static {p0, p1}, Lae/javax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method public static marshal(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 0
    .param p0, "jaxbObject"    # Ljava/lang/Object;
    .param p1, "xml"    # Ljava/io/Writer;

    .prologue
    .line 473
    invoke-static {p0, p1}, Lae/javax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 474
    return-void
.end method

.method public static marshal(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "jaxbObject"    # Ljava/lang/Object;
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-static {p0, p1}, Lae/javax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method public static marshal(Ljava/lang/Object;Ljava/net/URI;)V
    .locals 0
    .param p0, "jaxbObject"    # Ljava/lang/Object;
    .param p1, "xml"    # Ljava/net/URI;

    .prologue
    .line 400
    invoke-static {p0, p1}, Lae/javax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public static marshal(Ljava/lang/Object;Ljava/net/URL;)V
    .locals 0
    .param p0, "jaxbObject"    # Ljava/lang/Object;
    .param p1, "xml"    # Ljava/net/URL;

    .prologue
    .line 376
    invoke-static {p0, p1}, Lae/javax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method public static marshal(Ljava/lang/Object;Ljavax/xml/transform/Result;)V
    .locals 0
    .param p0, "jaxbObject"    # Ljava/lang/Object;
    .param p1, "xml"    # Ljavax/xml/transform/Result;

    .prologue
    .line 496
    invoke-static {p0, p1}, Lae/javax/xml/bind/JAXB;->_marshal(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 497
    return-void
.end method

.method private static toResult(Ljava/lang/Object;)Ljavax/xml/transform/Result;
    .locals 12
    .param p0, "xml"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    if-nez p0, :cond_0

    .line 607
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "no XML is given"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 609
    :cond_0
    instance-of v9, p0, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 611
    :try_start_0
    new-instance v8, Ljava/net/URI;

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "xml":Ljava/lang/Object;
    .local v8, "xml":Ljava/net/URI;
    move-object p0, v8

    .line 616
    .end local v8    # "xml":Ljava/net/URI;
    .restart local p0    # "xml":Ljava/lang/Object;
    :cond_1
    :goto_0
    instance-of v9, p0, Ljava/io/File;

    if-eqz v9, :cond_2

    move-object v3, p0

    .line 617
    check-cast v3, Ljava/io/File;

    .line 618
    .local v3, "file":Ljava/io/File;
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v6, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 641
    .end local v3    # "file":Ljava/io/File;
    .end local p0    # "xml":Ljava/lang/Object;
    :goto_1
    return-object v6

    .line 612
    .restart local p0    # "xml":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 613
    .local v2, "e":Ljava/net/URISyntaxException;
    new-instance v8, Ljava/io/File;

    check-cast p0, Ljava/lang/String;

    .end local p0    # "xml":Ljava/lang/Object;
    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, "xml":Ljava/io/File;
    move-object p0, v8

    .restart local p0    # "xml":Ljava/lang/Object;
    goto :goto_0

    .line 620
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .end local v8    # "xml":Ljava/io/File;
    :cond_2
    instance-of v9, p0, Ljava/net/URI;

    if-eqz v9, :cond_7

    move-object v5, p0

    .line 621
    check-cast v5, Ljava/net/URI;

    .line 622
    .local v5, "uri":Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    .local p0, "xml":Ljava/net/URL;
    move-object v6, p0

    .line 624
    .end local v5    # "uri":Ljava/net/URI;
    .end local p0    # "xml":Ljava/net/URL;
    :goto_2
    instance-of v9, v6, Ljava/net/URL;

    if-eqz v9, :cond_3

    .line 625
    check-cast v6, Ljava/net/URL;

    .line 626
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 627
    .local v1, "con":Ljava/net/URLConnection;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 628
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 629
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 630
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    .end local v6    # "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v6, v9}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 632
    .end local v1    # "con":Ljava/net/URLConnection;
    :cond_3
    instance-of v9, v6, Ljava/io/OutputStream;

    if-eqz v9, :cond_4

    move-object v4, v6

    .line 633
    check-cast v4, Ljava/io/OutputStream;

    .line 634
    .local v4, "os":Ljava/io/OutputStream;
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v6, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 636
    .end local v4    # "os":Ljava/io/OutputStream;
    :cond_4
    instance-of v9, v6, Ljava/io/Writer;

    if-eqz v9, :cond_5

    move-object v7, v6

    .line 637
    check-cast v7, Ljava/io/Writer;

    .line 638
    .local v7, "w":Ljava/io/Writer;
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v6, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    goto :goto_1

    .line 640
    .end local v7    # "w":Ljava/io/Writer;
    :cond_5
    instance-of v9, v6, Ljavax/xml/transform/Result;

    if-eqz v9, :cond_6

    .line 641
    check-cast v6, Ljavax/xml/transform/Result;

    goto :goto_1

    .line 643
    :cond_6
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "I don\'t understand how to handle "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .local p0, "xml":Ljava/lang/Object;
    :cond_7
    move-object v6, p0

    goto :goto_2
.end method

.method private static toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;
    .locals 11
    .param p0, "xml"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    if-nez p0, :cond_0

    .line 293
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "no XML is given"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 295
    :cond_0
    instance-of v8, p0, Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 297
    :try_start_0
    new-instance v7, Ljava/net/URI;

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    invoke-direct {v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "xml":Ljava/lang/Object;
    .local v7, "xml":Ljava/net/URI;
    move-object p0, v7

    .line 302
    .end local v7    # "xml":Ljava/net/URI;
    .restart local p0    # "xml":Ljava/lang/Object;
    :cond_1
    :goto_0
    instance-of v8, p0, Ljava/io/File;

    if-eqz v8, :cond_2

    move-object v2, p0

    .line 303
    check-cast v2, Ljava/io/File;

    .line 304
    .local v2, "file":Ljava/io/File;
    new-instance v6, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v6, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    .line 323
    .end local v2    # "file":Ljava/io/File;
    .end local p0    # "xml":Ljava/lang/Object;
    :goto_1
    return-object v6

    .line 298
    .restart local p0    # "xml":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/net/URISyntaxException;
    new-instance v7, Ljava/io/File;

    check-cast p0, Ljava/lang/String;

    .end local p0    # "xml":Ljava/lang/Object;
    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v7, "xml":Ljava/io/File;
    move-object p0, v7

    .restart local p0    # "xml":Ljava/lang/Object;
    goto :goto_0

    .line 306
    .end local v1    # "e":Ljava/net/URISyntaxException;
    .end local v7    # "xml":Ljava/io/File;
    :cond_2
    instance-of v8, p0, Ljava/net/URI;

    if-eqz v8, :cond_7

    move-object v5, p0

    .line 307
    check-cast v5, Ljava/net/URI;

    .line 308
    .local v5, "uri":Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    .local p0, "xml":Ljava/net/URL;
    move-object v6, p0

    .line 310
    .end local v5    # "uri":Ljava/net/URI;
    .end local p0    # "xml":Ljava/net/URL;
    :goto_2
    instance-of v8, v6, Ljava/net/URL;

    if-eqz v8, :cond_3

    .line 311
    check-cast v6, Ljava/net/URL;

    .line 312
    .local v6, "url":Ljava/net/URL;
    new-instance v8, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v6}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    goto :goto_1

    .line 314
    .end local v6    # "url":Ljava/net/URL;
    :cond_3
    instance-of v8, v6, Ljava/io/InputStream;

    if-eqz v8, :cond_4

    move-object v3, v6

    .line 315
    check-cast v3, Ljava/io/InputStream;

    .line 316
    .local v3, "in":Ljava/io/InputStream;
    new-instance v6, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v6, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    .line 318
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_4
    instance-of v8, v6, Ljava/io/Reader;

    if-eqz v8, :cond_5

    move-object v4, v6

    .line 319
    check-cast v4, Ljava/io/Reader;

    .line 320
    .local v4, "r":Ljava/io/Reader;
    new-instance v6, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v6, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    goto :goto_1

    .line 322
    .end local v4    # "r":Ljava/io/Reader;
    :cond_5
    instance-of v8, v6, Ljavax/xml/transform/Source;

    if-eqz v8, :cond_6

    .line 323
    check-cast v6, Ljavax/xml/transform/Source;

    goto :goto_1

    .line 325
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "I don\'t understand how to handle "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .local p0, "xml":Ljava/lang/Object;
    :cond_7
    move-object v6, p0

    goto :goto_2
.end method

.method public static unmarshal(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "xml"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p1}, Lae/javax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v2

    invoke-virtual {v2}, Lae/javax/xml/bind/JAXBContext;->createUnmarshaller()Lae/javax/xml/bind/Unmarshaller;

    move-result-object v2

    new-instance v3, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v3, p0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-interface {v2, v3, p1}, Lae/javax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;

    move-result-object v1

    .line 171
    .local v1, "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    invoke-virtual {v1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 172
    .end local v1    # "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v2, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static unmarshal(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "xml"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p1}, Lae/javax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v2

    invoke-virtual {v2}, Lae/javax/xml/bind/JAXBContext;->createUnmarshaller()Lae/javax/xml/bind/Unmarshaller;

    move-result-object v2

    invoke-static {p0}, Lae/javax/xml/bind/JAXB;->toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lae/javax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;

    move-result-object v1

    .line 241
    .local v1, "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    invoke-virtual {v1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 242
    .end local v1    # "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v2, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 244
    .end local v0    # "e":Lae/javax/xml/bind/JAXBException;
    :catch_1
    move-exception v0

    .line 245
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static unmarshal(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "xml"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p1}, Lae/javax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v2

    invoke-virtual {v2}, Lae/javax/xml/bind/JAXBContext;->createUnmarshaller()Lae/javax/xml/bind/Unmarshaller;

    move-result-object v2

    invoke-static {p0}, Lae/javax/xml/bind/JAXB;->toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lae/javax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;

    move-result-object v1

    .line 260
    .local v1, "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    invoke-virtual {v1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 261
    .end local v1    # "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v2, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 263
    .end local v0    # "e":Lae/javax/xml/bind/JAXBException;
    :catch_1
    move-exception v0

    .line 264
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static unmarshal(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p1}, Lae/javax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v2

    invoke-virtual {v2}, Lae/javax/xml/bind/JAXBContext;->createUnmarshaller()Lae/javax/xml/bind/Unmarshaller;

    move-result-object v2

    invoke-static {p0}, Lae/javax/xml/bind/JAXB;->toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lae/javax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;

    move-result-object v1

    .line 223
    .local v1, "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    invoke-virtual {v1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 224
    .end local v1    # "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v2, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 226
    .end local v0    # "e":Lae/javax/xml/bind/JAXBException;
    :catch_1
    move-exception v0

    .line 227
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static unmarshal(Ljava/net/URI;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "xml"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p1}, Lae/javax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v2

    invoke-virtual {v2}, Lae/javax/xml/bind/JAXBContext;->createUnmarshaller()Lae/javax/xml/bind/Unmarshaller;

    move-result-object v2

    invoke-static {p0}, Lae/javax/xml/bind/JAXB;->toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lae/javax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;

    move-result-object v1

    .line 204
    .local v1, "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    invoke-virtual {v1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 205
    .end local v1    # "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v2, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 207
    .end local v0    # "e":Lae/javax/xml/bind/JAXBException;
    :catch_1
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static unmarshal(Ljava/net/URL;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "xml"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p1}, Lae/javax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v2

    invoke-virtual {v2}, Lae/javax/xml/bind/JAXBContext;->createUnmarshaller()Lae/javax/xml/bind/Unmarshaller;

    move-result-object v2

    invoke-static {p0}, Lae/javax/xml/bind/JAXB;->toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lae/javax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;

    move-result-object v1

    .line 186
    .local v1, "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    invoke-virtual {v1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 187
    .end local v1    # "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v2, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 189
    .end local v0    # "e":Lae/javax/xml/bind/JAXBException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "xml"    # Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/xml/transform/Source;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p1}, Lae/javax/xml/bind/JAXB;->getContext(Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v2

    invoke-virtual {v2}, Lae/javax/xml/bind/JAXBContext;->createUnmarshaller()Lae/javax/xml/bind/Unmarshaller;

    move-result-object v2

    invoke-static {p0}, Lae/javax/xml/bind/JAXB;->toSource(Ljava/lang/Object;)Ljavax/xml/transform/Source;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lae/javax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBElement;

    move-result-object v1

    .line 277
    .local v1, "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    invoke-virtual {v1}, Lae/javax/xml/bind/JAXBElement;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 278
    .end local v1    # "item":Lae/javax/xml/bind/JAXBElement;, "Lae/javax/xml/bind/JAXBElement<TT;>;"
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    new-instance v2, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 280
    .end local v0    # "e":Lae/javax/xml/bind/JAXBException;
    :catch_1
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lae/javax/xml/bind/DataBindingException;

    invoke-direct {v2, v0}, Lae/javax/xml/bind/DataBindingException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
