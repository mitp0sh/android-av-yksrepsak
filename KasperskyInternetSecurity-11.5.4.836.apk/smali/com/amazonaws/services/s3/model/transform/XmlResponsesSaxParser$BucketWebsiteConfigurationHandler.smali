.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BucketWebsiteConfigurationHandler"
.end annotation


# instance fields
.field private condition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

.field private configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

.field inCondition:Z

.field inErrorDocumentElement:Z

.field inIndexDocumentElement:Z

.field inRedirect:Z

.field inRedirectAllRequestsTo:Z

.field inRoutingRule:Z

.field inRoutingRules:Z

.field private redirect:Lcom/amazonaws/services/s3/model/RedirectRule;

.field private redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

.field rule:Lcom/amazonaws/services/s3/model/RoutingRule;

.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1337
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 1338
    new-instance v0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    invoke-direct {v0, v2}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    .line 1339
    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->condition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    .line 1340
    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirect:Lcom/amazonaws/services/s3/model/RedirectRule;

    .line 1341
    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->rules:Ljava/util/List;

    .line 1342
    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    .line 1343
    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/RoutingRule;

    .line 1346
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inIndexDocumentElement:Z

    .line 1347
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inErrorDocumentElement:Z

    .line 1348
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRoutingRules:Z

    .line 1349
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRoutingRule:Z

    .line 1350
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inCondition:Z

    .line 1351
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirect:Z

    .line 1352
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirectAllRequestsTo:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1459
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

    const/4 v2, 0x0

    .line 1399
    const-string v0, "WebsiteConfiguration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1453
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1454
    return-void

    .line 1400
    :cond_1
    const-string v0, "IndexDocument"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1401
    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inIndexDocumentElement:Z

    goto :goto_0

    .line 1402
    :cond_2
    const-string v0, "Suffix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inIndexDocumentElement:Z

    if-eqz v0, :cond_3

    .line 1403
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->setIndexDocumentSuffix(Ljava/lang/String;)V

    goto :goto_0

    .line 1404
    :cond_3
    const-string v0, "ErrorDocument"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1405
    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inErrorDocumentElement:Z

    goto :goto_0

    .line 1406
    :cond_4
    const-string v0, "Key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inErrorDocumentElement:Z

    if-eqz v0, :cond_5

    .line 1407
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->setErrorDocument(Ljava/lang/String;)V

    goto :goto_0

    .line 1408
    :cond_5
    const-string v0, "KeyPrefixEquals"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inCondition:Z

    if-eqz v0, :cond_6

    .line 1409
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->condition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->setKeyPrefixEquals(Ljava/lang/String;)V

    goto :goto_0

    .line 1410
    :cond_6
    const-string v0, "HttpErrorCodeReturnedEquals"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inCondition:Z

    if-eqz v0, :cond_7

    .line 1411
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->condition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->setHttpErrorCodeReturnedEquals(Ljava/lang/String;)V

    goto :goto_0

    .line 1412
    :cond_7
    const-string v0, "Condition"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRoutingRule:Z

    if-eqz v0, :cond_8

    .line 1413
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/RoutingRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->condition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RoutingRule;->setCondition(Lcom/amazonaws/services/s3/model/RoutingRuleCondition;)V

    .line 1414
    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inCondition:Z

    .line 1415
    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->condition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    goto/16 :goto_0

    .line 1416
    :cond_8
    const-string v0, "Protocol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirect:Z

    if-eqz v0, :cond_9

    .line 1417
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirect:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setProtocol(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1418
    :cond_9
    const-string v0, "Protocol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirectAllRequestsTo:Z

    if-eqz v0, :cond_a

    .line 1419
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setProtocol(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1420
    :cond_a
    const-string v0, "HostName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirect:Z

    if-eqz v0, :cond_b

    .line 1421
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirect:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setHostName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1422
    :cond_b
    const-string v0, "HostName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirectAllRequestsTo:Z

    if-eqz v0, :cond_c

    .line 1423
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setHostName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1424
    :cond_c
    const-string v0, "ReplaceKeyPrefixWith"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirect:Z

    if-eqz v0, :cond_d

    .line 1425
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirect:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setReplaceKeyPrefixWith(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1426
    :cond_d
    const-string v0, "ReplaceKeyPrefixWith"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirectAllRequestsTo:Z

    if-eqz v0, :cond_e

    .line 1427
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setReplaceKeyPrefixWith(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1428
    :cond_e
    const-string v0, "ReplaceKeyWith"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirect:Z

    if-eqz v0, :cond_f

    .line 1429
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirect:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setReplaceKeyWith(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1430
    :cond_f
    const-string v0, "ReplaceKeyWith"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirectAllRequestsTo:Z

    if-eqz v0, :cond_10

    .line 1431
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setReplaceKeyWith(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1432
    :cond_10
    const-string v0, "HttpRedirectCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirect:Z

    if-eqz v0, :cond_11

    .line 1433
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirect:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setHttpRedirectCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1434
    :cond_11
    const-string v0, "HttpRedirectCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirectAllRequestsTo:Z

    if-eqz v0, :cond_12

    .line 1435
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->setHttpRedirectCode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1436
    :cond_12
    const-string v0, "Redirect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRoutingRule:Z

    if-eqz v0, :cond_13

    .line 1437
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/RoutingRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirect:Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/RoutingRule;->setRedirect(Lcom/amazonaws/services/s3/model/RedirectRule;)V

    .line 1438
    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirect:Z

    .line 1439
    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirect:Lcom/amazonaws/services/s3/model/RedirectRule;

    goto/16 :goto_0

    .line 1440
    :cond_13
    const-string v0, "RoutingRule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRoutingRules:Z

    if-eqz v0, :cond_14

    .line 1441
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->rules:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/RoutingRule;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/RoutingRule;

    .line 1443
    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRoutingRule:Z

    goto/16 :goto_0

    .line 1444
    :cond_14
    const-string v0, "RoutingRules"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1445
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->rules:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->setRoutingRules(Ljava/util/List;)V

    .line 1446
    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->rules:Ljava/util/List;

    .line 1447
    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRoutingRules:Z

    goto/16 :goto_0

    .line 1448
    :cond_15
    const-string v0, "RedirectAllRequestsTo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->setRedirectAllRequestsTo(Lcom/amazonaws/services/s3/model/RedirectRule;)V

    .line 1450
    iput-boolean v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirectAllRequestsTo:Z

    .line 1451
    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    goto/16 :goto_0
.end method

.method public getConfiguration()Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->configuration:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    return-object v0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->text:Ljava/lang/StringBuilder;

    .line 1359
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v1, 0x1

    .line 1363
    const-string v0, "WebsiteConfiguration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1395
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    const-string v0, "IndexDocument"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1365
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inIndexDocumentElement:Z

    goto :goto_0

    .line 1366
    :cond_2
    const-string v0, "Suffix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inIndexDocumentElement:Z

    if-nez v0, :cond_0

    .line 1367
    :cond_3
    const-string v0, "ErrorDocument"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1368
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inErrorDocumentElement:Z

    goto :goto_0

    .line 1369
    :cond_4
    const-string v0, "Key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inErrorDocumentElement:Z

    if-nez v0, :cond_0

    .line 1370
    :cond_5
    const-string v0, "RedirectAllRequestsTo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1371
    new-instance v0, Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/RedirectRule;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirectAllRequestsTo:Lcom/amazonaws/services/s3/model/RedirectRule;

    .line 1372
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirectAllRequestsTo:Z

    goto :goto_0

    .line 1373
    :cond_6
    const-string v0, "RoutingRules"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1374
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->rules:Ljava/util/List;

    .line 1375
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRoutingRules:Z

    goto :goto_0

    .line 1376
    :cond_7
    const-string v0, "RoutingRule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRoutingRules:Z

    if-eqz v0, :cond_8

    .line 1377
    new-instance v0, Lcom/amazonaws/services/s3/model/RoutingRule;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/RoutingRule;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/RoutingRule;

    .line 1378
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRoutingRule:Z

    goto :goto_0

    .line 1379
    :cond_8
    const-string v0, "Condition"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRoutingRule:Z

    if-eqz v0, :cond_9

    .line 1380
    new-instance v0, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->condition:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    .line 1381
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inCondition:Z

    goto :goto_0

    .line 1382
    :cond_9
    const-string v0, "KeyPrefixEquals"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inCondition:Z

    if-nez v0, :cond_0

    .line 1383
    :cond_a
    const-string v0, "HttpErrorCodeReturnedEquals"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inCondition:Z

    if-nez v0, :cond_0

    .line 1384
    :cond_b
    const-string v0, "Redirect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRoutingRule:Z

    if-eqz v0, :cond_c

    .line 1385
    new-instance v0, Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/RedirectRule;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->redirect:Lcom/amazonaws/services/s3/model/RedirectRule;

    .line 1386
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirect:Z

    goto/16 :goto_0

    .line 1387
    :cond_c
    const-string v0, "Protocol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirect:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirectAllRequestsTo:Z

    if-nez v0, :cond_0

    .line 1388
    :cond_d
    const-string v0, "HostName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirect:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirectAllRequestsTo:Z

    if-nez v0, :cond_0

    .line 1389
    :cond_e
    const-string v0, "ReplaceKeyPrefixWith"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirect:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirectAllRequestsTo:Z

    if-nez v0, :cond_0

    .line 1390
    :cond_f
    const-string v0, "ReplaceKeyWith"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirect:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirectAllRequestsTo:Z

    if-nez v0, :cond_0

    .line 1391
    :cond_10
    const-string v0, "HttpRedirectCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirect:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->inRedirectAllRequestsTo:Z

    if-nez v0, :cond_0

    .line 1393
    :cond_11
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
