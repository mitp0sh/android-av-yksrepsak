.class public Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;
.super Ljava/lang/Object;
.source "SimpleTypeJsonUnmarshallers.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongJsonUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/lang/Long;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;

    .line 158
    :cond_0
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Long;
    .locals 3
    .param p1, "unmarshallerContext"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "longString":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

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
    .line 149
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
