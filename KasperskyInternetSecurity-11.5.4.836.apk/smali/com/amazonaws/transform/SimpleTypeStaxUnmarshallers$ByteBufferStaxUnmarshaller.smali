.class public Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;
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
    name = "ByteBufferStaxUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/amazonaws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;

    .line 224
    :cond_0
    sget-object v0, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;->instance:Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;

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
    .line 207
    check-cast p1, Lcom/amazonaws/transform/StaxUnmarshallerContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/amazonaws/transform/SimpleTypeStaxUnmarshallers$ByteBufferStaxUnmarshaller;->unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public unmarshall(Lcom/amazonaws/transform/StaxUnmarshallerContext;)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "unmarshallerContext"    # Lcom/amazonaws/transform/StaxUnmarshallerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p1}, Lcom/amazonaws/transform/StaxUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "base64EncodedString":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v4, 0x0

    .line 215
    :goto_0
    return-object v4

    .line 213
    :cond_0
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 214
    .local v0, "base64EncodedBytes":[B
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v2

    .line 215
    .local v2, "decodedBytes":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 216
    .end local v0    # "base64EncodedBytes":[B
    .end local v2    # "decodedBytes":[B
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    const-string v5, "Unable to unmarshall XML data into a ByteBuffer"

    invoke-direct {v4, v5, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
