.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListVersionsHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

.field private insideCommonPrefixes:Z

.field private owner:Lcom/amazonaws/services/s3/model/Owner;

.field private text:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

.field private versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

.field private versionSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/S3VersionSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1197
    const-class v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V
    .locals 1

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 1203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->insideCommonPrefixes:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1334
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1254
    const-string v1, "ListVersionsResult"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1255
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionSummaries:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/VersionListing;->setVersionSummaries(Ljava/util/List;)V

    .line 1328
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1329
    return-void

    .line 1256
    :cond_0
    const-string v1, "Name"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1257
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/VersionListing;->setBucketName(Ljava/lang/String;)V

    goto :goto_0

    .line 1258
    :cond_1
    iget-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->insideCommonPrefixes:Z

    if-nez v1, :cond_2

    const-string v1, "Prefix"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1259
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/VersionListing;->setPrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 1260
    :cond_2
    iget-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->insideCommonPrefixes:Z

    if-eqz v1, :cond_3

    const-string v1, "Prefix"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1261
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/VersionListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1262
    :cond_3
    const-string v1, "CommonPrefixes"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1263
    iput-boolean v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->insideCommonPrefixes:Z

    goto :goto_0

    .line 1264
    :cond_4
    const-string v1, "KeyMarker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1265
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/VersionListing;->setKeyMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 1266
    :cond_5
    const-string v1, "VersionIdMarker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1267
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/VersionListing;->setVersionIdMarker(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1268
    :cond_6
    const-string v1, "MaxKeys"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1269
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/VersionListing;->setMaxKeys(I)V

    goto/16 :goto_0

    .line 1270
    :cond_7
    const-string v1, "Delimiter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1271
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/VersionListing;->setDelimiter(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1272
    :cond_8
    const-string v1, "NextKeyMarker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1273
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/VersionListing;->setNextKeyMarker(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1274
    :cond_9
    const-string v1, "NextVersionIdMarker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1275
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/VersionListing;->setNextVersionIdMarker(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1276
    :cond_a
    const-string v1, "IsTruncated"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1277
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    const-string v2, "true"

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/VersionListing;->setTruncated(Z)V

    goto/16 :goto_0

    .line 1278
    :cond_b
    const-string v1, "Version"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1279
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    if-nez v1, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1280
    :cond_c
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionSummaries:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1281
    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    goto/16 :goto_0

    .line 1282
    :cond_d
    const-string v1, "DeleteMarker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1283
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1284
    :cond_e
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionSummaries:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    goto/16 :goto_0

    .line 1286
    :cond_f
    const-string v1, "Key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1287
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1288
    :cond_10
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1289
    :cond_11
    const-string v1, "VersionId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1290
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    if-nez v1, :cond_12

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1291
    :cond_12
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setVersionId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1292
    :cond_13
    const-string v1, "IsLatest"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1293
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    if-nez v1, :cond_14

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1294
    :cond_14
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    const-string v2, "true"

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setIsLatest(Z)V

    goto/16 :goto_0

    .line 1295
    :cond_15
    const-string v1, "LastModified"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1296
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    if-nez v1, :cond_16

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1298
    :cond_16
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setLastModified(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1299
    :catch_0
    move-exception v0

    .line 1300
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-ISO8601 date for LastModified in copy object output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1304
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_17
    const-string v1, "ETag"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1305
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    if-nez v1, :cond_18

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1306
    :cond_18
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->isDeleteMarker()Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1307
    :cond_19
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setETag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1308
    :cond_1a
    const-string v1, "Size"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1309
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    if-nez v1, :cond_1b

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1310
    :cond_1b
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->isDeleteMarker()Z

    move-result v1

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1311
    :cond_1c
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setSize(J)V

    goto/16 :goto_0

    .line 1312
    :cond_1d
    const-string v1, "Owner"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1313
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setOwner(Lcom/amazonaws/services/s3/model/Owner;)V

    .line 1314
    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/amazonaws/services/s3/model/Owner;

    goto/16 :goto_0

    .line 1315
    :cond_1e
    const-string v1, "StorageClass"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1316
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    if-nez v1, :cond_1f

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1317
    :cond_1f
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->isDeleteMarker()Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1318
    :cond_20
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setStorageClass(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1319
    :cond_21
    const-string v1, "ID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1320
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/amazonaws/services/s3/model/Owner;

    if-nez v1, :cond_22

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1321
    :cond_22
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/Owner;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1322
    :cond_23
    const-string v1, "DisplayName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1323
    sget-boolean v1, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/amazonaws/services/s3/model/Owner;

    if-nez v1, :cond_24

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1324
    :cond_24
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1326
    :cond_25
    # getter for: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unexpected tag <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getListing()Lcom/amazonaws/services/s3/model/VersionListing;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    return-object v0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 1209
    new-instance v0, Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/VersionListing;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    .line 1210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionSummaries:Ljava/util/List;

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    .line 1212
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v2, 0x1

    .line 1216
    const-string v0, "ListVersionsResult"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1249
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->text:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1250
    return-void

    .line 1217
    :cond_1
    const-string v0, "CommonPrefixes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1218
    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->insideCommonPrefixes:Z

    goto :goto_0

    .line 1219
    :cond_2
    const-string v0, "Name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    const-string v0, "Prefix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    const-string v0, "Delimiter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    const-string v0, "KeyMarker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    const-string v0, "VersionIdMarker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    const-string v0, "MaxKeys"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    const-string v0, "NextKeyMarker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1226
    const-string v0, "NextVersionIdMarker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1227
    const-string v0, "IsTruncated"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1228
    const-string v0, "Version"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1229
    new-instance v0, Lcom/amazonaws/services/s3/model/S3VersionSummary;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3VersionSummary;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 1230
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/VersionListing;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setBucketName(Ljava/lang/String;)V

    goto :goto_0

    .line 1231
    :cond_3
    const-string v0, "DeleteMarker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1232
    new-instance v0, Lcom/amazonaws/services/s3/model/S3VersionSummary;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3VersionSummary;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    .line 1233
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->versionListing:Lcom/amazonaws/services/s3/model/VersionListing;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/VersionListing;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setBucketName(Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->currentVersionSummary:Lcom/amazonaws/services/s3/model/S3VersionSummary;

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/model/S3VersionSummary;->setIsDeleteMarker(Z)V

    goto/16 :goto_0

    .line 1235
    :cond_4
    const-string v0, "Key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1236
    const-string v0, "VersionId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1237
    const-string v0, "IsLatest"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1238
    const-string v0, "LastModified"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1239
    const-string v0, "ETag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1240
    const-string v0, "Size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    const-string v0, "Owner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1242
    new-instance v0, Lcom/amazonaws/services/s3/model/Owner;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListVersionsHandler;->owner:Lcom/amazonaws/services/s3/model/Owner;

    goto/16 :goto_0

    .line 1243
    :cond_5
    const-string v0, "StorageClass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1244
    const-string v0, "ID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    const-string v0, "DisplayName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    # getter for: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unexpected tag <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
