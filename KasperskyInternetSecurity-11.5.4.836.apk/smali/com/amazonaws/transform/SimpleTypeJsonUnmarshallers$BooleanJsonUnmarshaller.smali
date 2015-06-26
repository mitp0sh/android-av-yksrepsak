.class public Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;
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
    name = "BooleanJsonUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/lang/Boolean;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    .line 126
    :cond_0
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "unmarshallerContext"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "booleanString":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .line 117
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
