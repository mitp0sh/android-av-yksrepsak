.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlResponsesSaxParser.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CopyObjectResultHandler"
.end annotation


# instance fields
.field private currText:Ljava/lang/StringBuilder;

.field private errorCode:Ljava/lang/String;

.field private errorHostId:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private errorRequestId:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private expirationTime:Ljava/util/Date;

.field private expirationTimeRuleId:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private receivedErrorResponse:Z

.field private serverSideEncryption:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1018
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    .line 1019
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 1002
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->etag:Ljava/lang/String;

    .line 1003
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->lastModified:Ljava/util/Date;

    .line 1004
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->versionId:Ljava/lang/String;

    .line 1010
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorCode:Ljava/lang/String;

    .line 1011
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorMessage:Ljava/lang/String;

    .line 1012
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorRequestId:Ljava/lang/String;

    .line 1013
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorHostId:Ljava/lang/String;

    .line 1014
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->receivedErrorResponse:Z

    .line 1016
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->currText:Ljava/lang/StringBuilder;

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->currText:Ljava/lang/StringBuilder;

    .line 1021
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1137
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 1096
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 1109
    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1111
    .local v1, "elementText":Ljava/lang/String;
    const-string v2, "LastModified"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1113
    :try_start_0
    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->lastModified:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->currText:Ljava/lang/StringBuilder;

    .line 1132
    return-void

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-ISO8601 date for LastModified in copy object output: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1119
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_1
    const-string v2, "ETag"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1120
    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->etag:Ljava/lang/String;

    goto :goto_0

    .line 1121
    :cond_2
    const-string v2, "Code"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1122
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorCode:Ljava/lang/String;

    goto :goto_0

    .line 1123
    :cond_3
    const-string v2, "Message"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1124
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 1125
    :cond_4
    const-string v2, "RequestId"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1126
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorRequestId:Ljava/lang/String;

    goto :goto_0

    .line 1127
    :cond_5
    const-string v2, "HostId"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1128
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorHostId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorHostId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorHostId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->errorRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->expirationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getExpirationTimeRuleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->expirationTimeRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getServerSideEncryption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->serverSideEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->versionId:Ljava/lang/String;

    return-object v0
.end method

.method public isErrorResponse()Z
    .locals 1

    .prologue
    .line 1086
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->receivedErrorResponse:Z

    return v0
.end method

.method public setExpirationTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "expirationTime"    # Ljava/util/Date;

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->expirationTime:Ljava/util/Date;

    .line 1053
    return-void
.end method

.method public setExpirationTimeRuleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "expirationTimeRuleId"    # Ljava/lang/String;

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->expirationTimeRuleId:Ljava/lang/String;

    .line 1063
    return-void
.end method

.method public setServerSideEncryption(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverSideEncryption"    # Ljava/lang/String;

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->serverSideEncryption:Ljava/lang/String;

    .line 1043
    return-void
.end method

.method public setVersionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionId"    # Ljava/lang/String;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->versionId:Ljava/lang/String;

    .line 1033
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 1092
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 1100
    const-string v0, "CopyObjectResult"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->receivedErrorResponse:Z

    .line 1105
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    const-string v0, "Error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CopyObjectResultHandler;->receivedErrorResponse:Z

    goto :goto_0
.end method
