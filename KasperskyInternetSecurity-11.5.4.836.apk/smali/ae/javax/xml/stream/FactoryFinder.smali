.class Lae/javax/xml/stream/FactoryFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/javax/xml/stream/FactoryFinder$1;,
        Lae/javax/xml/stream/FactoryFinder$ClassLoaderFinderConcrete;,
        Lae/javax/xml/stream/FactoryFinder$ClassLoaderFinder;
    }
.end annotation


# static fields
.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lae/javax/xml/stream/FactoryFinder;->debug:Z

    .line 19
    :try_start_0
    const-string v1, "xml.stream.debug"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lae/javax/xml/stream/FactoryFinder;->debug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    sget-boolean v0, Lae/javax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STREAM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method static find(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "factoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lae/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "fallbackClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lae/javax/xml/stream/FactoryFinder;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 92
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {p0, p1, v0}, Lae/javax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 13
    .param p0, "factoryId"    # Ljava/lang/String;
    .param p1, "fallbackClassName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "systemProp":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 119
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found system property"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lae/javax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 120
    invoke-static {v9, p2}, Lae/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 176
    .end local v9    # "systemProp":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 122
    :catch_0
    move-exception v10

    .line 127
    :cond_0
    :try_start_1
    const-string v10, "java.home"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "javah":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "lib"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "jaxp.properties"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "configFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 132
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 133
    .local v6, "props":Ljava/util/Properties;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 134
    invoke-virtual {v6, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "factoryClassName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found java.home property "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lae/javax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 136
    invoke-static {v3, p2}, Lae/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    goto :goto_0

    .line 138
    .end local v0    # "configFile":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "factoryClassName":Ljava/lang/String;
    .end local v5    # "javah":Ljava/lang/String;
    .end local v6    # "props":Ljava/util/Properties;
    :catch_1
    move-exception v1

    .line 139
    .local v1, "ex":Ljava/lang/Exception;
    sget-boolean v10, Lae/javax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "META-INF/services/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "serviceId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 146
    .local v4, "is":Ljava/io/InputStream;
    if-nez p2, :cond_2

    .line 147
    :try_start_2
    invoke-static {v8}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 152
    :goto_1
    if-eqz v4, :cond_3

    .line 153
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lae/javax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 154
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v10, v4, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 157
    .local v7, "rd":Ljava/io/BufferedReader;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 158
    .restart local v3    # "factoryClassName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 160
    if-eqz v3, :cond_3

    const-string v10, ""

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 162
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loaded from services: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lae/javax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 163
    invoke-static {v3, p2}, Lae/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 149
    .end local v3    # "factoryClassName":Ljava/lang/String;
    .end local v7    # "rd":Ljava/io/BufferedReader;
    :cond_2
    invoke-virtual {p2, v8}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    goto :goto_1

    .line 166
    :catch_2
    move-exception v1

    .line 167
    .restart local v1    # "ex":Ljava/lang/Exception;
    sget-boolean v10, Lae/javax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v10, :cond_3

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    if-nez p1, :cond_4

    .line 171
    new-instance v10, Lae/javax/xml/stream/FactoryConfigurationError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Provider for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cannot be found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lae/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 175
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loaded from fallback value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lae/javax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 176
    invoke-static {p1, p2}, Lae/javax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private static findClassLoader()Ljava/lang/ClassLoader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Lae/javax/xml/stream/FactoryFinder;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$ClassLoaderFinderConcrete"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 38
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lae/javax/xml/stream/FactoryFinder$ClassLoaderFinder;

    .line 39
    .local v2, "clf":Lae/javax/xml/stream/FactoryFinder$ClassLoaderFinder;
    invoke-virtual {v2}, Lae/javax/xml/stream/FactoryFinder$ClassLoaderFinder;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 53
    .end local v2    # "clf":Lae/javax/xml/stream/FactoryFinder$ClassLoaderFinder;
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    return-object v0

    .line 40
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v3

    .line 42
    .local v3, "le":Ljava/lang/LinkageError;
    const-class v5, Lae/javax/xml/stream/FactoryFinder;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 52
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 43
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "le":Ljava/lang/LinkageError;
    :catch_1
    move-exception v4

    .line 48
    .local v4, "x":Ljava/lang/ClassNotFoundException;
    const-class v5, Lae/javax/xml/stream/FactoryFinder;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 52
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 49
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "x":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v4

    .line 51
    .local v4, "x":Ljava/lang/Exception;
    new-instance v5, Lae/javax/xml/stream/FactoryConfigurationError;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lae/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method private static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/javax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "spiClass":Ljava/lang/Class;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 68
    .end local v0    # "spiClass":Ljava/lang/Class;
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .restart local v0    # "spiClass":Ljava/lang/Class;
    goto :goto_0

    .line 71
    .end local v0    # "spiClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "x":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lae/javax/xml/stream/FactoryConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lae/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 74
    .end local v1    # "x":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 75
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Lae/javax/xml/stream/FactoryConfigurationError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " could not be instantiated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lae/javax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
