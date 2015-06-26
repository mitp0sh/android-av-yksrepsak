.class public Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateInstanceExportTaskRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private exportToS3Task:Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

.field private instanceId:Ljava/lang/String;

.field private targetEnvironment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
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

    .line 254
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 268
    :cond_0
    :goto_0
    return v3

    .line 255
    :cond_1
    if-eqz p1, :cond_0

    .line 257
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 258
    check-cast v0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;

    .line 260
    .local v0, "other":Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 261
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getTargetEnvironment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getTargetEnvironment()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getTargetEnvironment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getTargetEnvironment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getTargetEnvironment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move v3, v2

    .line 268
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 260
    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 262
    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v1, v3

    .line 264
    goto :goto_5

    :cond_b
    move v4, v3

    goto :goto_6

    :cond_c
    move v1, v3

    .line 266
    goto :goto_7

    :cond_d
    move v4, v3

    goto :goto_8
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->exportToS3Task:Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetEnvironment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->targetEnvironment:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 242
    const/16 v1, 0x1f

    .line 243
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 245
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 246
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 247
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getTargetEnvironment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 248
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_3
    add-int v0, v2, v3

    .line 249
    return v0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getTargetEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->description:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setExportToS3Task(Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;)V
    .locals 0
    .param p1, "exportToS3Task"    # Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->exportToS3Task:Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    .line 202
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->instanceId:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setTargetEnvironment(Lcom/amazonaws/services/ec2/model/ExportEnvironment;)V
    .locals 1
    .param p1, "targetEnvironment"    # Lcom/amazonaws/services/ec2/model/ExportEnvironment;

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportEnvironment;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->targetEnvironment:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setTargetEnvironment(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetEnvironment"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->targetEnvironment:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getTargetEnvironment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TargetEnvironment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getTargetEnvironment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExportToS3Task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->description:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public withExportToS3Task(Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;)Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;
    .locals 0
    .param p1, "exportToS3Task"    # Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->exportToS3Task:Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    .line 216
    return-object p0
.end method

.method public withInstanceId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->instanceId:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public withTargetEnvironment(Lcom/amazonaws/services/ec2/model/ExportEnvironment;)Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;
    .locals 1
    .param p1, "targetEnvironment"    # Lcom/amazonaws/services/ec2/model/ExportEnvironment;

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ExportEnvironment;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->targetEnvironment:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public withTargetEnvironment(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;
    .locals 0
    .param p1, "targetEnvironment"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->targetEnvironment:Ljava/lang/String;

    .line 148
    return-object p0
.end method
