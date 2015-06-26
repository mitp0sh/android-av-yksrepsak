.class public Lcom/amazonaws/transform/SimpleTypeUnmarshallers$LongUnmarshaller;
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
    name = "LongUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/lang/Long;",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$LongUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/transform/SimpleTypeUnmarshallers$LongUnmarshaller;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$LongUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$LongUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$LongUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$LongUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$LongUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$LongUnmarshaller;

    .line 115
    :cond_0
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$LongUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$LongUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lorg/w3c/dom/Node;)Ljava/lang/Long;
    .locals 1
    .param p1, "in"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    const-string v0, "."

    invoke-static {v0, p1}, Lcom/amazonaws/util/XpathUtils;->asLong(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Long;

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
    .line 107
    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$LongUnmarshaller;->unmarshall(Lorg/w3c/dom/Node;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
