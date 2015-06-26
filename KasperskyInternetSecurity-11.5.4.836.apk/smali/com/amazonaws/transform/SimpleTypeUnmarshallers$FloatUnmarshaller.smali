.class public Lcom/amazonaws/transform/SimpleTypeUnmarshallers$FloatUnmarshaller;
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
    name = "FloatUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/lang/Float;",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$FloatUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/transform/SimpleTypeUnmarshallers$FloatUnmarshaller;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$FloatUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$FloatUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$FloatUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$FloatUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$FloatUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$FloatUnmarshaller;

    .line 100
    :cond_0
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$FloatUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$FloatUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lorg/w3c/dom/Node;)Ljava/lang/Float;
    .locals 1
    .param p1, "in"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    const-string v0, "."

    invoke-static {v0, p1}, Lcom/amazonaws/util/XpathUtils;->asFloat(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Float;

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
    .line 92
    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$FloatUnmarshaller;->unmarshall(Lorg/w3c/dom/Node;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
