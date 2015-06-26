.class public Lcom/amazonaws/util/AwsHostNameUtils;
.super Ljava/lang/Object;
.source "AwsHostNameUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseRegionName(Ljava/net/URI;)Ljava/lang/String;
    .locals 6
    .param p0, "endpoint"    # Ljava/net/URI;

    .prologue
    .line 21
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "host":Ljava/lang/String;
    const-string v4, ".amazonaws.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v1, "us-east-1"

    .line 38
    :cond_0
    :goto_0
    return-object v1

    .line 26
    :cond_1
    const/4 v4, 0x0

    const-string v5, ".amazonaws.com"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "serviceAndRegion":Ljava/lang/String;
    const/16 v2, 0x2e

    .line 29
    .local v2, "separator":C
    const-string v4, "s3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v2, 0x2d

    .line 31
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    const-string v1, "us-east-1"

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "region":Ljava/lang/String;
    const-string v4, "us-gov"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    const-string v1, "us-gov-west-1"

    goto :goto_0
.end method

.method public static parseServiceName(Ljava/net/URI;)Ljava/lang/String;
    .locals 7
    .param p0, "endpoint"    # Ljava/net/URI;

    .prologue
    const/4 v6, 0x0

    .line 42
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "host":Ljava/lang/String;
    const-string v4, ".amazonaws.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "us-east-1"

    .line 58
    :cond_0
    :goto_0
    return-object v3

    .line 47
    :cond_1
    const-string v4, ".amazonaws.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "serviceAndRegion":Ljava/lang/String;
    const/16 v1, 0x2e

    .line 50
    .local v1, "separator":C
    const-string v4, "s3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v1, 0x2d

    .line 55
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "service":Ljava/lang/String;
    move-object v3, v2

    .line 58
    goto :goto_0
.end method
