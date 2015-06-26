.class public Lcom/amazonaws/services/ec2/model/ExportTask;
.super Ljava/lang/Object;
.source "ExportTask.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private description:Ljava/lang/String;

.field private exportTaskId:Ljava/lang/String;

.field private exportToS3Task:Lcom/amazonaws/services/ec2/model/ExportToS3Task;

.field private instanceExportDetails:Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

.field private state:Ljava/lang/String;

.field private statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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

    .line 278
    if-ne p0, p1, :cond_1

    move v3, v2

    .line 296
    :cond_0
    :goto_0
    return v3

    .line 279
    :cond_1
    if-eqz p1, :cond_0

    .line 281
    instance-of v1, p1, Lcom/amazonaws/services/ec2/model/ExportTask;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 282
    check-cast v0, Lcom/amazonaws/services/ec2/model/ExportTask;

    .line 284
    .local v0, "other":Lcom/amazonaws/services/ec2/model/ExportTask;
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v4, v2

    :goto_2
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v2

    :goto_4
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    :cond_3
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v4, v2

    :goto_6
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    move v1, v2

    :goto_7
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move v4, v2

    :goto_8
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v1

    if-nez v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v4

    if-nez v4, :cond_11

    move v4, v2

    :goto_a
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/InstanceExportDetails;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v1

    if-nez v1, :cond_12

    move v1, v2

    :goto_b
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v4

    if-nez v4, :cond_13

    move v4, v2

    :goto_c
    xor-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/ec2/model/ExportToS3Task;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    move v3, v2

    .line 296
    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 284
    goto/16 :goto_1

    :cond_9
    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 286
    goto/16 :goto_3

    :cond_b
    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 288
    goto/16 :goto_5

    :cond_d
    move v4, v3

    goto/16 :goto_6

    :cond_e
    move v1, v3

    .line 290
    goto :goto_7

    :cond_f
    move v4, v3

    goto :goto_8

    :cond_10
    move v1, v3

    .line 292
    goto :goto_9

    :cond_11
    move v4, v3

    goto :goto_a

    :cond_12
    move v1, v3

    .line 294
    goto :goto_b

    :cond_13
    move v4, v3

    goto :goto_c
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExportTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->exportTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->exportToS3Task:Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    return-object v0
.end method

.method public getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->instanceExportDetails:Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 264
    const/16 v1, 0x1f

    .line 265
    .local v1, "prime":I
    const/4 v0, 0x1

    .line 267
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1f

    .line 268
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v4, v2

    .line 269
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v0, v4, v2

    .line 270
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v0, v4, v2

    .line 271
    mul-int/lit8 v4, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v0, v4, v2

    .line 272
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v4

    if-nez v4, :cond_5

    :goto_5
    add-int v0, v2, v3

    .line 273
    return v0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 270
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 271
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/ec2/model/InstanceExportDetails;->hashCode()I

    move-result v2

    goto :goto_4

    .line 272
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/ec2/model/ExportToS3Task;->hashCode()I

    move-result v3

    goto :goto_5
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->description:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setExportTaskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "exportTaskId"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->exportTaskId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setExportToS3Task(Lcom/amazonaws/services/ec2/model/ExportToS3Task;)V
    .locals 0
    .param p1, "exportToS3Task"    # Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->exportToS3Task:Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    .line 222
    return-void
.end method

.method public setInstanceExportDetails(Lcom/amazonaws/services/ec2/model/InstanceExportDetails;)V
    .locals 0
    .param p1, "instanceExportDetails"    # Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->instanceExportDetails:Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    .line 188
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->state:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->statusMessage:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExportTaskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstanceExportDetails: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getInstanceExportDetails()Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExportToS3Task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/services/ec2/model/ExportTask;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_5
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ExportTask;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->description:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public withExportTaskId(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ExportTask;
    .locals 0
    .param p1, "exportTaskId"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->exportTaskId:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public withExportToS3Task(Lcom/amazonaws/services/ec2/model/ExportToS3Task;)Lcom/amazonaws/services/ec2/model/ExportTask;
    .locals 0
    .param p1, "exportToS3Task"    # Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->exportToS3Task:Lcom/amazonaws/services/ec2/model/ExportToS3Task;

    .line 236
    return-object p0
.end method

.method public withInstanceExportDetails(Lcom/amazonaws/services/ec2/model/InstanceExportDetails;)Lcom/amazonaws/services/ec2/model/ExportTask;
    .locals 0
    .param p1, "instanceExportDetails"    # Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->instanceExportDetails:Lcom/amazonaws/services/ec2/model/InstanceExportDetails;

    .line 202
    return-object p0
.end method

.method public withState(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ExportTask;
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->state:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public withStatusMessage(Ljava/lang/String;)Lcom/amazonaws/services/ec2/model/ExportTask;
    .locals 0
    .param p1, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/amazonaws/services/ec2/model/ExportTask;->statusMessage:Ljava/lang/String;

    .line 167
    return-object p0
.end method
