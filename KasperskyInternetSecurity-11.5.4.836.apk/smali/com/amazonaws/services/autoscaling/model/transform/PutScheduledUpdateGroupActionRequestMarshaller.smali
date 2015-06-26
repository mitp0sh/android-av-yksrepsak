.class public Lcom/amazonaws/services/autoscaling/model/transform/PutScheduledUpdateGroupActionRequestMarshaller;
.super Ljava/lang/Object;
.source "PutScheduledUpdateGroupActionRequestMarshaller.java"

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
        "Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;",
        ">;",
        "Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;",
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
.method public marshall(Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;)Lcom/amazonaws/Request;
    .locals 3
    .param p1, "putScheduledUpdateGroupActionRequest"    # Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Invalid argument passed to marshall(...)"

    invoke-direct {v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AmazonAutoScaling"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;>;"
    const-string v1, "Action"

    const-string v2, "PutScheduledUpdateGroupAction"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "Version"

    const-string v2, "2011-01-01"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    const-string v1, "AutoScalingGroupName"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getScheduledActionName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 47
    const-string v1, "ScheduledActionName"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getScheduledActionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 50
    const-string v1, "Time"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getStartTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 53
    const-string v1, "StartTime"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getStartTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getEndTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 56
    const-string v1, "EndTime"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getRecurrence()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 59
    const-string v1, "Recurrence"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getRecurrence()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 62
    const-string v1, "MinSize"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getMinSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 65
    const-string v1, "MaxSize"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getMaxSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 68
    const-string v1, "DesiredCapacity"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;->getDesiredCapacity()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_9
    return-object v0
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
    check-cast p1, Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/PutScheduledUpdateGroupActionRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/PutScheduledUpdateGroupActionRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
