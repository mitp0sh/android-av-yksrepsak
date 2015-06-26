.class public Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;
.super Ljava/lang/Object;
.source "CancelBundleTaskResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bundleTask:Lcom/amazonaws/services/ec2/model/BundleTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 100
    :cond_0
    :goto_0
    return v3

    .line 93
    :cond_1
    if-eqz p1, :cond_0

    .line 95
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 96
    check-cast v0, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;

    .line 98
    .local v0, "other":Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;->getBundleTask()Lcom/amazonaws/services/ec2/model/BundleTask;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;->getBundleTask()Lcom/amazonaws/services/ec2/model/BundleTask;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;->getBundleTask()Lcom/amazonaws/services/ec2/model/BundleTask;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;->getBundleTask()Lcom/amazonaws/services/ec2/model/BundleTask;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;->getBundleTask()Lcom/amazonaws/services/ec2/model/BundleTask;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/BundleTask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 100
    goto :goto_0

    :cond_3
    move v1, v3

    .line 98
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getBundleTask()Lcom/amazonaws/services/ec2/model/BundleTask;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;->bundleTask:Lcom/amazonaws/services/ec2/model/BundleTask;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 83
    const/16 v1, 0x1f

    .line 84
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 86
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;->getBundleTask()Lcom/amazonaws/services/ec2/model/BundleTask;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 87
    return v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;->getBundleTask()Lcom/amazonaws/services/ec2/model/BundleTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/BundleTask;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setBundleTask(Lcom/amazonaws/services/ec2/model/BundleTask;)V
    .locals 0
    .param p1, "bundleTask"    # Lcom/amazonaws/services/ec2/model/BundleTask;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;->bundleTask:Lcom/amazonaws/services/ec2/model/BundleTask;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;->getBundleTask()Lcom/amazonaws/services/ec2/model/BundleTask;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BundleTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;->getBundleTask()Lcom/amazonaws/services/ec2/model/BundleTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withBundleTask(Lcom/amazonaws/services/ec2/model/BundleTask;)Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;
    .locals 0
    .param p1, "bundleTask"    # Lcom/amazonaws/services/ec2/model/BundleTask;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CancelBundleTaskResult;->bundleTask:Lcom/amazonaws/services/ec2/model/BundleTask;

    .line 60
    return-object p0
.end method
