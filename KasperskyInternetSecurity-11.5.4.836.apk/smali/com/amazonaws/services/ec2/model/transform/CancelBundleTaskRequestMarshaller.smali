.class public Lcom/amazonaws/services/ec2/model/transform/CancelBundleTaskRequestMarshaller;
.super Ljava/lang/Object;
.source "CancelBundleTaskRequestMarshaller.java"

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
        "Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;",
        ">;",
        "Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;",
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
.method public marshall(Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;)Lcom/amazonaws/Request;
    .locals 3
    .param p1, "cancelBundleTaskRequest"    # Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;",
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

    const-string v1, "AmazonEC2"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;>;"
    const-string v1, "Action"

    const-string v2, "CancelBundleTask"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "Version"

    const-string v2, "2013-02-01"

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->getBundleId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    const-string v1, "BundleId"

    invoke-virtual {p1}, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;->getBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
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
    check-cast p1, Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/ec2/model/transform/CancelBundleTaskRequestMarshaller;->marshall(Lcom/amazonaws/services/ec2/model/CancelBundleTaskRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
