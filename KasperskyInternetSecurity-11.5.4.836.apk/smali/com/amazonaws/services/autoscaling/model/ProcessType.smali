.class public Lcom/amazonaws/services/autoscaling/model/ProcessType;
.super Ljava/lang/Object;
.source "ProcessType.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private processName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
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

    .line 178
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 186
    :cond_0
    :goto_0
    return v3

    .line 179
    :cond_1
    if-eqz p1, :cond_0

    .line 181
    instance-of v1, p1, Lcom/amazonaws/services/autoscaling/model/ProcessType;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 182
    check-cast v0, Lcom/amazonaws/services/autoscaling/model/ProcessType;

    .line 184
    .local v0, "other":Lcom/amazonaws/services/autoscaling/model/ProcessType;
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ProcessType;->getProcessName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ProcessType;->getProcessName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ProcessType;->getProcessName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/autoscaling/model/ProcessType;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ProcessType;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    .line 186
    goto :goto_0

    :cond_3
    move v1, v3

    .line 184
    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazonaws/services/autoscaling/model/ProcessType;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 169
    const/16 v1, 0x1f

    .line 170
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 172
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ProcessType;->getProcessName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 173
    return v0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ProcessType;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ProcessType;->processName:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ProcessType;->getProcessName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/autoscaling/model/ProcessType;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withProcessName(Ljava/lang/String;)Lcom/amazonaws/services/autoscaling/model/ProcessType;
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/amazonaws/services/autoscaling/model/ProcessType;->processName:Ljava/lang/String;

    .line 146
    return-object p0
.end method
