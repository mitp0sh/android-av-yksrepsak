.class public Lcom/amazonaws/services/ec2/model/transform/ReportInstanceStatusRequestMarshaller;
.super Ljava/lang/Object;
.source "ReportInstanceStatusRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)Lcom/amazonaws/Request;
    .locals 10
    .param p1, "reportInstanceStatusRequest"    # Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v8, Lcom/amazonaws/AmazonClientException;

    const-string v9, "Invalid argument passed to marshall(...)"

    invoke-direct {v8, v9}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 39
    :cond_0
    new-instance v7, Lcom/amazonaws/DefaultRequest;

    const-string v8, "AmazonEC2"

    invoke-direct {v7, p1, v8}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v7, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;>;"
    const-string v8, "Action"

    const-string v9, "ReportInstanceStatus"

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v8, "Version"

    const-string v9, "2013-02-01"

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getInstances()Ljava/util/List;

    move-result-object v1

    .line 45
    .local v1, "instancesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 47
    .local v2, "instancesListIndex":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 48
    .local v3, "instancesListValue":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InstanceId."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v3    # "instancesListValue":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStatus()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 55
    const-string v8, "Status"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStartTime()Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 58
    const-string v8, "StartTime"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getStartTime()Ljava/util/Date;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getEndTime()Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 61
    const-string v8, "EndTime"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getEndTime()Ljava/util/Date;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getReasonCodes()Ljava/util/List;

    move-result-object v4

    .line 65
    .local v4, "reasonCodesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 67
    .local v5, "reasonCodesListIndex":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 68
    .local v6, "reasonCodesListValue":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 69
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ReasonCode."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 74
    .end local v6    # "reasonCodesListValue":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getDescription()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 75
    const-string v8, "Description"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_8
    return-object v7
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/ReportInstanceStatusRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/ReportInstanceStatusRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
