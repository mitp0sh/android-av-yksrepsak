.class public Lcom/amazonaws/services/simpleemail/model/transform/SendRawEmailRequestMarshaller;
.super Ljava/lang/Object;
.source "SendRawEmailRequestMarshaller.java"

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
        "Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;",
        ">;",
        "Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;",
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
.method public marshall(Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;)Lcom/amazonaws/Request;
    .locals 8
    .param p1, "sendRawEmailRequest"    # Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    const-string v7, "Invalid argument passed to marshall(...)"

    invoke-direct {v6, v7}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 39
    :cond_0
    new-instance v5, Lcom/amazonaws/DefaultRequest;

    const-string v6, "AmazonSimpleEmailService"

    invoke-direct {v5, p1, v6}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v5, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;>;"
    const-string v6, "Action"

    const-string v7, "SendRawEmail"

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v6, "Version"

    const-string v7, "2010-12-01"

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 44
    const-string v6, "Source"

    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getDestinations()Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, "destinationsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 50
    .local v1, "destinationsListIndex":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, "destinationsListValue":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Destinations.member."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "destinationsListValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;->getRawMessage()Lcom/amazonaws/services/simpleemail/model/RawMessage;

    move-result-object v4

    .line 58
    .local v4, "rawMessageRawMessage":Lcom/amazonaws/services/simpleemail/model/RawMessage;
    if-eqz v4, :cond_4

    .line 59
    invoke-virtual {v4}, Lcom/amazonaws/services/simpleemail/model/RawMessage;->getData()Ljava/nio/ByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 60
    const-string v6, "RawMessage.Data"

    invoke-virtual {v4}, Lcom/amazonaws/services/simpleemail/model/RawMessage;->getData()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/util/StringUtils;->fromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_4
    return-object v5
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
    check-cast p1, Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpleemail/model/transform/SendRawEmailRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/SendRawEmailRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
