.class public Lae/com/sun/xml/bind/v2/ContextFactory;
.super Ljava/lang/Object;
.source "ContextFactory.java"


# static fields
.field public static final USE_JAXB_PROPERTIES:Ljava/lang/String; = "_useJAXBProperties"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createContext([Ljava/lang/Class;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;ZLae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;ZZZ)Lae/com/sun/xml/bind/api/JAXBRIContext;
    .locals 10
    .param p0, "classes"    # [Ljava/lang/Class;
    .param p3, "defaultNsUri"    # Ljava/lang/String;
    .param p4, "c14nSupport"    # Z
    .param p5, "ar"    # Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
    .param p6, "xmlAccessorFactorySupport"    # Z
    .param p7, "allNillable"    # Z
    .param p8, "retainPropertyInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "Ljava/util/Collection",
            "<",
            "Lae/com/sun/xml/bind/api/TypeReference;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;",
            "ZZZ)",
            "Lae/com/sun/xml/bind/api/JAXBRIContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "typeRefs":Ljava/util/Collection;, "Ljava/util/Collection<Lae/com/sun/xml/bind/api/TypeReference;>;"
    .local p2, "subclassReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Class;>;"
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lae/com/sun/xml/bind/v2/ContextFactory;->createContext([Ljava/lang/Class;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;ZLae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;ZZZZ)Lae/com/sun/xml/bind/api/JAXBRIContext;

    move-result-object v0

    return-object v0
.end method

.method public static createContext([Ljava/lang/Class;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;ZLae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;ZZZZ)Lae/com/sun/xml/bind/api/JAXBRIContext;
    .locals 2
    .param p0, "classes"    # [Ljava/lang/Class;
    .param p3, "defaultNsUri"    # Ljava/lang/String;
    .param p4, "c14nSupport"    # Z
    .param p5, "ar"    # Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
    .param p6, "xmlAccessorFactorySupport"    # Z
    .param p7, "allNillable"    # Z
    .param p8, "retainPropertyInfo"    # Z
    .param p9, "improvedXsiTypeHandling"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "Ljava/util/Collection",
            "<",
            "Lae/com/sun/xml/bind/api/TypeReference;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;",
            "ZZZZ)",
            "Lae/com/sun/xml/bind/api/JAXBRIContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "typeRefs":Ljava/util/Collection;, "Ljava/util/Collection<Lae/com/sun/xml/bind/api/TypeReference;>;"
    .local p2, "subclassReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Class;>;"
    new-instance v0, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    invoke-direct {v0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;-><init>()V

    .line 179
    .local v0, "builder":Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    invoke-virtual {v0, p0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setClasses([Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 180
    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setTypeRefs(Ljava/util/Collection;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 181
    invoke-virtual {v0, p2}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setSubclassReplacements(Ljava/util/Map;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 182
    invoke-virtual {v0, p3}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setDefaultNsUri(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 183
    invoke-virtual {v0, p4}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setC14NSupport(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 184
    invoke-virtual {v0, p5}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setAnnotationReader(Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 185
    invoke-virtual {v0, p6}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setXmlAccessorFactorySupport(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 186
    invoke-virtual {v0, p7}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setAllNillable(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 187
    invoke-virtual {v0, p8}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setRetainPropertyInfo(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 188
    invoke-virtual {v0, p9}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setImprovedXsiTypeHandling(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 189
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->build()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v1

    return-object v1
.end method

.method public static createContext(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;
    .locals 12
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
            "Ljava/lang/Object;",
            ">;)",
            "Lae/javax/xml/bind/JAXBContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 197
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/sun/istack/FinalArrayList;

    invoke-direct {v0}, Lcom/sun/istack/FinalArrayList;-><init>()V

    .line 198
    .local v0, "classes":Lcom/sun/istack/FinalArrayList;, "Lcom/sun/istack/FinalArrayList<Ljava/lang/Class;>;"
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, ":"

    invoke-direct {v7, p0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .local v7, "tokens":Ljava/util/StringTokenizer;
    :cond_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 206
    const/4 v2, 0x0

    .local v2, "foundJaxbIndex":Z
    move v3, v2

    .line 207
    .local v3, "foundObjectFactory":I
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, "pkg":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".ObjectFactory"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 213
    .local v5, "o":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v5}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    const/4 v3, 0x1

    .line 221
    .end local v3    # "foundObjectFactory":I
    .end local v5    # "o":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_1
    invoke-static {v6, p1}, Lae/com/sun/xml/bind/v2/ContextFactory;->loadIndexedClasses(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 226
    .local v4, "indexedClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    if-eqz v4, :cond_1

    .line 227
    invoke-virtual {v0, v4}, Lcom/sun/istack/FinalArrayList;->addAll(Ljava/util/Collection;)Z

    .line 228
    const/4 v2, 0x1

    .line 231
    :cond_1
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 232
    new-instance v8, Lae/javax/xml/bind/JAXBException;

    sget-object v9, Lae/com/sun/xml/bind/v2/Messages;->BROKEN_CONTEXTPATH:Lae/com/sun/xml/bind/v2/Messages;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v9, v10}, Lae/com/sun/xml/bind/v2/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 222
    .end local v4    # "indexedClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/IOException;
    new-instance v8, Lae/javax/xml/bind/JAXBException;

    invoke-direct {v8, v1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 237
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "foundJaxbIndex":Z
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/sun/istack/FinalArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v8}, Lcom/sun/istack/FinalArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Class;

    invoke-static {v8, p2}, Lae/com/sun/xml/bind/v2/ContextFactory;->createContext([Ljava/lang/Class;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v8

    return-object v8

    .line 215
    .restart local v2    # "foundJaxbIndex":Z
    .restart local v3    # "foundObjectFactory":I
    .restart local v6    # "pkg":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public static createContext([Ljava/lang/Class;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;
    .locals 18
    .param p0, "classes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lae/javax/xml/bind/JAXBContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_6

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 89
    :goto_0
    const-string v13, "ae.com.sun.xml.bind.defaultNamespaceRemap"

    const-class v14, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lae/com/sun/xml/bind/v2/ContextFactory;->getPropertyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 91
    .local v5, "defaultNsUri":Ljava/lang/String;
    const-string v13, "ae.com.sun.xml.bind.c14n"

    const-class v14, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lae/com/sun/xml/bind/v2/ContextFactory;->getPropertyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 92
    .local v4, "c14nSupport":Ljava/lang/Boolean;
    if-nez v4, :cond_0

    .line 93
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 95
    :cond_0
    const-string v13, "ae.com.sun.xml.bind.treatEverythingNillable"

    const-class v14, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lae/com/sun/xml/bind/v2/ContextFactory;->getPropertyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 96
    .local v1, "allNillable":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    .line 97
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 99
    :cond_1
    const-string v13, "retainReferenceToInfo"

    const-class v14, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lae/com/sun/xml/bind/v2/ContextFactory;->getPropertyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    .line 100
    .local v9, "retainPropertyInfo":Ljava/lang/Boolean;
    if-nez v9, :cond_2

    .line 101
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 103
    :cond_2
    const-string v13, "supressAccessorWarnings"

    const-class v14, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lae/com/sun/xml/bind/v2/ContextFactory;->getPropertyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    .line 104
    .local v11, "supressAccessorWarnings":Ljava/lang/Boolean;
    if-nez v11, :cond_3

    .line 105
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 107
    :cond_3
    const-string v13, "ae.com.sun.xml.bind.improvedXsiTypeHandling"

    const-class v14, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lae/com/sun/xml/bind/v2/ContextFactory;->getPropertyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 108
    .local v7, "improvedXsiTypeHandling":Ljava/lang/Boolean;
    if-nez v7, :cond_4

    .line 109
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 111
    :cond_4
    const-string v13, "ae.com.sun.xml.bind.XmlAccessorFactory"

    const-class v14, Ljava/lang/Boolean;

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lae/com/sun/xml/bind/v2/ContextFactory;->getPropertyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .line 113
    .local v12, "xmlAccessorFactorySupport":Ljava/lang/Boolean;
    if-nez v12, :cond_5

    .line 114
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 115
    invoke-static {}, Lae/com/sun/xml/bind/Util;->getClassLogger()Ljava/util/logging/Logger;

    move-result-object v13

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v15, "Property ae.com.sun.xml.bind.XmlAccessorFactoryis not active.  Using JAXB\'s implementation"

    invoke-virtual {v13, v14, v15}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 120
    :cond_5
    sget-object v13, Lae/com/sun/xml/bind/api/JAXBRIContext;->ANNOTATION_READER:Ljava/lang/String;

    const-class v14, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lae/com/sun/xml/bind/v2/ContextFactory;->getPropertyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;

    .line 124
    .local v2, "ar":Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
    :try_start_0
    const-string v13, "ae.com.sun.xml.bind.subclassReplacements"

    const-class v14, Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lae/com/sun/xml/bind/v2/ContextFactory;->getPropertyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    const-class v14, Ljava/lang/Class;

    const-class v15, Ljava/lang/Class;

    invoke-static {v13, v14, v15}, Lae/com/sun/xml/bind/v2/util/TypeCast;->checkedCast(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 130
    .local v10, "subclassReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Class;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    .line 131
    new-instance v13, Lae/javax/xml/bind/JAXBException;

    sget-object v14, Lae/com/sun/xml/bind/v2/Messages;->UNSUPPORTED_PROPERTY:Lae/com/sun/xml/bind/v2/Messages;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Lae/com/sun/xml/bind/v2/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 87
    .end local v1    # "allNillable":Ljava/lang/Boolean;
    .end local v2    # "ar":Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
    .end local v4    # "c14nSupport":Ljava/lang/Boolean;
    .end local v5    # "defaultNsUri":Ljava/lang/String;
    .end local v7    # "improvedXsiTypeHandling":Ljava/lang/Boolean;
    .end local v9    # "retainPropertyInfo":Ljava/lang/Boolean;
    .end local v10    # "subclassReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Class;>;"
    .end local v11    # "supressAccessorWarnings":Ljava/lang/Boolean;
    .end local v12    # "xmlAccessorFactorySupport":Ljava/lang/Boolean;
    :cond_6
    new-instance v8, Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .end local p1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v8, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 p1, v8

    .end local v8    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 126
    .restart local v1    # "allNillable":Ljava/lang/Boolean;
    .restart local v2    # "ar":Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;
    .restart local v4    # "c14nSupport":Ljava/lang/Boolean;
    .restart local v5    # "defaultNsUri":Ljava/lang/String;
    .restart local v7    # "improvedXsiTypeHandling":Ljava/lang/Boolean;
    .restart local v9    # "retainPropertyInfo":Ljava/lang/Boolean;
    .restart local v11    # "supressAccessorWarnings":Ljava/lang/Boolean;
    .restart local v12    # "xmlAccessorFactorySupport":Ljava/lang/Boolean;
    :catch_0
    move-exception v6

    .line 127
    .local v6, "e":Ljava/lang/ClassCastException;
    new-instance v13, Lae/javax/xml/bind/JAXBException;

    sget-object v14, Lae/com/sun/xml/bind/v2/Messages;->INVALID_TYPE_IN_MAP:Lae/com/sun/xml/bind/v2/Messages;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v14, v15}, Lae/com/sun/xml/bind/v2/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v6}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 134
    .end local v6    # "e":Ljava/lang/ClassCastException;
    .restart local v10    # "subclassReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Class;>;"
    :cond_7
    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    invoke-direct {v3}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;-><init>()V

    .line 135
    .local v3, "builder":Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setClasses([Ljava/lang/Class;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v3, v13}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setTypeRefs(Ljava/util/Collection;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 137
    invoke-virtual {v3, v10}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setSubclassReplacements(Ljava/util/Map;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 138
    invoke-virtual {v3, v5}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setDefaultNsUri(Ljava/lang/String;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 139
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v3, v13}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setC14NSupport(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 140
    invoke-virtual {v3, v2}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setAnnotationReader(Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 141
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v3, v13}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setXmlAccessorFactorySupport(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 142
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v3, v13}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setAllNillable(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 143
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v3, v13}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setRetainPropertyInfo(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 144
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v3, v13}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setSupressAccessorWarnings(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 145
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v3, v13}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->setImprovedXsiTypeHandling(Z)Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;

    .line 146
    invoke-virtual {v3}, Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl$JAXBContextBuilder;->build()Lae/com/sun/xml/bind/v2/runtime/JAXBContextImpl;

    move-result-object v13

    return-object v13
.end method

.method private static getPropertyValue(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "keyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 160
    :goto_0
    return-object v1

    .line 156
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    new-instance v1, Lae/javax/xml/bind/JAXBException;

    sget-object v2, Lae/com/sun/xml/bind/v2/Messages;->INVALID_PROPERTY_VALUE:Lae/com/sun/xml/bind/v2/Messages;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static loadIndexedClasses(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 10
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2e

    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2f

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/jaxb.index"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, "resource":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 253
    .local v5, "resourceAsStream":Ljava/io/InputStream;
    if-nez v5, :cond_0

    .line 254
    const/4 v1, 0x0

    .line 283
    :goto_0
    return-object v1

    .line 257
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 260
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Lcom/sun/istack/FinalArrayList;

    invoke-direct {v1}, Lcom/sun/istack/FinalArrayList;-><init>()V

    .line 261
    .local v1, "classes":Lcom/sun/istack/FinalArrayList;, "Lcom/sun/istack/FinalArrayList<Ljava/lang/Class;>;"
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "className":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_4

    .line 263
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 264
    const-string v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 265
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 266
    goto :goto_1

    .line 269
    :cond_2
    const-string v6, ".class"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 270
    new-instance v6, Lae/javax/xml/bind/JAXBException;

    sget-object v7, Lae/com/sun/xml/bind/v2/Messages;->ILLEGAL_ENTRY:Lae/com/sun/xml/bind/v2/Messages;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "classes":Lcom/sun/istack/FinalArrayList;, "Lcom/sun/istack/FinalArrayList<Ljava/lang/Class;>;"
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v6

    .line 274
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "classes":Lcom/sun/istack/FinalArrayList;, "Lcom/sun/istack/FinalArrayList<Ljava/lang/Class;>;"
    :cond_3
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sun/istack/FinalArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v6, Lae/javax/xml/bind/JAXBException;

    sget-object v7, Lae/com/sun/xml/bind/v2/Messages;->ERROR_LOADING_CLASS:Lae/com/sun/xml/bind/v2/Messages;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_0
.end method
