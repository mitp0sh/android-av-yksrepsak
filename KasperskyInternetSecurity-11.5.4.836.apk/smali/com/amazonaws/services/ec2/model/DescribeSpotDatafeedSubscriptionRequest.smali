.class public Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DescribeSpotDatafeedSubscriptionRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
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

    .line 60
    if-ne p0, p1, :cond_0

    .line 66
    :goto_0
    return v1

    .line 61
    :cond_0
    if-nez p1, :cond_1

    move v1, v2

    goto :goto_0

    .line 63
    :cond_1
    instance-of v3, p1, Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 64
    check-cast v0, Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;

    .line 66
    .local v0, "other":Lcom/amazonaws/services/ec2/model/DescribeSpotDatafeedSubscriptionRequest;
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 52
    const/16 v1, 0x1f

    .line 53
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 55
    .local v0, "hashCode":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
