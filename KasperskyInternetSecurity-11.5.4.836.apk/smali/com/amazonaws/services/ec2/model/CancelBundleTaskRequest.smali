.class public Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CancelBundleTaskRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bundleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleId"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->bundleId:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 125
    :cond_0
    :goto_0
    return v3

    .line 118
    :cond_1
    if-eqz p1, :cond_0

    .line 120
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 121
    check-cast v0, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;

    .line 123
    .local v0, "other":Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->getBundleId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->getBundleId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->getBundleId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->getBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->getBundleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 125
    goto :goto_0

    :cond_3
    move v1, v3

    .line 123
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->bundleId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 108
    const/16 v1, 0x1f

    .line 109
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 111
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->getBundleId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 112
    return v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setBundleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleId"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->bundleId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->getBundleId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BundleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withBundleId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;
    .locals 0
    .param p1, "bundleId"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->bundleId:Ljava/lang/String;

    .line 85
    return-object p0
.end method
