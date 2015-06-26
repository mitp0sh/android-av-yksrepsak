.class public Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;
.super Ljava/lang/Object;
.source "BucketConfigurationXmlFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)V
    .locals 4
    .param p1, "xml"    # Lcom/amazonaws/services/s3/internal/XmlWriter;
    .param p2, "rule"    # Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .prologue
    const/4 v3, -0x1

    .line 272
    const-string v1, "Rule"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 273
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "ID"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 276
    :cond_0
    const-string v1, "Prefix"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 277
    const-string v1, "Status"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 279
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getTransition()Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    move-result-object v0

    .line 280
    .local v0, "transition":Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
    if-eqz v0, :cond_3

    .line 281
    const-string v1, "Transition"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 282
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->getDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 283
    const-string v1, "Date"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 284
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 285
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 287
    :cond_1
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->getDays()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 288
    const-string v1, "Days"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 289
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->getDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 290
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 293
    :cond_2
    const-string v1, "StorageClass"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 294
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 295
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 296
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 299
    :cond_3
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getExpirationInDays()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 300
    const-string v1, "Expiration"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 301
    const-string v1, "Days"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getExpirationInDays()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 302
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 305
    :cond_4
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 306
    const-string v1, "Expiration"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 307
    const-string v1, "Date"

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 308
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 311
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 312
    return-void
.end method

.method private writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/CORSRule;)V
    .locals 6
    .param p1, "xml"    # Lcom/amazonaws/services/s3/internal/XmlWriter;
    .param p2, "rule"    # Lcom/amazonaws/services/s3/model/CORSRule;

    .prologue
    .line 315
    const-string v4, "CORSRule"

    invoke-virtual {p1, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 316
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 317
    const-string v4, "ID"

    invoke-virtual {p1, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 319
    :cond_0
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getAllowedOrigins()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 320
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getAllowedOrigins()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 321
    .local v3, "origin":Ljava/lang/String;
    const-string v4, "AllowedOrigin"

    invoke-virtual {p1, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    .line 324
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "origin":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getAllowedMethods()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 325
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getAllowedMethods()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;

    .line 326
    .local v2, "method":Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
    const-string v4, "AllowedMethod"

    invoke-virtual {p1, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_1

    .line 329
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "method":Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
    :cond_2
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getMaxAgeSeconds()I

    move-result v4

    if-eqz v4, :cond_3

    .line 330
    const-string v4, "MaxAgeSeconds"

    invoke-virtual {p1, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getMaxAgeSeconds()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 332
    :cond_3
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getExposedHeaders()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 333
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getExposedHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 334
    .local v0, "header":Ljava/lang/String;
    const-string v4, "ExposeHeader"

    invoke-virtual {p1, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_2

    .line 337
    .end local v0    # "header":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getAllowedHeaders()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 338
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CORSRule;->getAllowedHeaders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    .restart local v0    # "header":Ljava/lang/String;
    const-string v4, "AllowedHeader"

    invoke-virtual {p1, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_3

    .line 342
    .end local v0    # "header":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 343
    return-void
.end method

.method private writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/RoutingRule;)V
    .locals 2
    .param p1, "xml"    # Lcom/amazonaws/services/s3/internal/XmlWriter;
    .param p2, "rule"    # Lcom/amazonaws/services/s3/model/RoutingRule;

    .prologue
    .line 346
    const-string v0, "RoutingRule"

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 347
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getCondition()Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 348
    const-string v0, "Condition"

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 349
    const-string v0, "KeyPrefixEquals"

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 350
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getCondition()Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->getKeyPrefixEquals()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getCondition()Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->getKeyPrefixEquals()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 353
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 355
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getCondition()Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->getHttpErrorCodeReturnedEquals()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 356
    const-string v0, "HttpErrorCodeReturnedEquals "

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getCondition()Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->getHttpErrorCodeReturnedEquals()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 359
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 362
    :cond_2
    const-string v0, "Redirect"

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 363
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getRedirect()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 364
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getRedirect()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RedirectRule;->getprotocol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 365
    const-string v0, "Protocol"

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getRedirect()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->getprotocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 368
    :cond_3
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getRedirect()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RedirectRule;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 369
    const-string v0, "HostName"

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getRedirect()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 372
    :cond_4
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getRedirect()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyPrefixWith()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 373
    const-string v0, "ReplaceKeyPrefixWith"

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getRedirect()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyPrefixWith()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 376
    :cond_5
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getRedirect()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyWith()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 377
    const-string v0, "ReplaceKeyWith"

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/RoutingRule;->getRedirect()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyWith()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 380
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 381
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 382
    return-void
.end method

.method private writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/TagSet;)V
    .locals 4
    .param p1, "xml"    # Lcom/amazonaws/services/s3/internal/XmlWriter;
    .param p2, "tagset"    # Lcom/amazonaws/services/s3/model/TagSet;

    .prologue
    .line 421
    const-string v2, "TagSet"

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 422
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/TagSet;->getAllTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 423
    .local v1, "key":Ljava/lang/String;
    const-string v2, "Tag"

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 424
    const-string v2, "Key"

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 425
    const-string v2, "Value"

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcom/amazonaws/services/s3/model/TagSet;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 426
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    .line 428
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 429
    return-void
.end method


# virtual methods
.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;)[B
    .locals 6
    .param p1, "config"    # Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v2, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 260
    .local v2, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v3, "CORSConfiguration"

    const-string v4, "xmlns"

    const-string v5, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 262
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketCrossOriginConfiguration;->getRules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/CORSRule;

    .line 263
    .local v1, "rule":Lcom/amazonaws/services/s3/model/CORSRule;
    invoke-direct {p0, v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/CORSRule;)V

    goto :goto_0

    .line 266
    .end local v1    # "rule":Lcom/amazonaws/services/s3/model/CORSRule;
    :cond_0
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 268
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;)[B
    .locals 4
    .param p1, "config"    # Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v2, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 229
    .local v2, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v3, "LifecycleConfiguration"

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 231
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->getRules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    .line 232
    .local v1, "rule":Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    invoke-direct {p0, v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;)V

    goto :goto_0

    .line 235
    .end local v1    # "rule":Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    :cond_0
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 237
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;)[B
    .locals 5
    .param p1, "loggingConfiguration"    # Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->getLogFilePrefix()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "logFilePrefix":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 83
    const-string v0, ""

    .line 85
    :cond_0
    new-instance v1, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 86
    .local v1, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v2, "BucketLoggingStatus"

    const-string v3, "xmlns"

    const-string v4, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 87
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const-string v2, "LoggingEnabled"

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 89
    const-string v2, "TargetBucket"

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 90
    const-string v2, "TargetPrefix"

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketLoggingConfiguration;->getLogFilePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 91
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 93
    :cond_1
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 95
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v2

    return-object v2
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;)[B
    .locals 7
    .param p1, "notificationConfiguration"    # Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    .prologue
    .line 107
    new-instance v3, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 108
    .local v3, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v4, "NotificationConfiguration"

    const-string v5, "xmlns"

    const-string v6, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v3, v4, v5, v6}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 110
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->getTopicConfigurations()Ljava/util/List;

    move-result-object v2

    .line 111
    .local v2, "topicConfigurations":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;

    .line 112
    .local v1, "topicConfiguration":Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;
    const-string v4, "TopicConfiguration"

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 113
    const-string v4, "Topic"

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;->getTopic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 114
    const-string v4, "Event"

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;->getEvent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 115
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0

    .line 118
    .end local v1    # "topicConfiguration":Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;
    :cond_0
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 120
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v4

    return-object v4
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;)[B
    .locals 4
    .param p1, "config"    # Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 408
    new-instance v2, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 409
    .local v2, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v3, "Tagging"

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 411
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketTaggingConfiguration;->getAllTagSets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/TagSet;

    .line 412
    .local v1, "tagset":Lcom/amazonaws/services/s3/model/TagSet;
    invoke-direct {p0, v2, v1}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/TagSet;)V

    goto :goto_0

    .line 415
    .end local v1    # "tagset":Lcom/amazonaws/services/s3/model/TagSet;
    :cond_0
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 417
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;)[B
    .locals 5
    .param p1, "versioningConfiguration"    # Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;

    .prologue
    .line 53
    new-instance v1, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 54
    .local v1, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v2, "VersioningConfiguration"

    const-string v3, "xmlns"

    const-string v4, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 55
    const-string v2, "Status"

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 57
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->isMfaDeleteEnabled()Ljava/lang/Boolean;

    move-result-object v0

    .line 58
    .local v0, "mfaDeleteEnabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const-string v2, "MfaDelete"

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    const-string v3, "Enabled"

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 68
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 62
    :cond_1
    const-string v2, "MfaDelete"

    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    const-string v3, "Disabled"

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    goto :goto_0
.end method

.method public convertToXmlByteArray(Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;)[B
    .locals 11
    .param p1, "websiteConfiguration"    # Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    .prologue
    .line 142
    new-instance v7, Lcom/amazonaws/services/s3/internal/XmlWriter;

    invoke-direct {v7}, Lcom/amazonaws/services/s3/internal/XmlWriter;-><init>()V

    .line 143
    .local v7, "xml":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v8, "WebsiteConfiguration"

    const-string v9, "xmlns"

    const-string v10, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v7, v8, v9, v10}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 145
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getIndexDocumentSuffix()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 146
    const-string v8, "IndexDocument"

    invoke-virtual {v7, v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v2

    .line 147
    .local v2, "indexDocumentElement":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v8, "Suffix"

    invoke-virtual {v2, v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v8

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getIndexDocumentSuffix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 148
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 151
    .end local v2    # "indexDocumentElement":Lcom/amazonaws/services/s3/internal/XmlWriter;
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getErrorDocument()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 152
    const-string v8, "ErrorDocument"

    invoke-virtual {v7, v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v0

    .line 153
    .local v0, "errorDocumentElement":Lcom/amazonaws/services/s3/internal/XmlWriter;
    const-string v8, "Key"

    invoke-virtual {v0, v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v8

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getErrorDocument()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 154
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 157
    .end local v0    # "errorDocumentElement":Lcom/amazonaws/services/s3/internal/XmlWriter;
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getRedirectAllRequestsTo()Lcom/amazonaws/services/s3/model/RedirectRule;

    move-result-object v4

    .line 158
    .local v4, "redirectAllRequestsTo":Lcom/amazonaws/services/s3/model/RedirectRule;
    if-eqz v4, :cond_6

    .line 159
    const-string v8, "RedirectAllRequestsTo"

    invoke-virtual {v7, v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v3

    .line 160
    .local v3, "redirectAllRequestsElement":Lcom/amazonaws/services/s3/internal/XmlWriter;
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/RedirectRule;->getprotocol()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 161
    const-string v8, "Protocol"

    invoke-virtual {v7, v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v8

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/RedirectRule;->getprotocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 164
    :cond_2
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/RedirectRule;->getHostName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 165
    const-string v8, "HostName"

    invoke-virtual {v7, v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v8

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/RedirectRule;->getHostName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 168
    :cond_3
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyPrefixWith()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 169
    const-string v8, "ReplaceKeyPrefixWith"

    invoke-virtual {v7, v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v8

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyPrefixWith()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 172
    :cond_4
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyWith()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 173
    const-string v8, "ReplaceKeyWith"

    invoke-virtual {v7, v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v8

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/RedirectRule;->getReplaceKeyWith()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/amazonaws/services/s3/internal/XmlWriter;->value(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 175
    :cond_5
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 178
    .end local v3    # "redirectAllRequestsElement":Lcom/amazonaws/services/s3/internal/XmlWriter;
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getRoutingRules()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getRoutingRules()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 180
    const-string v8, "RoutingRules"

    invoke-virtual {v7, v8}, Lcom/amazonaws/services/s3/internal/XmlWriter;->start(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/XmlWriter;

    move-result-object v5

    .line 181
    .local v5, "routingRules":Lcom/amazonaws/services/s3/internal/XmlWriter;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->getRoutingRules()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazonaws/services/s3/model/RoutingRule;

    .line 182
    .local v6, "rule":Lcom/amazonaws/services/s3/model/RoutingRule;
    invoke-direct {p0, v5, v6}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;->writeRule(Lcom/amazonaws/services/s3/internal/XmlWriter;Lcom/amazonaws/services/s3/model/RoutingRule;)V

    goto :goto_0

    .line 185
    .end local v6    # "rule":Lcom/amazonaws/services/s3/model/RoutingRule;
    :cond_7
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 188
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "routingRules":Lcom/amazonaws/services/s3/internal/XmlWriter;
    :cond_8
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/internal/XmlWriter;->end()Lcom/amazonaws/services/s3/internal/XmlWriter;

    .line 189
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/internal/XmlWriter;->getBytes()[B

    move-result-object v8

    return-object v8
.end method
