.class public Lcom/amazonaws/transform/SimpleTypeUnmarshallers$ByteUnmarshaller;
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
    name = "ByteUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/lang/Byte;",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$ByteUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/transform/SimpleTypeUnmarshallers$ByteUnmarshaller;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$ByteUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$ByteUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$ByteUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$ByteUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$ByteUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$ByteUnmarshaller;

    .line 130
    :cond_0
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$ByteUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeUnmarshallers$ByteUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lorg/w3c/dom/Node;)Ljava/lang/Byte;
    .locals 1
    .param p1, "in"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    const-string v0, "."

    invoke-static {v0, p1}, Lcom/amazonaws/util/XpathUtils;->asByte(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/Byte;

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
    .line 122
    check-cast p1, Lorg/w3c/dom/Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/SimpleTypeUnmarshallers$ByteUnmarshaller;->unmarshall(Lorg/w3c/dom/Node;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
