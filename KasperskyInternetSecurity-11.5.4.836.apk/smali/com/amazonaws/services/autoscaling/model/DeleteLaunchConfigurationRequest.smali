.class public Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "DeleteLaunchConfigurationRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private launchConfigurationName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 124
    :cond_0
    :goto_0
    return v3

    .line 117
    :cond_1
    if-eqz p1, :cond_0

    .line 119
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 120
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;

    .line 122
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 124
    goto :goto_0

    :cond_3
    move v1, v3

    .line 122
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getLaunchConfigurationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;->launchConfigurationName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 107
    const/16 v1, 0x1f

    .line 108
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 110
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 111
    return v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setLaunchConfigurationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;->launchConfigurationName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LaunchConfigurationName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;->getLaunchConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withLaunchConfigurationName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;
    .locals 0
    .param p1, "launchConfigurationName"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/DeleteLaunchConfigurationRequest;->launchConfigurationName:Ljava/lang/String;

    .line 84
    return-object p0
.end method
