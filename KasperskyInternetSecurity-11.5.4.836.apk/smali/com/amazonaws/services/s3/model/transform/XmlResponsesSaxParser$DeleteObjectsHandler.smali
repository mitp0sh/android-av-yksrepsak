.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteObjectsHandler"
.end annotation


# instance fields
.field private deleteErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;",
            ">;"
        }
    .end annotation
.end field

.field private deletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

.field private deletedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;",
            ">;"
        }
    .end annotation
.end field

.field private error:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

.field private text:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2180
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2183
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 2184
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->error:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    .line 2185
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObjects:Ljava/util/List;

    .line 2186
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deleteErrors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2258
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2218
    const-string v0, "Deleted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2219
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObjects:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2220
    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 2253
    :cond_0
    :goto_0
    return-void

    .line 2221
    :cond_1
    const-string v0, "Error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2222
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deleteErrors:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->error:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2223
    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->error:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    goto :goto_0

    .line 2224
    :cond_2
    const-string v0, "Key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2225
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    if-eqz v0, :cond_3

    .line 2226
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->setKey(Ljava/lang/String;)V

    goto :goto_0

    .line 2227
    :cond_3
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->error:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    if-eqz v0, :cond_0

    .line 2228
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->error:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->setKey(Ljava/lang/String;)V

    goto :goto_0

    .line 2230
    :cond_4
    const-string v0, "VersionId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2231
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    if-eqz v0, :cond_5

    .line 2232
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->setVersionId(Ljava/lang/String;)V

    goto :goto_0

    .line 2233
    :cond_5
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->error:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    if-eqz v0, :cond_0

    .line 2234
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->error:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->setVersionId(Ljava/lang/String;)V

    goto :goto_0

    .line 2236
    :cond_6
    const-string v0, "Code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2237
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->error:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    if-eqz v0, :cond_0

    .line 2238
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->error:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->setCode(Ljava/lang/String;)V

    goto :goto_0

    .line 2240
    :cond_7
    const-string v0, "Message"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2241
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->error:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    if-eqz v0, :cond_0

    .line 2242
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->error:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2244
    :cond_8
    const-string v0, "DeleteMarker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2245
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    if-eqz v0, :cond_0

    .line 2246
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->setDeleteMarker(Z)V

    goto/16 :goto_0

    .line 2248
    :cond_9
    const-string v0, "DeleteMarkerVersionId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2249
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    if-eqz v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->setDeleteMarkerVersionId(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getDeleteObjectResult()Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;
    .locals 3

    .prologue
    .line 2189
    new-instance v0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObjects:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deleteErrors:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 2194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->text:Ljava/lang/StringBuilder;

    .line 2195
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 2199
    const-string v0, "Deleted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2200
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->deletedObject:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 2213
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->text:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2214
    return-void

    .line 2201
    :cond_1
    const-string v0, "Error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2202
    new-instance v0, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->error:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    goto :goto_0

    .line 2203
    :cond_2
    const-string v0, "Key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2204
    const-string v0, "VersionId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2205
    const-string v0, "Code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2206
    const-string v0, "Message"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2207
    const-string v0, "DeleteMarker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2208
    const-string v0, "DeleteMarkerVersionId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2209
    const-string v0, "DeleteResult"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2211
    # getter for: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method
