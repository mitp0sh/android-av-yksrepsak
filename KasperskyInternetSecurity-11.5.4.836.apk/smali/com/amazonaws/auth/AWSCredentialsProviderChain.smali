.class public Lcom/amazonaws/auth/AWSCredentialsProviderChain;
.super Ljava/lang/Object;
.source "AWSCredentialsProviderChain.java"

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private credentialsProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/AWSCredentialsProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public varargs constructor <init>([Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 6
    .param p1, "credentialsProviders"    # [Lcom/amazonaws/auth/AWSCredentialsProvider;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    .line 52
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 53
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No credential providers specified"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 55
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Lcom/amazonaws/auth/AWSCredentialsProvider;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 56
    .local v3, "provider":Lcom/amazonaws/auth/AWSCredentialsProvider;
    iget-object v4, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v3    # "provider":Lcom/amazonaws/auth/AWSCredentialsProvider;
    :cond_2
    return-void
.end method


# virtual methods
.method public getCredentials()Lcom/amazonaws/auth/AWSCredentials;
    .locals 7

    .prologue
    .line 61
    iget-object v4, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 63
    .local v3, "provider":Lcom/amazonaws/auth/AWSCredentialsProvider;
    :try_start_0
    invoke-interface {v3}, Lcom/amazonaws/auth/AWSCredentialsProvider;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 65
    .local v0, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentials;->getAWSAccessKeyId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentials;->getAWSSecretKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 67
    sget-object v4, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading credentials from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-object v0

    .line 70
    .end local v0    # "credentials":Lcom/amazonaws/auth/AWSCredentials;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load credentials from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "provider":Lcom/amazonaws/auth/AWSCredentialsProvider;
    :cond_1
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    const-string v5, "Unable to load AWS credentials from any provider in the chain"

    invoke-direct {v4, v5}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 81
    iget-object v2, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->credentialsProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 82
    .local v1, "provider":Lcom/amazonaws/auth/AWSCredentialsProvider;
    invoke-interface {v1}, Lcom/amazonaws/auth/AWSCredentialsProvider;->refresh()V

    goto :goto_0

    .line 84
    .end local v1    # "provider":Lcom/amazonaws/auth/AWSCredentialsProvider;
    :cond_0
    return-void
.end method
