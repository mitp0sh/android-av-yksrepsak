.class public Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;
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
    name = "ByteBufferJsonUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;

    .line 222
    :cond_0
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;

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
    .line 205
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "unmarshallerContext"    # Lcom/amazonaws/transform/JsonUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "base64EncodedString":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 213
    :goto_0
    return-object v4

    .line 211
    :cond_0
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 212
    .local v0, "base64EncodedBytes":[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    .line 213
    .local v2, "decodedBytes":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 214
    .end local v0    # "base64EncodedBytes":[B
    .end local v2    # "decodedBytes":[B
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    const-string v5, "Unable to unmarshall XML data into a ByteBuffer"

    invoke-direct {v4, v5, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
