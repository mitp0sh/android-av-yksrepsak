.class public Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DescribeMetricCollectionTypesRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p0, p1, :cond_0

    .line 61
    :goto_0
    return v1

    .line 56
    :cond_0
    if-nez p1, :cond_1

    move v1, v2

    goto :goto_0

    .line 58
    :cond_1
    instance-of v3, p1, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;

    .line 61
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/DescribeMetricCollectionTypesRequest;
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 47
    const/16 v1, 0x1f

    .line 48
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 50
    .local v0, "hashCode":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
