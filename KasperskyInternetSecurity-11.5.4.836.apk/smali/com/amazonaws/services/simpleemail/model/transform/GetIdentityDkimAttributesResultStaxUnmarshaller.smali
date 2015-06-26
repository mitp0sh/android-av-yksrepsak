.class public Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;
.super Ljava/lang/Object;
.source "GetIdentityDkimAttributesResultStaxUnmarshaller.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller$DkimAttributesMapEntryUnmarshaller;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;

    .line 101
    :cond_0
    sget-object v0, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;->instance:Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;
    .locals 8
    .param p1, "context"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;

    invoke-direct {v1}, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;-><init>()V

    .line 73
    .local v1, "getIdentityDkimAttributesResult":Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v2

    .line 74
    .local v2, "originalDepth":I
    add-int/lit8 v3, v2, 0x1

    .line 77
    .local v3, "targetDepth":I
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->isStartOfDocument()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x2

    .line 81
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->nextEvent()Lcom/amazonaws/javax/xml/stream/events/XMLEvent;

    move-result-object v4

    .line 82
    .local v4, "xmlEvent":Lcom/amazonaws/javax/xml/stream/events/XMLEvent;
    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndDocument()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 92
    :goto_1
    return-object v1

    .line 84
    :cond_1
    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isAttribute()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    :cond_2
    const-string v5, "DkimAttributes/entry"

    invoke-virtual {p1, v5, v3}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->testExpression(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    invoke-static {}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller$DkimAttributesMapEntryUnmarshaller;->getInstance()Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller$DkimAttributesMapEntryUnmarshaller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller$DkimAttributesMapEntryUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 87
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;>;"
    invoke-virtual {v1}, Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;->getDkimAttributes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazonaws/services/simpleemail/model/IdentityDkimAttributes;>;"
    :cond_3
    invoke-interface {v4}, Lcom/amazonaws/javax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->getCurrentDepth()I

    move-result v5

    if-ge v5, v2, :cond_0

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
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/simpleemail/model/transform/GetIdentityDkimAttributesResultStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Lcom/amazonaws/services/simpleemail/model/GetIdentityDkimAttributesResult;

    move-result-object v0

    return-object v0
.end method
