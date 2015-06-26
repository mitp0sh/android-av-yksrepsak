.class Lae/javax/xml/bind/ContextFinder;
.super Ljava/lang/Object;
.source "ContextFinder.java"


# static fields
.field private static final PLATFORM_DEFAULT_FACTORY_CLASS:Ljava/lang/String; = "ae.com.sun.xml.bind.v2.ContextFactory"

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const-string v1, "ae.javax.xml.bind"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    .line 77
    :try_start_0
    new-instance v1, Lae/javax/xml/bind/GetPropertyAction;

    const-string v2, "jaxb.debug"

    invoke-direct {v1, v2}, Lae/javax/xml/bind/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    sget-object v1, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 81
    sget-object v1, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 82
    new-instance v0, Ljava/util/logging/ConsoleHandler;

    invoke-direct {v0}, Ljava/util/logging/ConsoleHandler;-><init>()V

    .line 83
    .local v0, "handler":Ljava/util/logging/ConsoleHandler;
    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/ConsoleHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 84
    sget-object v1, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;
    .locals 18
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "contextPath"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "properties"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 285
    const-class v14, Lae/javax/xml/bind/JAXBContext;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, "jaxbContextFQCN":Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v14, ":"

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v8, "packages":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-nez v14, :cond_0

    .line 294
    new-instance v14, Lae/javax/xml/bind/JAXBException;

    const-string v15, "ContextFinder.NoPackageInContextPath"

    invoke-static {v15}, Lae/javax/xml/bind/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 297
    :cond_0
    sget-object v14, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string v15, "Searching jaxb.properties"

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 299
    :cond_1
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 300
    const-string v14, ":"

    invoke-virtual {v8, v14}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x2e

    const/16 v16, 0x2f

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "packageName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/jaxb.properties"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 304
    .local v9, "propFileName":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lae/javax/xml/bind/ContextFinder;->loadJAXBProperties(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v10

    .line 305
    .local v10, "props":Ljava/util/Properties;
    if-eqz v10, :cond_1

    .line 306
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 307
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "factoryClassName":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Lae/javax/xml/bind/ContextFinder;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v14

    .line 361
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "propFileName":Ljava/lang/StringBuilder;
    .end local v10    # "props":Ljava/util/Properties;
    :goto_0
    return-object v14

    .line 310
    .end local v5    # "factoryClassName":Ljava/lang/String;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v9    # "propFileName":Ljava/lang/StringBuilder;
    .restart local v10    # "props":Ljava/util/Properties;
    :cond_2
    new-instance v14, Lae/javax/xml/bind/JAXBException;

    const-string v15, "ContextFinder.MissingProperty"

    move-object/from16 v0, p0

    invoke-static {v15, v7, v0}, Lae/javax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 315
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "propFileName":Ljava/lang/StringBuilder;
    .end local v10    # "props":Ljava/util/Properties;
    :cond_3
    sget-object v14, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string v15, "Searching the system property"

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 318
    new-instance v14, Lae/javax/xml/bind/GetPropertyAction;

    const-string v15, "ae.javax.xml.bind.context.factory"

    invoke-direct {v14, v15}, Lae/javax/xml/bind/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 319
    .restart local v5    # "factoryClassName":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 320
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Lae/javax/xml/bind/ContextFinder;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v14

    goto :goto_0

    .line 322
    :cond_4
    new-instance v14, Lae/javax/xml/bind/GetPropertyAction;

    invoke-direct {v14, v6}, Lae/javax/xml/bind/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "factoryClassName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 323
    .restart local v5    # "factoryClassName":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 324
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Lae/javax/xml/bind/ContextFinder;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v14

    goto :goto_0

    .line 328
    :cond_5
    invoke-static {}, Lae/javax/xml/bind/ContextFinder;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object/from16 v0, p2

    if-ne v14, v0, :cond_6

    .line 329
    const-string v14, "ae.javax.xml.bind.JAXBContext"

    invoke-static {v14}, Lae/javax/xml/bind/ContextFinder;->lookupUsingOSGiServiceLoader(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 330
    .local v4, "factory":Ljava/lang/Class;
    if-eqz v4, :cond_6

    .line 331
    sget-object v14, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string v15, "OSGi environment detected"

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lae/javax/xml/bind/ContextFinder;->newInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v14

    goto :goto_0

    .line 336
    .end local v4    # "factory":Ljava/lang/Class;
    :cond_6
    sget-object v14, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string v15, "Searching META-INF/services"

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 340
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "META-INF/services/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 341
    .local v12, "resource":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 344
    .local v13, "resourceStream":Ljava/io/InputStream;
    if-eqz v13, :cond_7

    .line 345
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    const-string v15, "UTF-8"

    invoke-direct {v14, v13, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v11, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 346
    .local v11, "r":Ljava/io/BufferedReader;
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 347
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 348
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Lae/javax/xml/bind/ContextFinder;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v14

    goto/16 :goto_0

    .line 350
    .end local v11    # "r":Ljava/io/BufferedReader;
    :cond_7
    sget-object v14, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v16, "Unable to load:{0}"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v14 .. v17}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    sget-object v14, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string v15, "Trying to create the platform default provider"

    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 361
    const-string v14, "ae.com.sun.xml.bind.v2.ContextFactory"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v14, v1, v2}, Lae/javax/xml/bind/ContextFinder;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v14

    goto/16 :goto_0

    .line 352
    .end local v12    # "resource":Ljava/lang/StringBuilder;
    .end local v13    # "resourceStream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 354
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v14, Lae/javax/xml/bind/JAXBException;

    invoke-direct {v14, v3}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 355
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 356
    .local v3, "e":Ljava/io/IOException;
    new-instance v14, Lae/javax/xml/bind/JAXBException;

    invoke-direct {v14, v3}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v14
.end method

.method static find([Ljava/lang/Class;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;
    .locals 24
    .param p0, "classes"    # [Ljava/lang/Class;
    .param p1, "properties"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 366
    const-class v20, Lae/javax/xml/bind/JAXBContext;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 370
    .local v11, "jaxbContextFQCN":Ljava/lang/String;
    move-object/from16 v4, p0

    .local v4, "arr$":[Ljava/lang/Class;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_3

    aget-object v5, v4, v10

    .line 372
    .local v5, "c":Ljava/lang/Class;
    invoke-static {v5}, Lae/javax/xml/bind/ContextFinder;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v6

    .line 373
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v14

    .line 374
    .local v14, "pkg":Ljava/lang/Package;
    if-nez v14, :cond_0

    .line 370
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v14}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2e

    const/16 v22, 0x2f

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    .line 385
    .local v13, "packageName":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/jaxb.properties"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 386
    .local v18, "resourceName":Ljava/lang/String;
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v21, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v22, "Trying to locate {0}"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lae/javax/xml/bind/ContextFinder;->loadJAXBProperties(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v15

    .line 388
    .local v15, "props":Ljava/util/Properties;
    if-nez v15, :cond_1

    .line 389
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string v21, "  not found"

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 391
    :cond_1
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string v21, "  found"

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 392
    const-string v20, "ae.javax.xml.bind.context.factory"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 394
    const-string v20, "ae.javax.xml.bind.context.factory"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 395
    .local v9, "factoryClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lae/javax/xml/bind/ContextFinder;->newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v20

    .line 455
    .end local v5    # "c":Ljava/lang/Class;
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkg":Ljava/lang/Package;
    .end local v15    # "props":Ljava/util/Properties;
    .end local v18    # "resourceName":Ljava/lang/String;
    :goto_2
    return-object v20

    .line 397
    .end local v9    # "factoryClassName":Ljava/lang/String;
    .restart local v5    # "c":Ljava/lang/Class;
    .restart local v6    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "pkg":Ljava/lang/Package;
    .restart local v15    # "props":Ljava/util/Properties;
    .restart local v18    # "resourceName":Ljava/lang/String;
    :cond_2
    new-instance v20, Lae/javax/xml/bind/JAXBException;

    const-string v21, "ContextFinder.MissingProperty"

    const-string v22, "ae.javax.xml.bind.context.factory"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v13, v1}, Lae/javax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 403
    .end local v5    # "c":Ljava/lang/Class;
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "pkg":Ljava/lang/Package;
    .end local v15    # "props":Ljava/util/Properties;
    .end local v18    # "resourceName":Ljava/lang/String;
    :cond_3
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v21, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v22, "Checking system property {0}"

    const-string v23, "ae.javax.xml.bind.context.factory"

    invoke-virtual/range {v20 .. v23}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    new-instance v20, Lae/javax/xml/bind/GetPropertyAction;

    const-string v21, "ae.javax.xml.bind.context.factory"

    invoke-direct/range {v20 .. v21}, Lae/javax/xml/bind/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 405
    .restart local v9    # "factoryClassName":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 406
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v21, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v22, "  found {0}"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lae/javax/xml/bind/ContextFinder;->newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v20

    goto :goto_2

    .line 409
    :cond_4
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string v21, "  not found"

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 410
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v21, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v22, "Checking system property {0}"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 411
    new-instance v20, Lae/javax/xml/bind/GetPropertyAction;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Lae/javax/xml/bind/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v20}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "factoryClassName":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 412
    .restart local v9    # "factoryClassName":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 413
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v21, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v22, "  found {0}"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lae/javax/xml/bind/ContextFinder;->newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v20

    goto/16 :goto_2

    .line 416
    :cond_5
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string v21, "  not found"

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 420
    const-string v20, "ae.javax.xml.bind.JAXBContext"

    invoke-static/range {v20 .. v20}, Lae/javax/xml/bind/ContextFinder;->lookupUsingOSGiServiceLoader(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 421
    .local v8, "factory":Ljava/lang/Class;
    if-eqz v8, :cond_6

    .line 422
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string v21, "OSGi environment detected"

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lae/javax/xml/bind/ContextFinder;->newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v20

    goto/16 :goto_2

    .line 427
    :cond_6
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string v21, "Checking META-INF/services"

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 430
    :try_start_0
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "META-INF/services/"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 431
    .local v17, "resource":Ljava/lang/String;
    invoke-static {}, Lae/javax/xml/bind/ContextFinder;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 433
    .restart local v6    # "classLoader":Ljava/lang/ClassLoader;
    if-nez v6, :cond_7

    .line 434
    invoke-static/range {v17 .. v17}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v19

    .line 438
    .local v19, "resourceURL":Ljava/net/URL;
    :goto_3
    if-eqz v19, :cond_8

    .line 439
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v21, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v22, "Reading {0}"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-direct/range {v20 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 441
    .local v16, "r":Ljava/io/BufferedReader;
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 442
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lae/javax/xml/bind/ContextFinder;->newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v20

    goto/16 :goto_2

    .line 436
    .end local v16    # "r":Ljava/io/BufferedReader;
    .end local v19    # "resourceURL":Ljava/net/URL;
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v19

    .restart local v19    # "resourceURL":Ljava/net/URL;
    goto :goto_3

    .line 444
    :cond_8
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v21, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v22, "Unable to find: {0}"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 454
    sget-object v20, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    const-string v21, "Trying to create the platform default provider"

    invoke-virtual/range {v20 .. v21}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 455
    const-string v20, "ae.com.sun.xml.bind.v2.ContextFactory"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lae/javax/xml/bind/ContextFinder;->newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v20

    goto/16 :goto_2

    .line 446
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    .end local v17    # "resource":Ljava/lang/String;
    .end local v19    # "resourceURL":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 448
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v20, Lae/javax/xml/bind/JAXBException;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 449
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v7

    .line 450
    .local v7, "e":Ljava/io/IOException;
    new-instance v20, Lae/javax/xml/bind/JAXBException;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v20
.end method

.method private static getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    .line 598
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 599
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 601
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lae/javax/xml/bind/ContextFinder$2;

    invoke-direct {v0, p0}, Lae/javax/xml/bind/ContextFinder$2;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 585
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 586
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 588
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lae/javax/xml/bind/ContextFinder$1;

    invoke-direct {v0}, Lae/javax/xml/bind/ContextFinder$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method private static handleClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBException;
    .locals 5
    .param p0, "originalType"    # Ljava/lang/Class;
    .param p1, "targetType"    # Ljava/lang/Class;

    .prologue
    .line 127
    invoke-static {p1}, Lae/javax/xml/bind/ContextFinder;->which(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v0

    .line 129
    .local v0, "targetTypeURL":Ljava/net/URL;
    new-instance v1, Lae/javax/xml/bind/JAXBException;

    const-string v2, "JAXBContext.IllegalCast"

    invoke-static {p0}, Lae/javax/xml/bind/ContextFinder;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "javax/xml/bind/JAXBContext.class"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lae/javax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static handleInvocationTargetException(Ljava/lang/reflect/InvocationTargetException;)V
    .locals 2
    .param p0, "x"    # Ljava/lang/reflect/InvocationTargetException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 102
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 103
    instance-of v1, v0, Lae/javax/xml/bind/JAXBException;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Lae/javax/xml/bind/JAXBException;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 106
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 108
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 109
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 110
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 112
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method private static loadJAXBProperties(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Properties;
    .locals 9
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "propFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 476
    const/4 v2, 0x0

    .line 480
    .local v2, "props":Ljava/util/Properties;
    if-nez p0, :cond_1

    .line 481
    :try_start_0
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 485
    .local v4, "url":Ljava/net/URL;
    :goto_0
    if-eqz v4, :cond_0

    .line 486
    sget-object v5, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "loading props from {0}"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v2    # "props":Ljava/util/Properties;
    .local v3, "props":Ljava/util/Properties;
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 489
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 490
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 497
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v3    # "props":Ljava/util/Properties;
    .restart local v2    # "props":Ljava/util/Properties;
    :cond_0
    return-object v2

    .line 483
    .end local v4    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .restart local v4    # "url":Ljava/net/URL;
    goto :goto_0

    .line 492
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 493
    .local v0, "ioe":Ljava/io/IOException;
    :goto_1
    sget-object v5, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 494
    new-instance v5, Lae/javax/xml/bind/JAXBException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 492
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v2    # "props":Ljava/util/Properties;
    .restart local v3    # "props":Ljava/util/Properties;
    .restart local v4    # "url":Ljava/net/URL;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "props":Ljava/util/Properties;
    .restart local v2    # "props":Ljava/util/Properties;
    goto :goto_1
.end method

.method private static lookupUsingOSGiServiceLoader(Ljava/lang/String;)Ljava/lang/Class;
    .locals 10
    .param p0, "factoryId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 461
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 462
    .local v3, "serviceClass":Ljava/lang/Class;
    const-string v5, "org.glassfish.hk2.osgiresourcelocator.ServiceLoader"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 463
    .local v4, "target":Ljava/lang/Class;
    const-string v5, "lookupProviderClasses"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 464
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v2, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 465
    .local v1, "iter":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "serviceClass":Ljava/lang/Class;
    .end local v4    # "target":Ljava/lang/Class;
    :goto_0
    return-object v5

    .restart local v1    # "iter":Ljava/util/Iterator;
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v3    # "serviceClass":Ljava/lang/Class;
    .restart local v4    # "target":Ljava/lang/Class;
    :cond_0
    move-object v5, v6

    .line 465
    goto :goto_0

    .line 466
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "serviceClass":Ljava/lang/Class;
    .end local v4    # "target":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "Unable to find from OSGi: {0}"

    invoke-virtual {v5, v7, v8, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v5, v6

    .line 468
    goto :goto_0
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;
    .locals 8
    .param p0, "contextPath"    # Ljava/lang/String;
    .param p1, "spFactory"    # Ljava/lang/Class;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "properties"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 184
    .local v0, "context":Ljava/lang/Object;
    :try_start_0
    const-string v4, "createContext"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/ClassLoader;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/util/Map;

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 186
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 191
    .end local v0    # "context":Ljava/lang/Object;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    if-nez v0, :cond_2

    .line 194
    :try_start_1
    const-string v4, "createContext"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/ClassLoader;

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 196
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "context":Ljava/lang/Object;
    move-object v4, v0

    .line 199
    .end local v0    # "context":Ljava/lang/Object;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_1
    instance-of v5, v4, Lae/javax/xml/bind/JAXBContext;

    if-nez v5, :cond_1

    .line 201
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lae/javax/xml/bind/JAXBContext;

    invoke-static {v4, v5}, Lae/javax/xml/bind/ContextFinder;->handleClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBException;

    move-result-object v4

    throw v4
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 204
    :catch_0
    move-exception v3

    .line 205
    .local v3, "x":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v3}, Lae/javax/xml/bind/ContextFinder;->handleInvocationTargetException(Ljava/lang/reflect/InvocationTargetException;)V

    .line 208
    move-object v1, v3

    .line 209
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 210
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 212
    :cond_0
    new-instance v4, Lae/javax/xml/bind/JAXBException;

    const-string v5, "ContextFinder.CouldNotInstantiate"

    invoke-static {v5, p1, v1}, Lae/javax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 203
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v3    # "x":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    :try_start_2
    check-cast v4, Lae/javax/xml/bind/JAXBContext;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v4

    .line 213
    :catch_1
    move-exception v3

    .line 216
    .local v3, "x":Ljava/lang/RuntimeException;
    throw v3

    .line 217
    .end local v3    # "x":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v3

    .line 222
    .local v3, "x":Ljava/lang/Exception;
    new-instance v4, Lae/javax/xml/bind/JAXBException;

    const-string v5, "ContextFinder.CouldNotInstantiate"

    invoke-static {v5, p1, v3}, Lae/javax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 187
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v0    # "context":Ljava/lang/Object;
    :catch_3
    move-exception v4

    goto :goto_0

    .end local v0    # "context":Ljava/lang/Object;
    :cond_2
    move-object v4, v0

    goto :goto_1
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;
    .locals 4
    .param p0, "contextPath"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "properties"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    invoke-static {p1, p2}, Lae/javax/xml/bind/ContextFinder;->safeLoadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 146
    .local v0, "spFactory":Ljava/lang/Class;
    invoke-static {p0, v0, p2, p3}, Lae/javax/xml/bind/ContextFinder;->newInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/Map;)Lae/javax/xml/bind/JAXBContext;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    return-object v2

    .line 147
    .end local v0    # "spFactory":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "x":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lae/javax/xml/bind/JAXBException;

    const-string v3, "ContextFinder.ProviderNotFound"

    invoke-static {v3, p1}, Lae/javax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 151
    .end local v1    # "x":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 154
    .local v1, "x":Ljava/lang/RuntimeException;
    throw v1

    .line 155
    .end local v1    # "x":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 160
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Lae/javax/xml/bind/JAXBException;

    const-string v3, "ContextFinder.CouldNotInstantiate"

    invoke-static {v3, p1, v1}, Lae/javax/xml/bind/Messages;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;
    .locals 8
    .param p0, "classes"    # [Ljava/lang/Class;
    .param p1, "properties"    # Ljava/util/Map;
    .param p2, "spFactory"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 257
    :try_start_0
    const-string v4, "createContext"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/util/Map;

    aput-object v7, v5, v6

    invoke-virtual {p2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 262
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 263
    .local v0, "context":Ljava/lang/Object;
    instance-of v4, v0, Lae/javax/xml/bind/JAXBContext;

    if-nez v4, :cond_0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lae/javax/xml/bind/JAXBContext;

    invoke-static {v4, v5}, Lae/javax/xml/bind/ContextFinder;->handleClassCastException(Ljava/lang/Class;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBException;

    move-result-object v4

    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 268
    .end local v0    # "context":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Lae/javax/xml/bind/JAXBException;

    invoke-direct {v4, v1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 258
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Lae/javax/xml/bind/JAXBException;

    invoke-direct {v4, v1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 267
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "context":Ljava/lang/Object;
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :try_start_2
    check-cast v0, Lae/javax/xml/bind/JAXBContext;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0    # "context":Ljava/lang/Object;
    return-object v0

    .line 270
    :catch_2
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1}, Lae/javax/xml/bind/ContextFinder;->handleInvocationTargetException(Ljava/lang/reflect/InvocationTargetException;)V

    .line 273
    move-object v3, v1

    .line 274
    .local v3, "x":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 275
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    .line 277
    :cond_1
    new-instance v4, Lae/javax/xml/bind/JAXBException;

    invoke-direct {v4, v3}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method static newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/String;)Lae/javax/xml/bind/JAXBContext;
    .locals 9
    .param p0, "classes"    # [Ljava/lang/Class;
    .param p1, "properties"    # Ljava/util/Map;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {}, Lae/javax/xml/bind/ContextFinder;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 239
    .local v0, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {p2, v0}, Lae/javax/xml/bind/ContextFinder;->safeLoadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 244
    .local v2, "spi":Ljava/lang/Class;
    sget-object v3, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    sget-object v3, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "loaded {0} from {1}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Lae/javax/xml/bind/ContextFinder;->which(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :cond_0
    invoke-static {p0, p1, v2}, Lae/javax/xml/bind/ContextFinder;->newInstance([Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v3

    return-object v3

    .line 240
    .end local v2    # "spi":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lae/javax/xml/bind/JAXBException;

    invoke-direct {v3, v1}, Lae/javax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static safeLoadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 559
    sget-object v3, Lae/javax/xml/bind/ContextFinder;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Trying to load {0}"

    invoke-virtual {v3, v4, v5, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 562
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 563
    .local v1, "s":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 564
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 565
    .local v0, "i":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 566
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    .line 570
    .end local v0    # "i":I
    :cond_0
    if-nez p1, :cond_1

    .line 571
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 578
    .end local v1    # "s":Ljava/lang/SecurityManager;
    :goto_0
    return-object v3

    .line 573
    .restart local v1    # "s":Ljava/lang/SecurityManager;
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 575
    .end local v1    # "s":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v2

    .line 577
    .local v2, "se":Ljava/lang/SecurityException;
    const-string v3, "ae.com.sun.xml.bind.v2.ContextFactory"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 578
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_0

    .line 580
    :cond_2
    throw v2
.end method

.method static which(Ljava/lang/Class;)Ljava/net/URL;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 537
    invoke-static {p0}, Lae/javax/xml/bind/ContextFinder;->getClassClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Lae/javax/xml/bind/ContextFinder;->which(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method static which(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/net/URL;
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "classnameAsResource":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 518
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 521
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method
