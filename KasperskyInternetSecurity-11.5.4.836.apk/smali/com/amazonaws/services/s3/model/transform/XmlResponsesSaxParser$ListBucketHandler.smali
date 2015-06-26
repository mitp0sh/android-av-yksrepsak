.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListBucketHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currText:Ljava/lang/StringBuilder;

.field private currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

.field private currentOwner:Lcom/amazonaws/services/s3/model/Owner;

.field private insideCommonPrefixes:Z

.field private lastKey:Ljava/lang/String;

.field private listingTruncated:Z

.field private nextMarker:Ljava/lang/String;

.field private objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

.field private requestDelimiter:Ljava/lang/String;

.field private requestMarker:Ljava/lang/String;

.field private requestMaxKeys:I

.field private requestPrefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 502
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    .line 503
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 484
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 485
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    .line 486
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currText:Ljava/lang/StringBuilder;

    .line 487
    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    .line 489
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    .line 493
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    .line 494
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestPrefix:Ljava/lang/String;

    .line 495
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMarker:Ljava/lang/String;

    .line 496
    iput v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMaxKeys:I

    .line 497
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestDelimiter:Ljava/lang/String;

    .line 498
    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    .line 499
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->lastKey:Ljava/lang/String;

    .line 500
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currText:Ljava/lang/StringBuilder;

    .line 505
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 696
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 697
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 624
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currText:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "elementText":Ljava/lang/String;
    const-string v3, "Name"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 627
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    .line 628
    # getter for: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    # getter for: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Examining listing for bucket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 691
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currText:Ljava/lang/StringBuilder;

    .line 692
    return-void

    .line 631
    :cond_1
    iget-boolean v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    if-nez v3, :cond_2

    const-string v3, "Prefix"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 632
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestPrefix:Ljava/lang/String;

    goto :goto_0

    .line 633
    :cond_2
    const-string v3, "Marker"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 634
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMarker:Ljava/lang/String;

    goto :goto_0

    .line 635
    :cond_3
    const-string v3, "NextMarker"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 636
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    goto :goto_0

    .line 637
    :cond_4
    const-string v3, "MaxKeys"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 638
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseInt(Ljava/lang/String;)I
    invoke-static {v3, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$200(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMaxKeys:I

    goto :goto_0

    .line 639
    :cond_5
    const-string v3, "Delimiter"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 640
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestDelimiter:Ljava/lang/String;

    goto :goto_0

    .line 641
    :cond_6
    const-string v3, "IsTruncated"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 642
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "isTruncatedStr":Ljava/lang/String;
    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 644
    iput-boolean v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    goto :goto_0

    .line 645
    :cond_7
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 646
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    goto/16 :goto_0

    .line 648
    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for IsTruncated field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 653
    .end local v2    # "isTruncatedStr":Ljava/lang/String;
    :cond_9
    const-string v3, "Contents"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 654
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 655
    :cond_a
    const-string v3, "Key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 656
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-virtual {v3, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setKey(Ljava/lang/String;)V

    .line 657
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->lastKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 658
    :cond_b
    const-string v3, "LastModified"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 660
    :try_start_0
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setLastModified(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-ISO8601 date for LastModified in bucket\'s object listing output: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 666
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_c
    const-string v3, "ETag"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 667
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setETag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 668
    :cond_d
    const-string v3, "Size"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 669
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->parseLong(Ljava/lang/String;)J
    invoke-static {v4, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$300(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setSize(J)V

    goto/16 :goto_0

    .line 670
    :cond_e
    const-string v3, "StorageClass"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 671
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-virtual {v3, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setStorageClass(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 674
    :cond_f
    const-string v3, "ID"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 675
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    if-nez v3, :cond_10

    .line 676
    new-instance v3, Lcom/amazonaws/services/s3/model/Owner;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    .line 677
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setOwner(Lcom/amazonaws/services/s3/model/Owner;)V

    .line 680
    :cond_10
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v3, v1}, Lcom/amazonaws/services/s3/model/Owner;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 681
    :cond_11
    const-string v3, "DisplayName"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 682
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v3, v1}, Lcom/amazonaws/services/s3/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 685
    :cond_12
    iget-boolean v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    if-eqz v3, :cond_13

    const-string v3, "Prefix"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 686
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 687
    :cond_13
    const-string v3, "CommonPrefixes"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    iput-boolean v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    goto/16 :goto_0
.end method

.method public getCommonPrefixes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getMarkerForNextListing()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 550
    iget-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 552
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    .line 562
    :cond_0
    :goto_0
    return-object v0

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->lastKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 554
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->lastKey:Ljava/lang/String;

    goto :goto_0

    .line 556
    :cond_2
    # getter for: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    # getter for: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "Unable to find Next Marker or Last Key for truncated listing"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectListing()Lcom/amazonaws/services/s3/model/ObjectListing;
    .locals 3

    .prologue
    .line 508
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->setBucketName(Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->commonPrefixes:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->setCommonPrefixes(Ljava/util/List;)V

    .line 510
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestDelimiter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->setDelimiter(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMarker:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->setMarker(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMaxKeys:I

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->setMaxKeys(I)V

    .line 513
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->setPrefix(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->setTruncated(Z)V

    .line 522
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->nextMarker:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->setNextMarker(Ljava/lang/String;)V

    .line 537
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    return-object v1

    .line 524
    :cond_1
    iget-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    if-eqz v1, :cond_0

    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "nextMarker":Ljava/lang/String;
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 527
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 534
    :goto_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->setNextMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 529
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectListing;->getCommonPrefixes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "nextMarker":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "nextMarker":Ljava/lang/String;
    goto :goto_1

    .line 531
    :cond_3
    # getter for: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "S3 response indicates truncated results, but contains no object summaries or common prefixes."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->objectListing:Lcom/amazonaws/services/s3/model/ObjectListing;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectListing;->getObjectSummaries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMaxKeys()J
    .locals 2

    .prologue
    .line 598
    iget v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestMaxKeys:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRequestPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->requestPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isListingTruncated()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->listingTruncated:Z

    return v0
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 603
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 611
    const-string v0, "Contents"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    new-instance v0, Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    .line 613
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setBucketName(Ljava/lang/String;)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    const-string v0, "Owner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    new-instance v0, Lcom/amazonaws/services/s3/model/Owner;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    .line 616
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentObject:Lcom/amazonaws/services/s3/model/S3ObjectSummary;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/S3ObjectSummary;->setOwner(Lcom/amazonaws/services/s3/model/Owner;)V

    goto :goto_0

    .line 617
    :cond_2
    const-string v0, "CommonPrefixes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListBucketHandler;->insideCommonPrefixes:Z

    goto :goto_0
.end method
