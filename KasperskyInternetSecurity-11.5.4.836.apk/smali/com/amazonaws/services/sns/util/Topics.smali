.class public Lcom/amazonaws/services/sns/util/Topics;
.super Ljava/lang/Object;
.source "Topics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static subscribeQueue(Lcom/amazonaws/services/sns/AmazonSNS;Lcom/amazonaws/services/sqs/AmazonSQS;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "sns"    # Lcom/amazonaws/services/sns/AmazonSNS;
    .param p1, "sqs"    # Lcom/amazonaws/services/sqs/AmazonSQS;
    .param p2, "snsTopicArn"    # Ljava/lang/String;
    .param p3, "sqsQueueUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 112
    new-instance v4, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    invoke-direct {v4, p3}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;-><init>(Ljava/lang/String;)V

    new-array v5, v10, [Ljava/lang/String;

    sget-object v6, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->QueueArn:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    invoke-virtual {v6}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;->withAttributeNames([Ljava/lang/String;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/amazonaws/services/sqs/AmazonSQS;->getQueueAttributes(Lcom/amazonaws/services/sqs/model/GetQueueAttributesRequest;)Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/sqs/model/GetQueueAttributesResult;->getAttributes()Ljava/util/Map;

    move-result-object v1

    .line 114
    .local v1, "queueAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->QueueArn:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    invoke-virtual {v4}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .local v2, "sqsQueueArn":Ljava/lang/String;
    new-instance v4, Lcom/amazonaws/auth/policy/Policy;

    invoke-direct {v4}, Lcom/amazonaws/auth/policy/Policy;-><init>()V

    new-array v5, v10, [Lcom/amazonaws/auth/policy/Statement;

    new-instance v6, Lcom/amazonaws/auth/policy/Statement;

    sget-object v7, Lcom/amazonaws/auth/policy/Statement$Effect;->Allow:Lcom/amazonaws/auth/policy/Statement$Effect;

    invoke-direct {v6, v7}, Lcom/amazonaws/auth/policy/Statement;-><init>(Lcom/amazonaws/auth/policy/Statement$Effect;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "topic-subscription-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazonaws/auth/policy/Statement;->withId(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v6

    new-array v7, v10, [Lcom/amazonaws/auth/policy/Principal;

    sget-object v8, Lcom/amazonaws/auth/policy/Principal;->AllUsers:Lcom/amazonaws/auth/policy/Principal;

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Lcom/amazonaws/auth/policy/Statement;->withPrincipals([Lcom/amazonaws/auth/policy/Principal;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v6

    new-array v7, v10, [Lcom/amazonaws/auth/policy/Action;

    sget-object v8, Lcom/amazonaws/auth/policy/actions/SQSActions;->SendMessage:Lcom/amazonaws/auth/policy/actions/SQSActions;

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Lcom/amazonaws/auth/policy/Statement;->withActions([Lcom/amazonaws/auth/policy/Action;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v6

    new-array v7, v10, [Lcom/amazonaws/auth/policy/Resource;

    new-instance v8, Lcom/amazonaws/auth/policy/Resource;

    invoke-direct {v8, v2}, Lcom/amazonaws/auth/policy/Resource;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Lcom/amazonaws/auth/policy/Statement;->withResources([Lcom/amazonaws/auth/policy/Resource;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v6

    new-array v7, v10, [Lcom/amazonaws/auth/policy/Condition;

    invoke-static {p2}, Lcom/amazonaws/auth/policy/conditions/ConditionFactory;->newSourceArnCondition(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Lcom/amazonaws/auth/policy/Statement;->withConditions([Lcom/amazonaws/auth/policy/Condition;)Lcom/amazonaws/auth/policy/Statement;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Lcom/amazonaws/auth/policy/Policy;->withStatements([Lcom/amazonaws/auth/policy/Statement;)Lcom/amazonaws/auth/policy/Policy;

    move-result-object v0

    .line 124
    .local v0, "policy":Lcom/amazonaws/auth/policy/Policy;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Policy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Policy;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "queueAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 127
    .restart local v1    # "queueAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->Policy:Lcom/amazonaws/services/sqs/model/QueueAttributeName;

    invoke-virtual {v4}, Lcom/amazonaws/services/sqs/model/QueueAttributeName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/auth/policy/Policy;->toJson()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v4, Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;

    invoke-direct {v4, p3, v1}, Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v4}, Lcom/amazonaws/services/sqs/AmazonSQS;->setQueueAttributes(Lcom/amazonaws/services/sqs/model/SetQueueAttributesRequest;)V

    .line 130
    new-instance v4, Lcom/amazonaws/services/sns/model/SubscribeRequest;

    invoke-direct {v4}, Lcom/amazonaws/services/sns/model/SubscribeRequest;-><init>()V

    invoke-virtual {v4, v2}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->withEndpoint(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/SubscribeRequest;

    move-result-object v4

    const-string v5, "sqs"

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->withProtocol(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/SubscribeRequest;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/amazonaws/services/sns/model/SubscribeRequest;->withTopicArn(Ljava/lang/String;)Lcom/amazonaws/services/sns/model/SubscribeRequest;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/amazonaws/services/sns/AmazonSNS;->subscribe(Lcom/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazonaws/services/sns/model/SubscribeResult;

    move-result-object v3

    .line 135
    .local v3, "subscribeResult":Lcom/amazonaws/services/sns/model/SubscribeResult;
    invoke-virtual {v3}, Lcom/amazonaws/services/sns/model/SubscribeResult;->getSubscriptionArn()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
