.class public Lcom/amazonaws/services/s3/model/RoutingRuleCondition;
.super Ljava/lang/Object;
.source "RoutingRuleCondition.java"


# instance fields
.field httpErrorCodeReturnedEquals:Ljava/lang/String;

.field keyPrefixEquals:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpErrorCodeReturnedEquals()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->httpErrorCodeReturnedEquals:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyPrefixEquals()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->keyPrefixEquals:Ljava/lang/String;

    return-object v0
.end method

.method public setHttpErrorCodeReturnedEquals(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpErrorCodeReturnedEquals"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->httpErrorCodeReturnedEquals:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setKeyPrefixEquals(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyPrefixEquals"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->keyPrefixEquals:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public withHttpErrorCodeReturnedEquals(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RoutingRuleCondition;
    .locals 0
    .param p1, "httpErrorCodeReturnedEquals"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->setHttpErrorCodeReturnedEquals(Ljava/lang/String;)V

    .line 86
    return-object p0
.end method

.method public withKeyPrefixEquals(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RoutingRuleCondition;
    .locals 0
    .param p1, "keyPrefixEquals"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->setKeyPrefixEquals(Ljava/lang/String;)V

    .line 61
    return-object p0
.end method
