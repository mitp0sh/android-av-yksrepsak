.class public Lcom/amazonaws/transform/SimpleTypeUnmarshallers$DoubleUnmarshaller;
.super Ljava/lang/Object;
.source "SimpleTypeUnmarshallers.java"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/transform/SimpleTypeUnmarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/lang/Double;",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$DoubleUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/transform/SimpleTypeUnmarshallers$DoubleUnmarshaller;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$DoubleUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$DoubleUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$DoubleUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$DoubleUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$DoubleUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$DoubleUnmarshaller;

    .line 55
    :cond_0
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$DoubleUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$DoubleUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lorg/w3c/dom/Node;)Ljava/lang/Double;
    .locals 1
    .param p1, "in"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "."

    invoke-static {v0, p1}, Lcom/amazonaws/util/XpathUtils;->asDouble(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
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
    .line 47
    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$DoubleUnmarshaller;->unmarshall(Lorg/w3c/dom/Node;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
