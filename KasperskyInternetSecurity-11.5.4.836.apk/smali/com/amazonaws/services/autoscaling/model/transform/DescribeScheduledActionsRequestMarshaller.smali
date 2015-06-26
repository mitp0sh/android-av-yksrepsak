.class public Lcom/amazonaws/services/autoscaling/model/transform/DescribeScheduledActionsRequestMarshaller;
.super Ljava/lang/Object;
.source "DescribeScheduledActionsRequestMarshaller.java"

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
        "Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;",
        ">;",
        "Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;",
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
.method public marshall(Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;)Lcom/amazonaws/Request;
    .locals 7
    .param p1, "describeScheduledActionsRequest"    # Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    const-string v6, "Invalid argument passed to marshall(...)"

    invoke-direct {v5, v6}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 39
    :cond_0
    new-instance v1, Lcom/amazonaws/DefaultRequest;

    const-string v5, "AmazonAutoScaling"

    invoke-direct {v1, p1, v5}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;>;"
    const-string v5, "Action"

    const-string v6, "DescribeScheduledActions"

    invoke-interface {v1, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v5, "Version"

    const-string v6, "2011-01-01"

    invoke-interface {v1, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 44
    const-string v5, "AutoScalingGroupName"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getAutoScalingGroupName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getScheduledActionNames()Ljava/util/List;

    move-result-object v2

    .line 48
    .local v2, "scheduledActionNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 50
    .local v3, "scheduledActionNamesListIndex":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 51
    .local v4, "scheduledActionNamesListValue":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScheduledActionNames.member."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    .end local v4    # "scheduledActionNamesListValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 58
    const-string v5, "StartTime"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getStartTime()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 61
    const-string v5, "EndTime"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getEndTime()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 64
    const-string v5, "NextToken"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 67
    const-string v5, "MaxRecords"

    invoke-virtual {p1}, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
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
    check-cast p1, Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/autoscaling/model/transform/DescribeScheduledActionsRequestMarshaller;->marshall(Lcom/amazonaws/services/autoscaling/model/DescribeScheduledActionsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
