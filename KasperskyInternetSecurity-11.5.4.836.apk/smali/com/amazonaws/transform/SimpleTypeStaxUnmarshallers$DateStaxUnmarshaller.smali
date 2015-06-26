.class public Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;
.super Ljava/lang/Object;
.source "SimpleTypeStaxUnmarshallers.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateStaxUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/util/Date;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;

    .line 200
    :cond_0
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 184
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$DateStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/util/Date;
    .locals 6
    .param p1, "unmarshallerContext"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "dateString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-object v2

    .line 190
    :cond_0
    :try_start_0
    # getter for: Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers;->dateUtils:Lcom/amazonaws/util/DateUtils;
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers;->access$000()Lcom/amazonaws/util/DateUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazonaws/util/DateUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/text/ParseException;
    # getter for: Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers;->access$100()Lorg/apache/commons/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse date \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\':  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
