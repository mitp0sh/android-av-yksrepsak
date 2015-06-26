.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BucketLifecycleConfigurationHandler"
.end annotation


# instance fields
.field inTransition:Z

.field private rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

.field private transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;)V
    .locals 1

    .prologue
    .line 2297
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->this$0:Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2300
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rules:Ljava/util/List;

    .line 2302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->inTransition:Z

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2380
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

    .line 2336
    const-string v1, "LifecycleConfiguration"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2375
    :cond_0
    :goto_0
    return-void

    .line 2337
    :cond_1
    const-string v1, "Rule"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2338
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rules:Ljava/util/List;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2339
    iput-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    goto :goto_0

    .line 2340
    :cond_2
    const-string v1, "ID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2341
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 2342
    :cond_3
    const-string v1, "Prefix"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2343
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setPrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 2344
    :cond_4
    const-string v1, "Status"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2345
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 2346
    :cond_5
    const-string v1, "Transition"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2347
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setTransition(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)V

    .line 2348
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->inTransition:Z

    goto :goto_0

    .line 2349
    :cond_6
    const-string v1, "StorageClass"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2350
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/model/StorageClass;->fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setStorageClass(Lcom/amazonaws/services/s3/model/StorageClass;)V

    goto :goto_0

    .line 2351
    :cond_7
    const-string v1, "Date"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2352
    iget-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->inTransition:Z

    if-nez v1, :cond_8

    .line 2354
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setExpirationDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2355
    :catch_0
    move-exception v0

    .line 2356
    .local v0, "e":Ljava/text/ParseException;
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setExpirationDate(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 2360
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_8
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setDate(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2361
    :catch_1
    move-exception v0

    .line 2362
    .restart local v0    # "e":Ljava/text/ParseException;
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setDate(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 2365
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_9
    const-string v1, "Expiration"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2366
    const-string v1, "Days"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2367
    iget-boolean v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->inTransition:Z

    if-nez v1, :cond_a

    .line 2368
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->setExpirationInDays(I)V

    goto/16 :goto_0

    .line 2370
    :cond_a
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->setDays(I)V

    goto/16 :goto_0

    .line 2373
    :cond_b
    # getter for: Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getConfiguration()Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .locals 2

    .prologue
    .line 2305
    new-instance v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rules:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    .line 2311
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 2315
    const-string v0, "LifecycleConfiguration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2331
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->text:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2332
    return-void

    .line 2316
    :cond_1
    const-string v0, "Rule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2317
    new-instance v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->rule:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    goto :goto_0

    .line 2318
    :cond_2
    const-string v0, "ID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2319
    const-string v0, "Prefix"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2320
    const-string v0, "Status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2321
    const-string v0, "Transition"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2322
    new-instance v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->transition:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    .line 2323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->inTransition:Z

    goto :goto_0

    .line 2324
    :cond_3
    const-string v0, "StorageClass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2325
    const-string v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2326
    const-string v0, "Expiration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2327
    const-string v0, "Days"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2329
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
