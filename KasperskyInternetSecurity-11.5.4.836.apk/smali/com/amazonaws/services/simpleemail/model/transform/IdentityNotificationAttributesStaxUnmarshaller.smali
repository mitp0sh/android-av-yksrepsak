.class public Lcom/amazonaws/services/simpleemail/model/transform/IdentityNotificationAttributesStaxUnmarshaller;
.super Ljava/lang/Object;
.source "IdentityNotificationAttributesStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/simpleemail/model/transform/IdentityNotificationAttributesStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/simpleemail/model/transform/IdentityNotificationAttributesStaxUnmarshaller;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/amazonaws/services/simpleemail/model/transform/IdentityNotificationAttributesStaxUnmarshaller;->instance:Lcom/amazonaws/services/simpleemail/model/transform/IdentityNotificationAttributesStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/simpleemail/model/transform/IdentityNotificationAttributesStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/simpleemail/model/transform/IdentityNotificationAttributesStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/simpleemail/model/transform/IdentityNotificationAttributesStaxUnmarshaller;->instance:Lcom/amazonaws/services/simpleemail/model/transform/IdentityNotificationAttributesStaxUnmarshaller;

    .line 72
    :cond_0
    sget-object v0, Lcom/amazonaws/services/simpleemail/model/transform/IdentityNotificationAttributesStaxUnmarshaller;->instance:Lcom/amazonaws/services/simpleemail/model/transform/IdentityNotificationAttributesStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;
    .locals 5
    .param p1, "context"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;

    invoke-direct {v0}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;-><init>()V

    .line 37
    .local v0, "identityNotificationAttributes":Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v1

    .line 38
    .local v1, "originalDepth":I
    add-int/lit8 v2, v1, 0x1

    .line 41
    .local v2, "targetDepth":I
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x2

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v3

    .line 46
    .local v3, "xmlEvent":Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    :goto_1
    return-object v0

    .line 48
    :cond_1
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 49
    :cond_2
    const-string v4, "BounceTopic"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->setBounceTopic(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_3
    const-string v4, "ComplaintTopic"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 54
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->setComplaintTopic(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_4
    const-string v4, "ForwardingEnabled"

    invoke-virtual {p1, v4, v2}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$BooleanStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;->setForwardingEnabled(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 61
    :cond_5
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v4

    if-ge v4, v1, :cond_0

    goto :goto_1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpleemail/model/transform/IdentityNotificationAttributesStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/simpleemail/model/IdentityNotificationAttributes;

    move-result-object v0

    return-object v0
.end method
