.class public Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskRequestMarshaller;
.super Ljava/lang/Object;
.source "CreateInstanceExportTaskRequestMarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Marshaller",
        "<",
        "Lcom/amazonaws/Request",
        "<",
        "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;)Lcom/amazonaws/Request;
    .locals 4
    .param p1, "createInstanceExportTaskRequest"    # Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    const-string v3, "Invalid argument passed to marshall(...)"

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_0
    new-instance v1, Lcom/amazonaws/DefaultRequest;

    const-string v2, "AmazonEC2"

    invoke-direct {v1, p1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;>;"
    const-string v2, "Action"

    const-string v3, "CreateInstanceExportTask"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "Version"

    const-string v3, "2013-02-01"

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 44
    const-string v2, "Description"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 47
    const-string v2, "InstanceId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getTargetEnvironment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 50
    const-string v2, "TargetEnvironment"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getTargetEnvironment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;->getExportToS3Task()Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;

    move-result-object v0

    .line 53
    .local v0, "exportToS3TaskSpecificationExportToS3Task":Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;
    if-eqz v0, :cond_7

    .line 54
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getDiskImageFormat()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 55
    const-string v2, "ExportToS3.DiskImageFormat"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getDiskImageFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_4
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getContainerFormat()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 58
    const-string v2, "ExportToS3.ContainerFormat"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getContainerFormat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_5
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Bucket()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 61
    const-string v2, "ExportToS3.S3Bucket"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Bucket()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_6
    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Prefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 64
    const-string v2, "ExportToS3.S3Prefix"

    invoke-virtual {v0}, Lcom/amazonaws/services/ec2/model/ExportToS3TaskSpecification;->getS3Prefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_7
    return-object v1
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/CreateInstanceExportTaskRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CreateInstanceExportTaskRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
