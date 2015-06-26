.class public Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;
.super Ljava/lang/Object;
.source "InstanceMonitoring.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private enabled:Ljava/lang/Boolean;


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

    .line 101
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 109
    :cond_0
    :goto_0
    return v3

    .line 102
    :cond_1
    if-eqz p1, :cond_0

    .line 104
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 105
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;

    .line 107
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->isEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->isEnabled()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->isEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->isEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->isEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 109
    goto :goto_0

    :cond_3
    move v1, v3

    .line 107
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 92
    const/16 v1, 0x1f

    .line 93
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 95
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->isEnabled()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 96
    return v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->isEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->enabled:Ljava/lang/Boolean;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->isEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->isEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withEnabled(Ljava/lang/Boolean;)Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;
    .locals 0
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/InstanceMonitoring;->enabled:Ljava/lang/Boolean;

    .line 60
    return-object p0
.end method
