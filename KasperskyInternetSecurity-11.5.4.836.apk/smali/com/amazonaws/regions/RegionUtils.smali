.class public Lcom/amazonaws/regions/RegionUtils;
.super Ljava/lang/Object;
.source "RegionUtils.java"


# static fields
.field private static final CLOUDFRONT_DISTRO:Ljava/lang/String; = "http://aws-sdk-configurations.amazonwebservices.com/"

.field private static final REGIONS_FILE_OVERRIDE:Ljava/lang/String;

.field private static final log:Lorg/apache/commons/logging/Log;

.field private static regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazonaws/regions/RegionUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".fileOverride"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/regions/RegionUtils;->REGIONS_FILE_OVERRIDE:Ljava/lang/String;

    .line 51
    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fetchFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 198
    .local v1, "httpClientParams":Lorg/apache/http/params/HttpParams;
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 199
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 200
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 201
    .local v3, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 202
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 203
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 206
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getRegion(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
    .locals 3
    .param p0, "regionName"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->getRegions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/regions/Region;

    .line 85
    .local v1, "r":Lcom/amazonaws/regions/Region;
    invoke-virtual {v1}, Lcom/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    .end local v1    # "r":Lcom/amazonaws/regions/Region;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRegionByEndpoint(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
    .locals 11
    .param p0, "endpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v6, 0x0

    .line 110
    .local v6, "targetEndpointUrl":Ljava/net/URL;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    .end local v6    # "targetEndpointUrl":Ljava/net/URL;
    invoke-direct {v6, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .restart local v6    # "targetEndpointUrl":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "targetHost":Ljava/lang/String;
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->getRegions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/regions/Region;

    .line 117
    .local v3, "region":Lcom/amazonaws/regions/Region;
    invoke-virtual {v3}, Lcom/amazonaws/regions/Region;->getServiceEndpoints()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    .local v4, "serviceEndpoint":Ljava/lang/String;
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 119
    .local v5, "serviceEndpointUrl":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    return-object v3

    .line 111
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "region":Lcom/amazonaws/regions/Region;
    .end local v4    # "serviceEndpoint":Ljava/lang/String;
    .end local v5    # "serviceEndpointUrl":Ljava/net/URL;
    .end local v6    # "targetEndpointUrl":Ljava/net/URL;
    .end local v7    # "targetHost":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to parse service endpoint: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 124
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v6    # "targetEndpointUrl":Ljava/net/URL;
    .restart local v7    # "targetHost":Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No region found with any service for endpoint "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static declared-synchronized getRegions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const-class v1, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->init()V

    .line 61
    :cond_0
    sget-object v0, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getRegionsFileFromCloudfront()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const-string v0, "http://aws-sdk-configurations.amazonwebservices.com/endpoints.xml"

    .line 188
    .local v0, "endpointsUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->fetchFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getRegionsForService(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "serviceAbbreviation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/regions/Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const-class v4, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v4

    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 71
    .local v2, "regions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/regions/Region;>;"
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->getRegions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/regions/Region;

    .line 72
    .local v1, "r":Lcom/amazonaws/regions/Region;
    invoke-virtual {v1, p0}, Lcom/amazonaws/regions/Region;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 70
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/amazonaws/regions/Region;
    .end local v2    # "regions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/regions/Region;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 76
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "regions":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/regions/Region;>;"
    :cond_1
    monitor-exit v4

    return-object v2
.end method

.method public static declared-synchronized init()V
    .locals 5

    .prologue
    .line 133
    const-class v3, Lcom/amazonaws/regions/RegionUtils;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/amazonaws/regions/RegionUtils;->REGIONS_FILE_OVERRIDE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    .line 135
    :try_start_1
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->loadRegionsFromOverrideFile()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .local v1, "regionsFile":Ljava/io/InputStream;
    :goto_0
    :try_start_2
    sget-object v2, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;

    if-nez v2, :cond_0

    .line 150
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->initSDKRegions()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :cond_0
    monitor-exit v3

    return-void

    .line 136
    .end local v1    # "regionsFile":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Couldn\'t find regions override file specified"

    invoke-direct {v2, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "regionsFile":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 141
    .end local v1    # "regionsFile":Ljava/io/InputStream;
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/amazonaws/regions/RegionUtils;->getRegionsFileFromCloudfront()Ljava/io/InputStream;

    move-result-object v1

    .line 142
    .restart local v1    # "regionsFile":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/amazonaws/regions/RegionUtils;->initRegions(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v2, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Failed to initialize regional endpoints from cloudfront"

    invoke-interface {v2, v4, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private static initRegions(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "regionsFile"    # Ljava/io/InputStream;

    .prologue
    .line 166
    :try_start_0
    new-instance v1, Lcom/amazonaws/regions/RegionMetadataParser;

    invoke-direct {v1}, Lcom/amazonaws/regions/RegionMetadataParser;-><init>()V

    .line 167
    .local v1, "parser":Lcom/amazonaws/regions/RegionMetadataParser;
    invoke-virtual {v1, p0}, Lcom/amazonaws/regions/RegionMetadataParser;->parseRegionMetadata(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/amazonaws/regions/RegionUtils;->regions:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1    # "parser":Lcom/amazonaws/regions/RegionMetadataParser;
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/amazonaws/regions/RegionUtils;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Failed to parse regional endpoints"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static initSDKRegions()V
    .locals 3

    .prologue
    .line 178
    const-class v2, Lcom/amazonaws/regions/RegionUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 179
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string v2, "/etc/regions.xml"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 180
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/amazonaws/regions/RegionUtils;->initRegions(Ljava/io/InputStream;)V

    .line 181
    return-void
.end method

.method private static loadRegionsFromOverrideFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 155
    const-string v2, "com.amazonaws.sdk.disableCertChecking"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/amazonaws/regions/RegionUtils;->REGIONS_FILE_OVERRIDE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "regionsFile":Ljava/io/File;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 158
    .local v0, "override":Ljava/io/FileInputStream;
    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->initRegions(Ljava/io/InputStream;)V

    .line 159
    return-void
.end method
