.class public Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;
.super Ljava/lang/Object;
.source "CreateAppCookieStickinessPolicyResultStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyResult;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;

    .line 60
    :cond_0
    sget-object v0, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyResult;
    .locals 5
    .param p1, "context"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyResult;

    invoke-direct {v0}, Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyResult;-><init>()V

    .line 37
    .local v0, "createAppCookieStickinessPolicyResult":Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyResult;
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
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v3

    .line 46
    .local v3, "xmlEvent":Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    :goto_0
    return-object v0

    .line 48
    :cond_1
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v4

    if-nez v4, :cond_0

    .line 49
    invoke-interface {v3}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v4

    if-ge v4, v1, :cond_0

    goto :goto_0
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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/elasticloadbalancing/model/transform/CreateAppCookieStickinessPolicyResultStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/elasticloadbalancing/model/CreateAppCookieStickinessPolicyResult;

    move-result-object v0

    return-object v0
.end method
