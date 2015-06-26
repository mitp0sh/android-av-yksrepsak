.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListPartsHandler"
.end annotation


# instance fields
.field private currentInitiator:Lcom/amazonaws/services/s3/model/Owner;

.field private currentOwner:Lcom/amazonaws/services/s3/model/Owner;

.field private currentPart:Lcom/amazonaws/services/s3/model/PartSummary;

.field private result:Lcom/amazonaws/services/s3/model/PartListing;

.field private text:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V
    .locals 0

    .prologue
    .line 1929
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method private parseInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1976
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1977
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2035
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1982
    const-string v1, "ListPartsResult"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2030
    :cond_0
    :goto_0
    return-void

    .line 1983
    :cond_1
    const-string v1, "Bucket"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1984
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->result:Lcom/amazonaws/services/s3/model/PartListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PartListing;->setBucketName(Ljava/lang/String;)V

    goto :goto_0

    .line 1985
    :cond_2
    const-string v1, "Key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1986
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->result:Lcom/amazonaws/services/s3/model/PartListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PartListing;->setKey(Ljava/lang/String;)V

    goto :goto_0

    .line 1987
    :cond_3
    const-string v1, "UploadId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1988
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->result:Lcom/amazonaws/services/s3/model/PartListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PartListing;->setUploadId(Ljava/lang/String;)V

    goto :goto_0

    .line 1989
    :cond_4
    const-string v1, "Owner"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1990
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->result:Lcom/amazonaws/services/s3/model/PartListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PartListing;->setOwner(Lcom/amazonaws/services/s3/model/Owner;)V

    .line 1991
    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    goto :goto_0

    .line 1992
    :cond_5
    const-string v1, "Initiator"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1993
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->result:Lcom/amazonaws/services/s3/model/PartListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentInitiator:Lcom/amazonaws/services/s3/model/Owner;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PartListing;->setInitiator(Lcom/amazonaws/services/s3/model/Owner;)V

    .line 1994
    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentInitiator:Lcom/amazonaws/services/s3/model/Owner;

    goto :goto_0

    .line 1995
    :cond_6
    const-string v1, "ID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    if-eqz v1, :cond_7

    .line 1996
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/Owner;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 1997
    :cond_7
    const-string v1, "DisplayName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    if-eqz v1, :cond_8

    .line 1998
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1999
    :cond_8
    const-string v1, "ID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentInitiator:Lcom/amazonaws/services/s3/model/Owner;

    if-eqz v1, :cond_9

    .line 2000
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentInitiator:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/Owner;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2001
    :cond_9
    const-string v1, "DisplayName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentInitiator:Lcom/amazonaws/services/s3/model/Owner;

    if-eqz v1, :cond_a

    .line 2002
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentInitiator:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->checkForEmptyString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$100(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/Owner;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2003
    :cond_a
    const-string v1, "StorageClass"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2004
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->result:Lcom/amazonaws/services/s3/model/PartListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PartListing;->setStorageClass(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2005
    :cond_b
    const-string v1, "PartNumberMarker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2006
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->result:Lcom/amazonaws/services/s3/model/PartListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PartListing;->setPartNumberMarker(I)V

    goto/16 :goto_0

    .line 2007
    :cond_c
    const-string v1, "NextPartNumberMarker"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2008
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->result:Lcom/amazonaws/services/s3/model/PartListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PartListing;->setNextPartNumberMarker(I)V

    goto/16 :goto_0

    .line 2009
    :cond_d
    const-string v1, "MaxParts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2010
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->result:Lcom/amazonaws/services/s3/model/PartListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->parseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PartListing;->setMaxParts(I)V

    goto/16 :goto_0

    .line 2011
    :cond_e
    const-string v1, "IsTruncated"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2012
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->result:Lcom/amazonaws/services/s3/model/PartListing;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PartListing;->setTruncated(Z)V

    goto/16 :goto_0

    .line 2013
    :cond_f
    const-string v1, "Part"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2014
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->result:Lcom/amazonaws/services/s3/model/PartListing;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/PartListing;->getParts()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentPart:Lcom/amazonaws/services/s3/model/PartSummary;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2015
    :cond_10
    const-string v1, "PartNumber"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2016
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentPart:Lcom/amazonaws/services/s3/model/PartSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PartSummary;->setPartNumber(I)V

    goto/16 :goto_0

    .line 2017
    :cond_11
    const-string v1, "LastModified"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2019
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentPart:Lcom/amazonaws/services/s3/model/PartSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PartSummary;->setLastModified(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2020
    :catch_0
    move-exception v0

    .line 2021
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-ISO8601 date for LastModified in list parts result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2025
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_12
    const-string v1, "ETag"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2026
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentPart:Lcom/amazonaws/services/s3/model/PartSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/PartSummary;->setETag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2027
    :cond_13
    const-string v1, "Size"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2028
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentPart:Lcom/amazonaws/services/s3/model/PartSummary;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/services/s3/model/PartSummary;->setSize(J)V

    goto/16 :goto_0
.end method

.method public getListPartsResult()Lcom/amazonaws/services/s3/model/PartListing;
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->result:Lcom/amazonaws/services/s3/model/PartListing;

    return-object v0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 1943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    .line 1944
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 1948
    const-string v0, "ListPartsResult"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1949
    new-instance v0, Lcom/amazonaws/services/s3/model/PartListing;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/PartListing;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->result:Lcom/amazonaws/services/s3/model/PartListing;

    .line 1971
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->text:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1972
    return-void

    .line 1950
    :cond_1
    const-string v0, "Bucket"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1951
    const-string v0, "Key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1952
    const-string v0, "UploadId"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1953
    const-string v0, "Owner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1954
    new-instance v0, Lcom/amazonaws/services/s3/model/Owner;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentOwner:Lcom/amazonaws/services/s3/model/Owner;

    goto :goto_0

    .line 1955
    :cond_2
    const-string v0, "Initiator"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1956
    new-instance v0, Lcom/amazonaws/services/s3/model/Owner;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentInitiator:Lcom/amazonaws/services/s3/model/Owner;

    goto :goto_0

    .line 1957
    :cond_3
    const-string v0, "ID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1958
    const-string v0, "DisplayName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1959
    const-string v0, "StorageClass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1960
    const-string v0, "PartNumberMarker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1961
    const-string v0, "NextPartNumberMarker"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1962
    const-string v0, "MaxParts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1963
    const-string v0, "IsTruncated"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1964
    const-string v0, "Part"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1965
    new-instance v0, Lcom/amazonaws/services/s3/model/PartSummary;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/PartSummary;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$ListPartsHandler;->currentPart:Lcom/amazonaws/services/s3/model/PartSummary;

    goto/16 :goto_0

    .line 1966
    :cond_4
    const-string v0, "PartNumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1967
    const-string v0, "LastModified"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1968
    const-string v0, "ETag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1969
    const-string v0, "Size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method
