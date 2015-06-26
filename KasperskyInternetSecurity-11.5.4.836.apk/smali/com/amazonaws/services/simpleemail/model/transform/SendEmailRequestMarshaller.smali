.class public Lcom/amazonaws/services/simpleemail/model/transform/SendEmailRequestMarshaller;
.super Ljava/lang/Object;
.source "SendEmailRequestMarshaller.java"

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
        "Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;",
        ">;",
        "Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;",
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
.method public marshall(Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;)Lcom/amazonaws/Request;
    .locals 25
    .param p1, "sendEmailRequest"    # Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;",
            ")",
            "Lcom/amazonaws/Request",
            "<",
            "Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v23, Lcom/amazonaws/AmazonClientException;

    const-string v24, "Invalid argument passed to marshall(...)"

    invoke-direct/range {v23 .. v24}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 39
    :cond_0
    new-instance v19, Lcom/amazonaws/DefaultRequest;

    const-string v23, "AmazonSimpleEmailService"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    .local v19, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;>;"
    const-string v23, "Action"

    const-string v24, "SendEmail"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v23, "Version"

    const-string v24, "2010-12-01"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 44
    const-string v23, "Source"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getSource()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getDestination()Lcom/amazonaws/services/simpleemail/model/Destination;

    move-result-object v13

    .line 47
    .local v13, "destinationDestination":Lcom/amazonaws/services/simpleemail/model/Destination;
    if-eqz v13, :cond_7

    .line 49
    invoke-virtual {v13}, Lcom/amazonaws/services/simpleemail/model/Destination;->getToAddresses()Ljava/util/List;

    move-result-object v20

    .line 50
    .local v20, "toAddressesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v21, 0x1

    .line 52
    .local v21, "toAddressesListIndex":I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 53
    .local v22, "toAddressesListValue":Ljava/lang/String;
    if-eqz v22, :cond_2

    .line 54
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Destination.ToAddresses.member."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v22}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 60
    .end local v22    # "toAddressesListValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {v13}, Lcom/amazonaws/services/simpleemail/model/Destination;->getCcAddresses()Ljava/util/List;

    move-result-object v7

    .line 61
    .local v7, "ccAddressesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 63
    .local v8, "ccAddressesListIndex":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 64
    .local v9, "ccAddressesListValue":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 65
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Destination.CcAddresses.member."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static {v9}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 71
    .end local v9    # "ccAddressesListValue":Ljava/lang/String;
    :cond_5
    invoke-virtual {v13}, Lcom/amazonaws/services/simpleemail/model/Destination;->getBccAddresses()Ljava/util/List;

    move-result-object v3

    .line 72
    .local v3, "bccAddressesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 74
    .local v4, "bccAddressesListIndex":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 75
    .local v5, "bccAddressesListValue":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 76
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Destination.BccAddresses.member."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static {v5}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 82
    .end local v3    # "bccAddressesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "bccAddressesListIndex":I
    .end local v5    # "bccAddressesListValue":Ljava/lang/String;
    .end local v7    # "ccAddressesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "ccAddressesListIndex":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v20    # "toAddressesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "toAddressesListIndex":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getMessage()Lcom/amazonaws/services/simpleemail/model/Message;

    move-result-object v15

    .line 83
    .local v15, "messageMessage":Lcom/amazonaws/services/simpleemail/model/Message;
    if-eqz v15, :cond_d

    .line 84
    invoke-virtual {v15}, Lcom/amazonaws/services/simpleemail/model/Message;->getSubject()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v11

    .line 85
    .local v11, "contentSubject":Lcom/amazonaws/services/simpleemail/model/Content;
    if-eqz v11, :cond_9

    .line 86
    invoke-virtual {v11}, Lcom/amazonaws/services/simpleemail/model/Content;->getData()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_8

    .line 87
    const-string v23, "Message.Subject.Data"

    invoke-virtual {v11}, Lcom/amazonaws/services/simpleemail/model/Content;->getData()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_8
    invoke-virtual {v11}, Lcom/amazonaws/services/simpleemail/model/Content;->getCharset()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_9

    .line 90
    const-string v23, "Message.Subject.Charset"

    invoke-virtual {v11}, Lcom/amazonaws/services/simpleemail/model/Content;->getCharset()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_9
    invoke-virtual {v15}, Lcom/amazonaws/services/simpleemail/model/Message;->getBody()Lcom/amazonaws/services/simpleemail/model/Body;

    move-result-object v6

    .line 94
    .local v6, "bodyBody":Lcom/amazonaws/services/simpleemail/model/Body;
    if-eqz v6, :cond_d

    .line 95
    invoke-virtual {v6}, Lcom/amazonaws/services/simpleemail/model/Body;->getText()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v12

    .line 96
    .local v12, "contentText":Lcom/amazonaws/services/simpleemail/model/Content;
    if-eqz v12, :cond_b

    .line 97
    invoke-virtual {v12}, Lcom/amazonaws/services/simpleemail/model/Content;->getData()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_a

    .line 98
    const-string v23, "Message.Body.Text.Data"

    invoke-virtual {v12}, Lcom/amazonaws/services/simpleemail/model/Content;->getData()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_a
    invoke-virtual {v12}, Lcom/amazonaws/services/simpleemail/model/Content;->getCharset()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_b

    .line 101
    const-string v23, "Message.Body.Text.Charset"

    invoke-virtual {v12}, Lcom/amazonaws/services/simpleemail/model/Content;->getCharset()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_b
    invoke-virtual {v6}, Lcom/amazonaws/services/simpleemail/model/Body;->getHtml()Lcom/amazonaws/services/simpleemail/model/Content;

    move-result-object v10

    .line 105
    .local v10, "contentHtml":Lcom/amazonaws/services/simpleemail/model/Content;
    if-eqz v10, :cond_d

    .line 106
    invoke-virtual {v10}, Lcom/amazonaws/services/simpleemail/model/Content;->getData()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_c

    .line 107
    const-string v23, "Message.Body.Html.Data"

    invoke-virtual {v10}, Lcom/amazonaws/services/simpleemail/model/Content;->getData()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_c
    invoke-virtual {v10}, Lcom/amazonaws/services/simpleemail/model/Content;->getCharset()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_d

    .line 110
    const-string v23, "Message.Body.Html.Charset"

    invoke-virtual {v10}, Lcom/amazonaws/services/simpleemail/model/Content;->getCharset()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v6    # "bodyBody":Lcom/amazonaws/services/simpleemail/model/Body;
    .end local v10    # "contentHtml":Lcom/amazonaws/services/simpleemail/model/Content;
    .end local v11    # "contentSubject":Lcom/amazonaws/services/simpleemail/model/Content;
    .end local v12    # "contentText":Lcom/amazonaws/services/simpleemail/model/Content;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReplyToAddresses()Ljava/util/List;

    move-result-object v16

    .line 117
    .local v16, "replyToAddressesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x1

    .line 119
    .local v17, "replyToAddressesListIndex":I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 120
    .local v18, "replyToAddressesListValue":Ljava/lang/String;
    if-eqz v18, :cond_e

    .line 121
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ReplyToAddresses.member."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v18 .. v18}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_e
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 126
    .end local v18    # "replyToAddressesListValue":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReturnPath()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_10

    .line 127
    const-string v23, "ReturnPath"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;->getReturnPath()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/amazonaws/util/StringUtils;->fromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_10
    return-object v19
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
    check-cast p1, Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpleemail/model/transform/SendEmailRequestMarshaller;->marshall(Lcom/amazonaws/services/simpleemail/model/SendEmailRequest;)Lcom/amazonaws/Request;

    move-result-object v0

    return-object v0
.end method
