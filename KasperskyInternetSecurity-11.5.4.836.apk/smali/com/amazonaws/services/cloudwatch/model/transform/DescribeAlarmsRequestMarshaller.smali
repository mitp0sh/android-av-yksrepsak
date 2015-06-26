.class public Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsRequestMarshaller;
.super Ljava/lang/Object;
.source "DescribeAlarmsRequestMarshaller.java"

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
        "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;",
        ">;",
        "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;",
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
.method public marshall(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;)Lcom/amazonaws/Request;
    .locals 7
    .param p1, "describeAlarmsRequest"    # Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;",
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
    new-instance v4, Lcom/amazonaws/DefaultRequest;

    const-string v5, "AmazonCloudWatch"

    invoke-direct {v4, p1, v5}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v4, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;>;"
    const-string v5, "Action"

    const-string v6, "DescribeAlarms"

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v5, "Version"

    const-string v6, "2010-08-01"

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNames()Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "alarmNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 47
    .local v1, "alarmNamesListIndex":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    .local v2, "alarmNamesListValue":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AlarmNames.member."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "alarmNamesListValue":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNamePrefix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 55
    const-string v5, "AlarmNamePrefix"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getAlarmNamePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getStateValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 58
    const-string v5, "StateValue"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getStateValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getActionPrefix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 61
    const-string v5, "ActionPrefix"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getActionPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 64
    const-string v5, "MaxRecords"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getMaxRecords()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromInteger(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 67
    const-string v5, "NextToken"

    invoke-virtual {p1}, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;->getNextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_7
    return-object v4
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
    check-cast p1, Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cloudwatch/model/transform/DescribeAlarmsRequestMarshaller;->marshall(Lcom/amazonaws/services/cloudwatch/model/DescribeAlarmsRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
